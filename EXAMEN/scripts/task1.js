'use strict';

function main() {
    let btnArea = document.querySelector("#btn_calculate");
    let btnAdd = document.querySelector("#btn_add");
    btnArea.onclick = area;
    btnAdd.onclick = add;

    function area() {
        let vRadi = document.querySelector("#radius").value;
        let vArea = Math.PI * Math.pow(vRadi, 2);
        console.log(area);
        let p = document.createElement("p");
        let div = document.querySelector("#area");
        div.before(p);
        p.innerHTML = `Area: ${vArea}`;
    }

    function add() {
        let vAdd = document.querySelector(".form-control").value;
        let p = document.createElement("p");
        let div = document.querySelector("#paragrafs");
        div.append(p);
        p.innerHTML = vAdd;
    }
}

document.addEventListener('DOMContentLoaded', main);