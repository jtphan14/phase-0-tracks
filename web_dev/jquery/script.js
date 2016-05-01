console.log("Hello World")

$(document).ready(function(){
    $("button").click(function(){
        $('img').animate({
            left: '250px',
            height: '+=150px',
            width: '+=150px'
        });
    });
});


$(document).ready(function(){
    $("#show").click(function(){
        $('img').animate({
            left: '250px',
            height: '+=150px',
            width: '+=150px'
        });
    });
});

$(document).ready(function(){
    $("#hide").click(function(){
    	$('img').hide("slow", function(){
        	alert("The picture is now hidden");
    	});
    });	
});