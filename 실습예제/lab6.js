'use strict'

const car = {}; // object literal
const car2 = new Object();   
const car3 = Object.create(null);

// constructor
function Car(brand, model) {
    this.brand = brand;
    this.model = model;
}

const myCar = new Car('현대', '소나타');
console.log(myCar.brand + myCar.model);

let age = 18;
let myAge = age;
myAge = 21;
console.log(`${age} ${myAge}`);

const car4 = {
    color: 'gray'
}

const myNewCar = car4;  // object는 항상 passed by reference
myNewCar.color = 'red';
console.log(`${car4.color} ${myNewCar.color}`);

const car5 = {
    color: 'yellow',
    'the color': 'blue'
}
console.log(car5.color);
console.log(car5['the color']);
console.log(car5['color']);

 console.log(car5.brand);   // undefined

 const car6 = {
     brand: {
         name: 'kia'
     },
     color: 'green'
 };
 console.log(`${car6.brand.name} ${car6['brand']['name']}`);

 car6.model = 'K8'; // 새로운 porperty 추가
 console.log(car6.model);

 delete car6.color; // 삭제
 
 const car7 = {
     brand: '삼성',
     model: 'qm6',
     print: function() {
        console.log(`${this.brand} ${this.model}`);
     },  //메소드
     print2: () => {
        console.log(`${this.brand} ${this.model}`);
     }  // 화살표 메서드에서는 this를 사용할 수 없음
};

 car7.print();

car7.print3 = function() {
    console.log(this.brand);
}

 // 클래스
class Person {
    constructor(name) {
        this.name = name;
    }
    hello() {
        console.log(`${this.name}님 환영합니다`);
    }
    static print() {    // static 함수는 객체를 통해서 사용 불가
        console.log('static');
    }
}

const nam = new Person();
nam.name = 'gd';
console.llog(nam.name);
nam.hello();
Person.print();

class Programmer extends Person {
    hello() {
        super.hello();
        console.log('프로그래머');
    }

}

const programmer =  new Programmer();
programmer.name = '남기돈';
programmer.hello();