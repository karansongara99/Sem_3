
let a = 1331, sum = 0, b, c = a
while (a > 0) {
  b = a % 10
  sum = sum * 10 + b
  a = parseInt(a / 10)
}
if (c == sum) {
  console.log("palindrome number:" + sum)
} else {

  console.log("not a palindrome number:" + sum)

}


