<?php

namespace App\Http\Controllers\Backend;
use Illuminate\Support\Facades\Auth; // Make sure this is imported
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Traits\ImageUploadTrait;
use File;


class ProfileController extends Controller
{
    public function index() {
        return view('admin.profile.index');
    }
    public function updateProfile(Request $request) {
        // Validate the request data
        $validatedData = $request->validate([
            'name' => ['required', 'max:100'],
            'email' => ['required', 'email', 'unique:users,email,' . Auth::user()->id],
            'image' => ['image', 'max:2048']

        ]);
    
        // Debugging: Dump the validated data
        //dd($validatedData);
    
        // Retrieve the authenticated user
        $user = Auth::user();

        if($request->hasFile('image')){
            if(File::exists(public_path($user->image))){
                File::delete(public_path($user->image));
            }
            $image = $request->image;
            $imageName = rand().'_'.$image->getClientOriginalName();
            $image->move(public_path('uploads'), $imageName);
           
            $path = "/uploads/".$imageName;
            $user->image = $path;

        }
    
        // Update the user's profile information
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->save();
    
        // Redirect back with a success message
        toastr()->success('Profile Updated Successfully!');

        return redirect()->back();

    }
    //Update password
    public function updatePassword(Request $request) {
        //dd($request->all());
       // $validatedData = $request->validate([
        $request->validate([
            'current_password' => ['required', 'current_password'],
            'password' => ['required', 'confirmed', 'min:8'],
        
        ]);
        $request->user()->update([
           'password' => bcrypt($request->password) 
        ]);
        toastr()->success('Password Updated Successfully!');
        return redirect()->back();
       
    }
    // public function updateProfile(Request $request) {
    //     $request->validate([
    //         'name' =>['required', 'max:100'],
    //         'name' => ['required', 'email', 'unique:users,email,'. Auth::user()->id]
    //     ]);
    //     $user = Auth::user();
    //     $user->name= $request->name;
    //     $user->email= $request->email;
    //     $user->save();

    //     return redirect()->back();

    // }

}
