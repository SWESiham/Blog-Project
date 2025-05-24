<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Posts</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .blog-card {
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .blog-card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.2);
        }

        .blog-card img {
            height: 200px;
            object-fit: cover;
        }

        .blog-card .card-body {
            display: flex;
            flex-direction: column;
            height: 100%;
        }

        .blog-card .card-text {
            flex-grow: 1;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 5;
            /* Show exactly 5 lines */
            -webkit-box-orient: vertical;
        }

        .btn-read-more {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 8px 12px;
            font-size: 14px;
            align-self: flex-start;
        }

        .btn-read-more:hover {
            background-color: #0056b3;
            color: white;
        }
    </style>
</head>

<body>

    <header>
        <div class="ls">
        </div>
        @if (Route::has('login'))
        <nav class="mt-5 flex flex-1 justify-end">
            @auth
            <a href="{{ url('/profile') }}" class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/100 dark:focus-visible:ring-white">
                {{Auth::user()->name }}
            </a>
            <a href="{{ url('/posts/create') }}" class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/100 dark:focus-visible:ring-white">
                Create a Post
            </a>
            @else
            <a href="{{ route('login') }}" class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white">
                Log in
            </a>
            @if (Route::has('register'))
            <a href="{{ route('register') }}" class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white">
                Register
            </a>
            @endif
            @endauth
        </nav>
        @endif
    </header>
    <div class="container py-5">
        <h1 class="text-center mb-4">All Blog Posts</h1>
        <div class="row">
            @foreach ($posts as $post)
            <div class="col-md-4 mb-4">
                <div class="card blog-card shadow-sm h-100">
                    @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top" alt="Post Image">
                    @endif
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title font-weight-bold">{{ $post->title }}</h5>
                        <p class="card-text">{{ $post->body }}</p>
                        <a href="{{ route('posts.show', ['id' => $post->id]) }}" class="btn btn-read-more mt-auto">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>

</body>

</html>