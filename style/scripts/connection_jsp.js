let Action = document.getElementById('ActionsContainer');
let MobileNav = document.getElementById('MobileNav');
let MenuMobileButton = document.getElementById('MenuMobileButton');
let PodrobnostiClick = document.getElementById ('podrobnosti_click');
let PodrobnostiList = document.getElementById ('podrobnosti_list');
let Podrobnosti = document.getElementById ('podrobnosti');
let menuItem = document.getElementsByClassName('menu_items');

let mainMenu = document.getElementById('HeaderMenu');
let kinoIcon = document.getElementById('kino_link');
let camIcon = document.getElementById('cam_link');




MenuMobileButton.addEventListener('click',function()
{
	if (window.getComputedStyle(MobileNav).maxHeight === '0px')
	{
		MenuMobileButton.style = "opacity:0;"
		setTimeout(function(){
		MenuMobileButton.src = "style/images/menu2.png";
		MenuMobileButton.style = "opacity:1;"
		},450);
		MobileNav.style = "max-height:265px;";		
	}
	
	else if (window.getComputedStyle(MobileNav).maxHeight === '265px')
	{
		MenuMobileButton.style = "opacity:0;"
		setTimeout(function(){
		MenuMobileButton.src = "style/images/menu.png";
		MenuMobileButton.style = "opacity:1;"
		},450);
		MobileNav.style = "max-height:0px;";
	}	
});

camIcon.addEventListener('mouseover',function(){
	mainMenu.style.opacity= "0";
	setTimeout(function(){
	mainMenu.style.backgroundImage = "url('style/images/video.jpg')";
	kinoIcon.src="style/images/1.png";
	camIcon.src = "style/images/2.png";
	Object.values(menuItem).forEach((el)=>{
		el.style.color="black";
		
	});
	mainMenu.style.opacity= "1";

	},350);
});
kinoIcon.addEventListener('mouseover',function(){
	mainMenu.style.opacity= "0";
	setTimeout(function(){
	mainMenu.style.backgroundImage = "url('style/images/kinofon.jpg')";	
	kinoIcon.src="style/images/4.png";
	camIcon.src = "style/images/5.png";
	Object.values(menuItem).forEach((el)=>{
		el.style.color="white";
	});
	mainMenu.style.opacity= "1";
	
	},350);
});


