<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    // Show profile
    public function show(Request $request)
    {
        return response()->json($request->user());
    }

    // Update profile (name, email)
    public function update(Request $request)
    {
        $user = $request->user();
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $user->id,
        ]);
        $user->update($request->only('name', 'email'));
        return response()->json(['message' => 'Profile updated', 'user' => $user]);
    }

    // Update password
    public function updatePassword(Request $request)
    {
        $user = $request->user();
        $request->validate([
            'current_password' => 'required',
            'password' => 'required|string|min:6|confirmed',
        ]);
        if (!Hash::check($request->current_password, $user->password)) {
            throw ValidationException::withMessages([
                'current_password' => ['Current password is incorrect.'],
            ]);
        }
        $user->password = Hash::make($request->password);
        $user->save();
        return response()->json(['message' => 'Password updated']);
    }

    // Update profile image
    public function updateProfileImage(Request $request)
    {
        $user = $request->user();
        $request->validate([
            'profile_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
        $image = $request->file('profile_image');
        $path = $image->store('profile_images', 'public');
        $user->profile_image = $path;
        $user->save();
        return response()->json(['message' => 'Profile image updated', 'profile_image' => $path]);
    }
}
