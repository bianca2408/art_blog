
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


