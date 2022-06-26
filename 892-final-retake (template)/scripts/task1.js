'use strict';
function main() {
    let x = 0;
    //El número de parrafos en la pagina.
    let response = document.querySelector("#response");
    let p = document.querySelectorAll("p");
    let p1 = document.createElement("p");
    response.append(p1);
    p1.innerHTML = `response 1: ${p.length}`;

    //Texto del segundo parrafo
    let p2 = document.createElement("p");
    response.append(p2);
    p2.innerHTML = `response 2: ${p.text}`;

    //Numero de links en la pagina
    let a = document.querySelectorAll("a");
    let p3 = document.createElement("p");
    response.append(p3);
    p3.innerHTML = `response 3: ${a.length}`;

    //La direccion del penultimo enlance
    let p4 = document.createElement("p");
    response.append(p4);
    p4.innerHTML = `response 4: ${a[16]}`;

    //El numero de enlaces que apuntan a wikipedia
    let p5 = document.createElement("p");
    response.append(p5);
    p5.innerHTML = `response 5: ${a.length}`;

    //El numero de enlaces del primer parrafo
    let p6 = document.createElement("p");
    response.append(p6);
    p6.innerHTML = `response 6: ${a.length-1}`;

    //El atributo alt de la imagen
    let p7 = document.createElement("p");
    let alt = document.querySelector("img").alt;
    response.append(p7);
    p7.innerHTML = `response 7: ${alt}`;
}
document.addEventListener('DOMContentLoaded', main);