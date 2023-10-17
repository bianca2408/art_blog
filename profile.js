
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
  //scrollEffect();
});
// window.addEventListener('scroll', scrollEffect);
// function scrollEffect(){
//   if(window.scrollY<300){
//     text.style.display='';
//     // text.style.transform='translateX(0px)';
//     // text.style.transition='1s ease-in-out';
//   }   
//   else {
//     text.style.display='none';
//     // text.style.transform='translateX(-50px)';
//   }
// };




$('.profile-nav ul li').click(function(){
  $(this).addClass("active").siblings().removeClass("active");
});

const tabBtn=document.querySelectorAll('.profile-nav ul li');
const tab=document.querySelectorAll('.tab');
function tabs(panelIndex){
  tab.forEach(function(node){
    node.style.display='none';
  });
  tab[panelIndex].style.display='block';
}
tabs(0);





