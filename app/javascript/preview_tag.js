document.addEventListener('DOMContentLoaded', function(){
  document.getElementById('items_tag_tag_word').addEventListener('change', function(e){
    console.log(e);
  })
  const inputHTML = document.createElement('input')
  inputHTML.setAttribute('id', 'items_tag_tag_word')
  inputHTML.setAttribute('name', 'tag[names][]')
  inputHTML.setAttribute('type', 'list')

  const nameElement = document.createElement('div')
  nameElement.setAttribute('class', "name-element")
  let nameElementNum = document.querySelectorAll('.name-element').length

  nameElement.appendChild(inputHTML)
  console.log(inputHTML)
});