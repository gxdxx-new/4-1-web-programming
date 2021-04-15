'use strict'

//array
const a = [];   // array literal syntax
const b = Array();  // array built-in function
const c = [1, 2, 3]; 
const d = Array.of(1,2,3);

console.log(`${a} ${b} ${c} ${d}`);

const e = [1, 'yu', [1,2,3]];
console.log(e);

const f = [
    [1,2,3,],
    [4,5,6]
];
console.log(f[0][1]);

console.log(Array(8).fill(10));
console.log(f.length);
console.log(f[0].length);

e.push(100);    // 끝에 값 추가
console.log(e);

e.unshift(3000);    // 앞에 값 추가

console.log(e.pop());
console.log(e.shift());

let g = e.concat(c);    // 두 배열을 합침

g = [10, 20, 30, 40];
g.forEach( (item) => {
    console.log(item * 10);
});