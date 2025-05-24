<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $post->title }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<style>
    .container{
        margin-top: 50px;
    }
    .posst img {
        width: 400px;
        height: 400px;
    }

    .post-header .c2{
        margin-top: 100px;
        margin-left: -250px;
    }

    .body {
        height: 2000px;
    }
</style>

<body>
    <div class="container">

        <div class="posst card">
            <div class="post-header row ">
                
                
            <div class="col">
                @if ($post->image)
                <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top" alt="Post Image">

                @endif
                </div>
                <div class="col c2">
                <h2>{{ $post->title }}</h2>
                <p>By: {{ $post->author }}</p>

                </div>
            </div>
            <div class="card-body">
                <p>{{ $post->body }}</p>
            </div>
        </div>

        <h3>Comments</h3>
        @foreach ($comments as $comment)
        <div class="card mt-2">
            <div class="card-body">
                <p><strong>{{ $comment->commenter }}</strong></p>
                <p>{{ $comment->body }}</p>
                <p>{{ $comment->created_at }}</p>
            </div>
        </div>
        @endforeach

        <h3>Add a Comment</h3>
        <form action="{{ route('comments.store', $post->id) }}" method="POST">
            @csrf
            <div class="form-group">

                <textarea name="body" cols="30" rows="2" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>

</html>