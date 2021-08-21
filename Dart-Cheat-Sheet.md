# Dart Cheat-Sheet

## Variables

```dart
int n1 = 5; // explicty typed
var n2 = 4; // type inferred
n2 = "abc"; // error because n2 it's not dynamic

dynamic n3 = 4; // dynamic means n3 can take on any type
n3 = "abc";

double n4; // n4 is null
String s1 = 'Hello World';
var s2 = 'Hello, World';
```


## Constants

```dart
const PI = 3.14; // const is used for compule-time constant

final area = PI * 5 * 5; // final variables can only be set once
```

## Conditional Expressions

```dart
var grade = 3;
var reply = greade > 3 ? "Cool" : "Not Cool";

var input; // input is null
var age = input ?? 0;
print(age); // 0
```
## Functions

```dart
void doSomething() {
  print("doSomething()")
}

int addNums1(num1, num2, num3) {
  return num1 + num2 + num3;
}
```
## Arrow Syntax

```dart
void doSomethingElse() {
  doSomething();
}

// the above can be rewritten using arrow syntax
void doSomethingElse() => doSomething();
```

## Optional Positional Parameters

```dart
int addNums2(num1, [num2 = 0, num3 = 0]) {
  return num1 + num2 + num3;
}
print(addNums2(1));
print(addNums2(1, 2));
print(addNums2(1, 2, 3));
```

## Named Parameters

```dart
// named parameters
int addNums3({num1, num2, num3}) {
  return num1 + num2 + num3;
}

print(addNums2(num1:1, num2:2, num3:3));
```


## Optional Named Parameters

```dart
// named parameters
int addNums4(num1, {num2 = 0, num3 = 0}) {
  return num1 + num2 + num3;
}

print(addNums4(1));
print(addNums4(1, num3:2));
print(addNums4(1, num2:5, num3:2));
```
## Parsing

```dart
var s1 = "1234";
var s2 = "12.34";
var s3 = "12.a34";
var s4 = "12.0";
print(num.parse(s1)); // 1234
print(num.parse(s2)); // 12.34
print(num.parse(s3)); // FormatException: 12.34
print(num.tryParse(s3)); // null
```


## String Interpolation

```dart
var s1 = "Hello";
var s2 = "world";
var s3 = s1 + ", " + s2;
var s = "${s3}!";
print(s); // Hello, world !
print("Sum of 1 and 2 is ${1+2}"); // Sum of 1 and 2 is 3
```

## List (Arrays)

```dart
// dynamic list
var arr = [1,2,3,4,5];
print(arr.length); // 5
print(arr[1]); // 2
arr[4] *= 2;
print(arr[4]); // 10
arr.add(6);
print(arr); // [1,2,3,4,10, 6]

List arr2;
arr2 = arr;
arr2[1] = 9;

print(arr); // [1,9,3,4,10, 6]
print(arr2); // [1,9,3,4,10, 6]

// fixed size list
var arr3 = new List(3);
print(arr3); // [null, null, null]
arr3.add(5); // Uncaught exception: Unsupported operation: add
```

## Map

```dart
var devices = new Map();
var apple = ["iphone","ipad"];
var samsung = ["S10","Note 10"];
devices["Apple"] = apple;
devices["Samsung"] = samsung;
for (String company in devices.key) {
  print(company);
  for (String device in devices[company]) {
    print(device);
  }
}

```

## Lambda Functions

```dart
var nums = new List<int>.generate(10, (i) => i); 
print(nums); // [0,1,2,3,4,5,6,7,8,9]

var odds = nums.where((n) => n % 2 == 1).toList(); 
print(odds); //  [1,3,5,7,9]

var sum = nums.reduce((s, n) => s + n); 
print(sum); // 45

var prices = nums.map((n) => "\$$n").toList();
print(prices); // [$0, $1, $2, $3, $4, $5, $6, $7, $8, $9]

```


## Higher Order Functions

```dart
var names =  ["Jimmy", "TIM", "Kim"];

// sort alphabetically with case insensitivity
names.sort((a, b) => a.ToUpperCase().compareTo(b.ToUpperCase()));
print(names); //  [Jimmy, Kim, TIM]

// sort by length of name
names.sort((a, b) {
  return a.length > b.length ? 1 : -1;
});
print(names); // [Kim, TIM, Jimmy]
```

## Sort Example Functions

```dart
List bubbleSort(List items, bool Function (int, int) compareFunction) {
  for(var j = 0; j < items.length - 1; j++) {
    var swampped = false;
    for(var i = 0; j < items.length - 1 - j; i++) {
      if(!compareFunction(items[i], items[i +1])) {
        var t =  items[i +1];
        items[i +1] = items[i];
        items[i] = t;
        swampped = true;
      }
    }
    if(!swampped) break;
  }
  return items;
}


var nums =  [5, 2, 8, 7, 9, 4, 3, 1];

// sort is ascending order
var ascendingNums = bubbleSort(nums, (n1, n2) => n1 < n2);
print(ascendingNums);

// sort is descending order
var descendingNums = bubbleSort(nums, (n1, n2) => n1 > n2);
print(descendingNums);
```
