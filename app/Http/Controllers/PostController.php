<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Post;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::all();
        return view('posts.index', compact('posts'));
    }

    public function create()
    {
        $users = DB::table('users')->get();
        return view('posts.create', compact('users'));
    }

    public function store(Request $request)
    {
        if (!Auth::check()) {
            return redirect()->route('login');
        }

        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('posts', 'public'); // Save to storage/app/public/posts
        }

        DB::table('posts')->insert([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'body' => $request->body,
            'image' => $imagePath,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->route('posts.index');
    }


    public function show($id)
    {
        $post = DB::table('posts')
            ->where('posts.id', $id)
            ->join('users', 'posts.user_id', '=', 'users.id')
            ->select('posts.*', 'users.name as author')
            ->first();
        $comments = DB::table('comments')
            ->where('comments.post_id', $id)
            ->join('users', 'comments.user_id', '=', 'users.id')
            ->select('comments.*', 'users.name as commenter')
            ->get();
        return view('posts.show', compact('post', 'comments'));
    }
}
