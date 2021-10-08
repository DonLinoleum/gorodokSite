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




function Move()
{
	Action.style.transform = "translateX(-100%)";
	
}
function Move2()
{
	Action.style.transform = "translateX(0%)";
	
}
setInterval(Move,10000);
setInterval(Move2,20000);


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


PodrobnostiClick.addEventListener('click', function(){
	
	if (window.getComputedStyle(Podrobnosti).maxHeight === '250px')
	{
		Podrobnosti.style="max-height:0px;";
		setTimeout(function(){
		PodrobnostiList.style="display:none;";	
		},500)
				
	}
	else if (window.getComputedStyle(Podrobnosti).maxHeight === '0px')
	{
		Podrobnosti.style = "max-height:250px;";
		PodrobnostiList.style="display:block;";	
				
	}
	
	if (window.getComputedStyle(Podrobnosti).maxHeight === '1000px')
	{
		
		Podrobnosti.style="max-height:1px;";
		
		setTimeout(function(){
			PodrobnostiList.style = "display:none";
		},1000);
							
	}
	if (window.getComputedStyle(Podrobnosti).maxHeight === '1px')
	{
		
		
		Podrobnosti.style = "max-height:1000px";
		PodrobnostiList.style="display:flex;";	
				
	}
	
});