
		let a,b;
		a = parseInt(prompt("Enter 1 Value:"));
		b = parseInt(prompt("Enter 2 Value:"));
		for(let i=a;i<=b;i++)
	    {
            let flag=0;
			for(let j=2;j<=i/2;j++){
				if (i%j==0)
				{
					console.log(i);
					flag++;
					break;
				}
			}
			if(flag==0){
				document.write(i+"<br>");
			}
		}
