document.addEventListener('DOMContentLoaded', function(){
  const UserIcon = document.getElementById('user-icon');
  const createImageHTML = (blob) => {
    const blobImage = document.createElement('img')
    blobImage.setAttribute('src', blob)
    blobImage.setAttribute('class', 'icon-lg')
    UserIcon.appendChild(blobImage)
  }

  document.getElementById('profile_image').addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
    if (imageContent){
      imageContent.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file)

    createImageHTML(blob)
  })
});
