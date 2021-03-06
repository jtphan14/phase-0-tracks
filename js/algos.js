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

//Release 1: Find a Key-Value Match
//Write a function that takes two objects and checks to see if the objects share one key-value pair.


//Create Function that takes in two objects.
function match(obj1, obj2){
//Create blank arrays to store key-values into array
	objKey1 = []; objKey2 = [];
//Loop through obj1 to store key-value into first array
	for (var prop1 in obj1){
		objKey1.push(prop1 + ":" + obj1[prop1]);
	}
//Loop through obj2 to store key-value into second array.
	for (var prop2 in obj2){
		objKey2.push(prop2 + ":" + obj2[prop2]);
	}	
//Loop through both objkey1 and objkey2 arrays and see if any key-value parirs match.
	for (var i = 0; i < objKey1.length; i++) {
		for (var i = 0; i < objKey2.length; i++)
		if ((objKey1[i] == objKey2[i])){
			return true;
		} else {
			return false;
		}
	}
}

//Release2
//Write a function that takes an integer for length, and builds and returns an array of strings for the number of length. 

//Create a function that takes in an integer
//Use Random function to create random string with 1 to 10 letters.
//Repeat as many times as integer states

//Create a functon that takes a random integer between 1 to 10
function randomNumber() {
	var randomLength = Math.floor((Math.random() * 10) + 1);
	return randomLength
};
//Create a function that creates a random string
function randomString(length) {
//Generate original var string
	var string = "";
//Generate possible letters in string
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
//Find random letter possible string. Loop through until you match length parameter.
	for(var i =0; i < length; i++){
		string += possible.charAt(Math.floor(Math.random()*possible.length))
	}
//Return generated string
		return string;
};
//Create a function that will generate a random Array
function arrayGen(integer){
//Create a blank array
	var randomArray=[];
//Use a loop to add new string to array
	for(var i = 0; i < integer; i ++){
//Use randomNumber function to create random length
	var length = randomNumber();
//Add string of random length to random Array
	randomArray.push(randomString(length));
	}
//Return randomArray
	return randomArray;
}





// Driver Code
// Release0
longestPhrase(["kitten", "dog", "orangutan"])
longestPhrase(["long", "longer", "longest"])
longestPhrase(["Work", "Work Work", "Work Work Work Work"])
// Release1
console.log(match({name: "Joe", age: 2}, {name: "Joe", age: 4}))
console.log(match({Kobe: 24, Team: "Lakers"}, {Curry:30, Team: "Warriors"}))
//Release2
for (var i=0; i < 10; i++ ){
	var numOfItems = randomNumber();
	var generatedArray = arrayGen(numOfItems);
	longestPhrase(generatedArray)
}




