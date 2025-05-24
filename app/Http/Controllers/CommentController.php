<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function store(Request $request, $postId)
    {
        if (!Auth::check()) {
            return redirect()->route('login');
        }
        DB::table('comments')->insert([
            'post_id' => $postId,
            'user_id' => Auth::id(),
            'body' => $request->body,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    
        return redirect()->route('posts.show', $postId)->with('success', 'Comment added!');
    }
    
}
