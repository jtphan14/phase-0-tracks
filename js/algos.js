//Release 0: Find the Longest Word
//Create a function that will take an array of words and return the longest word in the array



//Create Function and Set Up Opening Variables
//Variable1: An empty array that will be used to store the length of each phrase
//Variable2: An integer that will contain the count of the longest word
function longestPhrase(array) {var lengthOfPhrase = []; var longest = 0;
	//Loop through the array and get the length of each word
	for (var i = 0; i < array.length; i++){ 
		//Store Results of Array Length in new Array
		lengthOfPhrase.push(array[i].length);
		//Use if statement to store length into variable2 if the current phrase length is longer than the previous phrase length
		if (array[i].length > longest) {
			longest = array[i].length
		}
	};
	//Iterate through Variable1(The length array) to determine if the length is equal to the longest word and prints it out
	for (var i = 0; i < lengthOfPhrase.length; i++) {
		if (longest == lengthOfPhrase[i]) {
			console.log(array[i])
		}
	}
}
//Driver Code
longestPhrase(["kitten", "dog", "orangutan"])
longestPhrase(["long", "longer", "longest"])
longestPhrase(["Work", "Work Work", "Work Work Work Work"])
