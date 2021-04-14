'use strict'

//변수
num = 10;
console.log(num);
var num;    //hoisting

{
    num2 = 20;
    var num2;
}

console.log(num2);

let num3;   //전역 scope
num3 = 30;
console.log(num3);

{
    let num4;   //블록 안에서는 지역 scope을 가짐
    num4=40;
}

//console.log(num4);

const PI = 3.14;    //상수, 변경할 수 없음
let area = PI * 3 * 3;
console.log(area);