
        let num  = 10
        document.write(`The factorila of ${num} is:`);
        for (let i = 1; i <= num; i++) {
            if (num % i == 0) {
                document.write(i+"<br>");
            }
        }
