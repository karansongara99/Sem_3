
let sum = 0;
let number = 1634
let temp = number;
let count  = 0;
let temp1 = number
while (temp1>0) {
    count++
    temp1 = parseInt(temp1 / 10);
}
while (temp > 0) {
    let rem = temp % 10;
    sum += Math.pow(rem,count);
    temp = parseInt(temp / 10);
}
if (sum == number) {
    console.log(`${number} is an Armstrong number`);
}
else {
    console.log(`${number} is not an Armstrong number.`);
}
