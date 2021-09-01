document.addEventListener('DOMContentLoaded', function(){
  if ( document.getElementById('tag_name')){
    const TagList = document.getElementById('tag-list')

    const inputHTML = document.createElement('input')
    inputHTML.setAttribute('id',
`tag_name_${imageElementNum}`)
    inputHTML.setAttribute('name', 'tag[names][]')
    inputHTML.setAttribute('type', 'file')

    imageElement.appendChild(inputHTML)

document.getElementById('item_description').addEventListener('change',
(e) => {

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createImageHTML(blob)
   });
  }
});