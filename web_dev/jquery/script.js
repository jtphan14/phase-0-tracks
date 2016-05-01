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

// $(document).click(function(){
//     $('img).hide("slow", function(){
//         alert("The paragraph is now hidden");
//     });
// });