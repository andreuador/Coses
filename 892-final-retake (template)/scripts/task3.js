'use strict';

function main() {
    let btnCreate = document.querySelector("#btn_create");
    let ul = document.querySelector("ul");
    btnCreate.onclick = create;

    function create() {
        let task = document.querySelector('#task').value;
        let phone = document.querySelector("#phone").value;
        let op = document.querySelector("option").text;
        let li = document.createElement("li");
        ul.append(li);
        li.innerHTML = `${task}, +${phone}, (${op})`;
        localStorage.setItem('name', phone, li);
        //localStorage.getItem('name', phone);
        console.log(task);
        console.log(phone);
        console.log(op);
    }
}

document.addEventListener('DOMContentLoaded', main);