var colors = ["blue", "red", "green", "orange"];
  
var horseNames = ["Tony", "Brevit", "Bojack", "Ed"];

colors.push("yellow")
horseNames.push("Joe")

console.log(colors, horseNames)



// two functions that iterate through the arrays. Each output is then put into the hash values

// funcion (horseNames) => 



var matcher = {};



for (var i = 0; i < horseNames.length; i++) {
  matcher[horseNames[i]] = colors[i]}
  
console.log(matcher)




// var horse = (horseNames[0])

// console.log (horseNames[1])

// matcher.horse = "purple"

// console.log(matcher)
// 
// matcher[horseNames[1]] = colors[1]
// 
// console.log(matcher)
// 
// 
// for (var i = 0; i < horseNames.length; i++) {
  // matcher[horseNames[i]] = colors[i]}
//   
// console.log(matcher)
// 
// 
// for (var i = 0; i < kittens.length; i++) {
//   console.log(kittens[i]);


// // say hello


// Let's declare an object:
// var dog = {name: 'Spot', 'age': 3, isGoodDog: true};

// Object values can be accessed with bracket notation ...
// console.log("The dog's name is " + dog['name'] + ".");
// 
// or dot notation ...
// console.log("The dog's name is " + dog.age + ".");
// 
// // to access information:
// var propertyName = 'name';
// console.log(dog[name]);
// 
// // You can add values anytime:
// dog.adopted = false; // :(
// 
// // And update values anytime:
// dog.adopted = true; // aww yay! :D
// 