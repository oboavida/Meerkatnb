const readURL = function(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $('#meerkat-preview-img').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }
}

const initImagePreview = function() {
  $("#meerkat_photo").change(function() {
    readURL(this);
  });
}



export  { initImagePreview };
