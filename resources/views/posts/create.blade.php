<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
  <div class="container">
    <br><br>
    <h2>Add New Post</h2>
    <form action="{{ route('posts.store') }}" class="was-validated" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="form-group">
        <label for="imageUpload">Choose an image:</label>
        <input type="file" id="imageUpload" name="image" accept="image/*" onchange="previewImage(event)" required>
        <img id="imagePreview" src="" alt="Image Preview" style="display:none; width:200px;"  />
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
      </div>
      <div class="form-group">
        <label for="title">Title:</label>
        <input type="text" class="form-control" id="title" placeholder="Enter title" name="title" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
      </div>
      <div class="form-group">
        <label for="body">Body:</label>
        <textarea name="body" id="body" cols="100" rows="30" required></textarea>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
      </div>
      <button type="submit" class="btn btn-primary">Add Post</button>
    </form>
  </div>
  
<script>
  function previewImage(event) {
    const imagePreview = document.getElementById('imagePreview');
    const file = event.target.files[0];
    const reader = new FileReader();

    reader.onload = function() {
      imagePreview.src = reader.result;
      imagePreview.style.display = 'block';
    }

    if (file) {
      reader.readAsDataURL(file);
    }
  }
</script>
</body>

</html>
