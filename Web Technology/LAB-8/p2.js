let count = 0
let n = 2
let m = 10
for (let i = n; i < m; i++) {
    count = 0
    for (let j = 2; j < i; j++) {
        if (i % j == 0) {
            count++;
        }

    }
    if (count == 0) {
        console.log(i)
    }
}
