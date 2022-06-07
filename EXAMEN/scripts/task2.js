'use strict';
function main() {

    let x = 0;
    let response = document.querySelector("#reponse");
    let p = document.querySelectorAll("p");
    let p1 = document.createElement("p");
    //response.append(p1);
    p1.innerHTML = `response 1: ${p.length}`;

    let p2 = document.createElement("p");
    //response.append(p2);
    p2.innerHTML = `response 2: ${p[1]}`;

    let a = document.querySelectorAll("a");
    let p3 = document.createElement("p");
    //response.append(p3);
    p3.innerHTML = `response 3 ${a.length}`;

    let p4 = document.createElement("p");
    //response.append(p4);
    p4.innerHTML = `response 4 ${a[0]}`;

    let p5 = document.createElement("p");
    //response.append(p5);
    p5.innerHTML = `response 5 ${a[a.length-2]}`;

    for (let i = 0; i < a.length; i++) {
        if (a[i] == "https://en.wikipedia.org");
        x++;
    }
    console.log(x);

    let p6 = document.createElement("p");
    //response.append(p6);
    p6.innerHTML = `response 6 ${a.length-1}`;

    let p7 = document.createElement("p");
    let para = p[0].querySelectorAll("a");
    //response.append(p7);
    p7.innerHTML = `response 7: ${para.length}`;
}

document.addEventListener('DOMContentLoaded', main);