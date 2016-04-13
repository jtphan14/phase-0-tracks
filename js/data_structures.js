//Release 0

//Arrays
var colors = ["blue", "red", "green", "orange"]; 
var horseNames = ["Tony", "Brevit", "Bojack", "Ed"];
//Add color and horse name to arrays
colors.push("yellow")
horseNames.push("Joe")
//Print out color and Horse Arrays
console.log(colors, horseNames)

//Release 1
//Create Empty Array
var matcher = {};
//For Loop to add horse and color 
for (var i = 0; i < horseNames.length; i++) {
  matcher[horseNames[i]] = colors[i]}
//Print out updated matcher object
console.log(matcher)

//Release 2
//Constructor Function
function Car(model,color,isAutomatic) {
  console.log("On the assembly line:", this)
//Create "attributes" for *this  
  this.model = model;
  this.color = color;
  this.isAutomatic = isAutomatic;
 //Create Shift Function that is an if/else statement 
  this.shift = function() {
    if(this.isAutomatic) {
      console.log("Enjoy driving right now!");
    } else {
      console.log("Back to driving school to learn how to drive stick!");
    }
  };  
  //Create simple function
  this.horn = function() {
    console.log("beep beep")
  };
}
//Driver Code -
var alexCar = new Car("Honda","Blue", false);
console.log(alexCar)
alexCar.horn();
alexCar.shift();

var jaqCar = new Car("Audi", "Black", true);
console.log(jaqCar);
jaqCar.shift()


