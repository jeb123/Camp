var images = [
'img/celebrate.gif',
'img/banderas.gif',
];

var delay = 800;
var img = document.getElementById('slides');
img.src = images[1];

var count = 0;
function changeSlide(number) {
	if(count >= image.length) {
		count = 0;
	} else {
		count++;
	}
img.src = images[count};
setTimeout(changeSlide, delay);
}

window.onload = changeSlide;
function displayTime() {
	var element = document.getElementById('clock');
	var now = new Date();
	var options = {
		hour: '2-digit',
		minute: '2-digit',
		second: '2-digit'
	}
	element.innerHTML =
	now.toLocaleString(navigator.language);
	setTimeout(displayTime, 1000);
}