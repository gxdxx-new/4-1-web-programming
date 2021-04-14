'use strict'

hello();

function hello(name='noname') {
    console.log(`${name} !`);
}

hello('gd');

// rest argument
function myPrint( ...args ) {
    let sum = 0;
    for(let i = 0; i < args.length; i++){
        sum += args[i];
    }
    return sum;
}

console.log(myPrint(1,2,3,4,5,6,7));

const myPrint2 = function() { console.log('test'); }    // hoisting 불가
myPrint2();

function myFunc(abc, xyz) { // 콜백함수
    abc();
    xyz();
}

myFunc(myPrint2, hello);

myFunc( function() { console.log('익명1'); }, function() { console.log('익명2');} );

// 화살표 함수
const testFunc = function() {
    console.log('xxxx');
}
const testFunc2 = () => {
    console.log('yyyy');
}

const printHello = (msg) => { console.log(msg); }
printHello('hello');

// IIFE : Immediately Invoked Function Expression
( (msg) => {
    console.log(msg);
})('gd hi');