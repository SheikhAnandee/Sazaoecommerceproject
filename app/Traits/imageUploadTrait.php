<?php

namespace App\Traits;
use Illuminate\Http\Request;
use File;

trait ImageUploadTrait {
    public function uploadImage(Request $request, $inputName, $path,)
    {
        if($request->hasFile($inputName)){
            // if(File::exists(public_path($user->image))){
            //     File::delete(public_path($user->image));
            // }
            $image = $request->{$inputName};
            $ext = $image->getClientOriginalExtension();
            $imageName = 'media_'.uniqid().'_'.$ext;

            //$imageName = rand().'_'.$image->getClientOriginalName();
            $image->move(public_path($path), $imageName);
           
            return $path.'/'.$imageName;

            //$path = "/uploads/".$imageName;
            //$user->image = $path;

        }
    }
    public function uploadMultiImage(Request $request, $inputName, $path,)
    {
        $imagePaths = [];
        if($request->hasFile($inputName)){
            
            $images = $request->{$inputName};
            foreach($images as $image){
                $ext = $image->getClientOriginalExtension();
                $imageName = 'media_'.uniqid().'_'.$ext;
    
                $image->move(public_path($path), $imageName);
                $imagePaths[]= $path.'/'.$imageName;
            }
           return $imagePaths;
        }
    }

    public function updateImage(Request $request, $inputName, $path, $oldpath=null)
    {
        if($request->hasFile($inputName)){
            if(File::exists(public_path($oldpath))){
                File::delete(public_path($oldpath));
            }
            // if(File::exists(public_path($user->image))){
            //     File::delete(public_path($user->image));
            // }
            $image = $request->{$inputName};
            $ext = $image->getClientOriginalExtension();
            $imageName = 'media_'.uniqid().'_'.$ext;

            //$imageName = rand().'_'.$image->getClientOriginalName();
            $image->move(public_path($path), $imageName);
           
            return $path.'/'.$imageName;

            //$path = "/uploads/".$imageName;
            //$user->image = $path;

        }
    }
    //handle delete file
    public function deleteImage(string $path){
        if(File::exists(public_path($path))){
            File::delete(public_path($path));
        }
    }
    
}