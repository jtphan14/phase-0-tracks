//Create Function

//Create a loop that will start from the first letter and move to the last.
//Loop will start off at 1 and will start by printing the first letter of the loop into a new string
//On the second loop, the letter will be printed to the left of the new string.
//The loop will continue until it has reached the end of the word 
//ie. when the amount of loops = amount of letters in the word.

function reverse(string) {
	for (var i = 0; i < string.length; i++) {
		console.log(string[i])
	}
}

reverse("hello")