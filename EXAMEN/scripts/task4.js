'use strict';

function main() {
    let btnCreate = document.querySelector("#btn_create");
    let ul = document.querySelector("ul");
    btnCreate.onclick = create;

    function create() {
        let task = document.querySelector("#task").value;
        let op = document.querySelector("option").value;
        let li = document.createElement("li");
        ul.append(li);
        li.innerHTML = `${task} (priority: ${op})`;
        localStorage.setItem('task', li);
    }
}

document.addEventListener('DOMContentLoaded', main);