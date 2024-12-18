
let n = 6;
count = 0;
for (i = 2; i < n; i++)
  if (n % i == 0) {
    count++;
    break;
  }

if (count == 0) {
  console.log("Number is Prime:" + n);
} else {
  console.log("Number is Not Prime:" + n);
}
