let previewContainer=document.querySelector('.art-preview');
let previewBox=previewContainer.querySelectorAll('.preview');

document.querySelectorAll('.gallery__column .gallery__link').forEach(gallery__link=>{
  gallery__link.onclick=()=>{
    previewContainer.style.display='flex';
    let name = gallery__link.getAttribute('data-name');
    previewBox.forEach(preview=>{
      let target=preview.getAttribute('data-target');
      if(name==target){
        preview.classList.add('active');
      };
    });
  };
});
previewBox.forEach(close=>{
  close.querySelector('.close-x').onclick=()=>{
    close.classList.remove('active');
    previewContainer.style.display='none';
  };
});


let clouds1=document.getElementById('clouds1');
let clouds2=document.getElementById('clouds2');

let paragraph=document.getElementById('paragraph');
let container1=document.getElementById('container');
window.addEventListener('scroll', ()=>{
  let value = window.scrollY;
  clouds1.style.top= value*-1.5+'px';
  clouds2.style.top= value*-1.5+'px';
  paragraph.style.top= value*-1+'px';
  container1.style.top=value*-3+'px';
  
});