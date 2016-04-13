//Create Function

//Create a loop that will start from the last letter and move to the left
//Loop will start off at the last letter and will reprint the letter into a new variable
//On the second loop, the letter will be added to the new variable string
//The loop will continue until it reaches the first letter

function reverse(string) { var reverseString = "";
	for (var i = (string.length-1) ; i >= 0; i--) {reverseString = reverseString + string[i]
	};
	return reverseString
}
//driver code with if loop
if (1 == 1) {
console.log(reverse('hola'));
}

