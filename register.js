let clouds1=document.getElementById('clouds1');
let clouds2=document.getElementById('clouds2');
// let text=document.getElementById('text');
let paragraph=document.getElementById('paragraph');
let container1=document.getElementById('container');
window.addEventListener('scroll', ()=>{
  let value = window.scrollY;


  // text.style.marginTop=value*2.5+'px';
  clouds1.style.top= value*-1.5+'px';
  clouds2.style.top= value*-1.5+'px';
  paragraph.style.top= value*-1+'px';
  container1.style.top=value*-3+'px';
});

const sign_in_btn= document.querySelector("#sign-in-btn");
const sign_up_btn= document.querySelector("#sign-up-btn");
const container=document.querySelector(".container");

sign_up_btn.addEventListener("click",()=>{
  container.classList.add("sign-up-mode");
});
sign_in_btn.addEventListener("click",()=>{
  container.classList.remove("sign-up-mode");
});


