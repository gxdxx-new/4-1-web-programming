'use strict'

let a = 10;
console.log(a);

//변수타입
//원시타입(number, string, boolean, null, undefined, symbol), 객체타입
console.log(typeof(a)); //number
let b = 3.14;
console.log(typeof b);  //number
b = "남ㅇㅇ";
console.log(typeof b);  //string
b = true;
console.log(typeof b);  //boolean
b = null;
console.log(typeof b);  //object
let c;
console.log(typeof c);  //undefined
console.log(1/0);   //Infinity
console.log(typeof(1/0));   //number
console.log("abd"/4);   //NaN

c = 123n;   // Big int type

// Template Literals
let age = 18;
let base = 10;
c = "자바스크립트";

let str = `테스트! ${age+base} 이 ${c}`;
console.log(str);

// Tagged Templates
str = `여러줄로 된 문자열
첫번째  ${c}
두번째`;
console.log(str);

// boolean
// 거짓 (false) : false,  0, null, undefined, NaN, '' <- falsy value
// 나머지는 다 true

let condition = 100 > 200;
console.log(`${condition} ${typeof condition}`);

// symbol 객체의 고유 식별자 만들 때 주로 사용됨
let symbol1 = Symbol('yu');
let symbol2 = Symbol('yu');
console.log(symbol1 == symbol2);    //false
let symbol3 = Symbol.for('yu');
let symbol4 = Symbol.for('yu');
console.log(symbol3 == symbol4);    //true

let myinfo = {name : 'gd', major : '컴공', id : 17}
console.log(myinfo.name);
console.log(myinfo['major']);

// 산술연산자
console.log(3**5);  //3*3*3*3*3

// 비교연산자
a = '123';
b = 123;
console.log(a == b);    // loose equality 연산자. 형변환을 자동으로 해줌
console.log(a === b);   // strict equality 연산자.
