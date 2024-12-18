let num1 = parseInt(prompt("Enter 1 Value:"));  
        let num2 = parseInt(prompt("Enter 2 Value:"));
        
        while (num1 !== num2) {
          if (num1 > num2) {
            num1 = num1 - num2;
          } else {
            num2 = num2 - num1;
          }
        }
        document.write("The numbers is: " + num1);   