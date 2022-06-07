'use strict';

function main() {
    let btnCreate = document.querySelector("#btn_create");
    let x = 0;
    let type;
    btnCreate = crear;

    function crear() {
        randomInput();
        let number = document.querySelector("#number").value;
        x = Math.random() * (4 - 1) + 1;
        x = parseInt(x, 10);
        console.log(type);
        for (let i = 0; i < number; i++) {
            let input = document.createElement("input");
            input.setAttribute("type", type);
            let p = document.createElement("p");
            btnCreate.after(p);
            p.append(input);
            let random = Math.random() * (11 - 1) + 1;
            random = parseInt(random, 10);
            input.after(random);
        }
    }

    function randomInput() {
        switch (x) {
            case 1: 
                type = "radio";
                break;
            case 2:
                type = "checkbox";
                break;
            case 3:
                type = "text";
                break;
        }
    }
}

document.addEventListener('DOMContentLoaded', main);