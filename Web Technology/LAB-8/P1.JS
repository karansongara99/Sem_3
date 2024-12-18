let n  = 10
console.log(`The factor of ${n} is:`);
for (let i = 1; i <= n; i++) {
    if (n % i == 0) {
        console.log(i);
    }
}
