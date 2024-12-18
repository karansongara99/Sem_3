Method - 1

var arr = [3, 6, 2, 56, 32, 5, 89, 32];
var largest = arr[0];

for (var i = 0; i < arr.length; i++) {
  if (arr[i] > largest ) {
    largest = arr[i];
  }
}
console.log(largest);

Method - 2

function findMinMax() {
  let Arr = [50, 60, 20, 10, 40];
  let maxValue = Math.max(...Arr);
  console.log("Maximum Element is:" + maxValue);
}

findMinMax()


