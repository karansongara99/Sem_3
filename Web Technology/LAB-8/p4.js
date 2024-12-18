let num1 = 10
let num2 = 20

while (num1 !== num2) {
  if (num1 > num2) {
    num1 = num1 - num2;
  } else {
    num2 = num2 - num1;
  }
}
console.log("The numbers is: " + num1);   