'use strict';

function main() {
    let x = 0;
    let btn = document.querySelector("#btn_operate");
    let inputFirstNumber = document.querySelector("#number_1");
    let inputSecondNumber = document.querySelector("#number_2");

    let op = document.querySelector("#result");
    document.body.append(op);

    function sum() {
        let firstNumber = Number(inputFirstNumber.value);
        let secondNumber = Number(inputSecondNumber.value);

        let listItem = document.createElement("p");
        listItem.innerHTML = `${firstNumber} + ${secondNumber} = ${firstNumber + secondNumber}`;
        op.append(listItem);
    }

    function pro() {
        let firstNumber = Number(inputFirstNumber.value);
        let secondNumber = Number(inputSecondNumber.value);

        let listItem = document.createElement("p");
        listItem.innerHTML = `${firstNumber} % ${secondNumber} = ${firstNumber % secondNumber}`;
        op.append(listItem);
    }

    function div() {
        let firstNumber = Number(inputFirstNumber.value);
        let secondNumber = Number(inputSecondNumber.value);

        let listItem = document.createElement("p");
        listItem.innerHTML = `${firstNumber} / ${secondNumber} = ${firstNumber / secondNumber}`;
        op.append(listItem);
    }

    function operate() {
        if (document.querySelector("#type_1").checked) {
            sum();
        }
        else if (document.querySelector("#type_2").checked) {
            pro();
        }
        else if (document.querySelector("#type_3").checked) {
            div();
        }
    }

    btn.addEventListener('click', operate);
}

document.addEventListener('DOMContentLoaded', main);