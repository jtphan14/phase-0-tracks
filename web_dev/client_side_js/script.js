console.log("Testing");

// document.getElementById("footnote").style.border = "thick solid #0000FF";
// "thick solid #0000FF";


document.getElementById("aside").style.cursor = "pointer";

function addBackgroundColor(event) {
	event.target.style.backgroundColor = "red";
}

var background = document.body;
background.addEventListener("click", addBackgroundColor);

function footerBorder(event){
	event.target.style.border = "thick solid #0000FF";
}

function removeFooterBorder(event){
	event.target.style.border = "0px";
}

var border = document.getElementById("footnote");
border.addEventListener("mouseover", footerBorder);
border.addEventListener("mouseout", removeFooterBorder);