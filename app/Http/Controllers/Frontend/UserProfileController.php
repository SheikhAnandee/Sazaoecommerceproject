<?php

namespace App\Http\Controllers\Frontend;
use Illuminate\Support\Facades\Auth; // Make sure this is imported

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;

class UserProfileController extends Controller
{
    public function index() {
        return view('frontend.dashboard.profile');

    }
    public function updateProfile(Request $request) {
        
      //dd($request->all());
      $validatedData = $request->validate([
        'name' => ['required', 'max:100'],
        'email' => ['required', 'email', 'unique:users,email,' . Auth::user()->id],
        'image' => ['image', 'max:2048']

    ]);

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

    $user->name = $request->input('name');
    $user->email = $request->input('email');
    $user->save();

    // Redirect back with a success message
    toastr()->success('Profile Updated Successfully!');
    return redirect()->back();

    }

    public function updatePassword(Request $request) {
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
}
