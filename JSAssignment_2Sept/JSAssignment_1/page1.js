
// Create a function that takes two numbers as arguments and returns their sum.
// addition(3, 2) ➞ 5
// addition(-3, -6) ➞ -9
// addition(7, 3) ➞ 10

function addition(num1,num2)
{
 return num1+num2
 
}
add=addition(3,2)
console.log(`Addition of 3 and 2 is ${add}`)

add=addition(-3,-6)
console.log(`Addition of -3 and -6 is ${add}`)

add=addition(7,3)
console.log(`Addition of 7 and 3 is ${add}`)




// Create a function that takes voltage and current and returns the calculated power
// circuitPower(230, 10) ➞ 2300
// circuitPower(110, 3) ➞ 330
// circuitPower(480, 20) ➞ 9600

function circuitPower(volt,current)
{
    return volt*current
}

power=circuitPower(230,10)
console.log(`Power is ${power}`)

power=circuitPower(110,3)
console.log(`Power is ${power}`)


power=circuitPower(480,20)
console.log(`Power is ${power}`)

// Write a function that takes an integer minutes and converts it to seconds.
// convert(5) ➞ 300
// convert(3) ➞ 180
// convert(2) ➞ 120

function convert( min)
{
    
    sec=min*60
    console.log(`${min} is equals to ${sec} seconds`)
}

convert(5)
convert(3)
convert(2)

// Write a function that takes the base and height of a triangle and return its area.
// triArea(3, 2) ➞ 3
// triArea(7, 4) ➞ 14
// triArea(10, 10) ➞ 50

function triArea(base,height)
{
     return 1/2*base*height
}

area=triArea(3,2)
console.log(`Area of Triangle is ${area}`)

area=triArea(7,4)
console.log(`Area of Triangle is ${area}`)

area=triArea(10,10)
console.log(`Area of Triangle is ${area}`)



// Create a function that takes the age in years and returns the age in days.
//  calcAge(65) ➞ 23725
//  calcAge(0) ➞ 0
//  calcAge(20) ➞ 7300

function calcAge(years)
{
    return years*365
}

days=calcAge(65)
console.log(`65 years contain ${days} days`)

days=calcAge(0)
console.log(`0 years contain ${days} days`)

days=calcAge(20)
console.log(`20 years contain ${days} days`)

// create a function to swap two parameters
//  let n1 = 10
//  let n2 = 20
//  swap(n1, n2) ➞ n1: 20, n2: 10

function swap(n1,n2)
{
    let n3=n1
    n1=n2
    n2=n3

    console.log(`n1: ${n1} , n2: ${n2}`)
}

swap(10,20)

// create a function to find out a maximum from an array
// const numbers = [10, 21, 5, 25, 6, 60, 23, 26, 49, 98]
// findMax(numbers) ➞ 98

function findMax(numbers)
{
let max=numbers[0]
for (let i=0;i<numbers.length;i++)
{
    if (numbers[i]>max)
    {
        max=numbers[i]
    }
}
return max;
}

const numbers=[10, 21, 5, 25, 6, 60, 23, 26, 49, 98]
max=findMax(numbers)
console.log(`The maximum numbers is ${max}`);


// create a function to find out a minimum from an array
// const numbers = [10, 21, 5, 25, 6, 60, 23, 26, 49, 98]
// findMin(numbers) ➞ 5

function findMin(numbers1)
{
let min=numbers1[0]
for (let i=0;i<numbers1.length;i++)
{
    if (numbers1[i]<min)
    {
        min=numbers1[i]
    }
}
return min;
}

const numbers1=[10, 21, 5, 25, 6, 60, 23, 26, 49, 98]
min=findMin(numbers1)
console.log(`The minimum numbers is ${min}`);


// Write a function which checks given input/parameter:
// If input/parameter is divisible by 3 print => Fizz
// If input/parameter is divisible by 5 print => Buzz
// If input/parameter is divisible by 3 or 5 print => FizzBuzz
// input/parameter is NOT divisible by 3 or 5 print => given Input Number/Value
// If input/parameter is other than Number/Value print => 'Nan Not a Number! Please Input
// Number'
// isfizzBuzz('one') ➞ Nan Not a Number! Please Input Number
// isfizzBuzz(true) ➞ Nan Not a Number! Please Input Number
// isfizzBuzz(9) ➞ Fizz
// isfizzBuzz(10) ➞ Buzz
// isfizzBuzz(30) ➞ FizzBuzz
// isfizzBuzz(11) ➞ Some odd number entered: 11


function isfizzBuzz(num)
{
    if(`${typeof(num)}`!='number')
    {
        console.log("Nan Not a Number! Please Input Number")
    }

    else
    {
        

        if (num%3==0 && num%5==0)
        {
            console.log('FizzBuzz')
        }
        else if(num%3==0)
        {
            console.log('Fizz')
        }

        else if(num%5==0)
        {
            console.log('Buzz')
        }
        else{
            console.log(`Some odd number entered:${num}`)
        }
    }
}

isfizzBuzz(9)
isfizzBuzz(10) 
isfizzBuzz(30)
isfizzBuzz(11)
isfizzBuzz('num')


// Write a function which checks number till given input/parameter is odd or even


function checkOddEven(n1)
{
    
    for(let i=1;i<=n1;i++)
    {
        if(i%2==0)
        {
            console.log(`${i} is Even Number`)
        }
        else
        {
            console.log(`${i} is Odd Number`)
        }
    }
    
}
checkOddEven(10)


// Write a function which Calculate the sum of multiples of 3 and 5 for a given limit
// sum0fMultiples(10) ➞ sum0fMultipleValue of 3 & 5 upto 10 digit is: 33


 function sum0fMultiples(n1)
{
    let sum=0
    for(let i=1;i<=n1;i++)
    {
        if(i%3==0 || i%5==0)
        sum=sum+i
        
    }
    console.log(`sum0fMultipleValue of 3 & 5 upto 10 digit is:${sum}`)

}
sum0fMultiples(10)




// Write a function which Prints/Shows star (or any pattern) for the number of times and rows provided
// showPattern(5)
//  *
//  **
//  ***
//  ****
//  *****


function showPattern(num)
{
    let string=''
    for(let index=1;index<=num;index++)
    {
        for(let index1=0;index1<index;index1++)
        {
            string += '*'
        }
        string +='\n'
    }
    console.log(string)
}

showPattern(5)

// Write a function which Calculate the sum of marks provided in an array, average it and also show
// Grade
// Grade criteria/mechanism is:
// 0% to 70% = > D Grade
// 71% to 79% => C Grade
// 81% to 89% => B Grade
// 91% to 100% => A Grade
// const marks = [55, 85, 55, 65];
// calculateGrades(marks) ➞ Grade: D

function calculateGrades(marks)

{
    let sum=0
  for (value of marks )
  {
     sum=sum+value;
  }
  console.log(`sum of Marks is ${sum}`)
  avg=sum/marks.length
  console.log(`Average of Marks is ${avg}`)
  if(avg>=0 && avg<=70)
  {
    console.log("Grade: D")
  }

  if(avg>=79 && avg<=70)
  {
    console.log("Grade: D")
  }

  if(avg>=81 && avg<=89)
  {
    console.log("Grade: D")
  }

  if(avg>=91 && avg<=100)
  {
    console.log("Grade: D")
  }
}

const marks=[55, 85, 55, 65]
calculateGrades(marks)



// // Write a function which show or print Prime Number upto provided range (with and without map)
// // showPrimeNumbers(20);
// // Prime Number: 2
// // Prime Number: 3
// // Prime Number: 5
// // Prime Number: 7
// // Prime Number: 11
// // Prime Number: 13
// // Prime Number: 17
// // Prime Number:19

function showPrimeNumbers(num)
{
for (let i=2;i<=num;i++)
{ 
    let flag=0
    for (let j=2;j<i;j++)
    {
        if(i%j==0)
            {
                flag=1
            }
        
    }
    if(flag==0)
        {
            console.log(` Prime number:${i}`)
        }
}
}

showPrimeNumbers(20)