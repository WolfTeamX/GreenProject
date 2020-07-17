let numbers = new RegExp('^[0-9]+$');

document.addEventListener("turbolinks:load", function () {
    var form = document.forms["contact-form"];

    if (form) {

        var elements = form.elements;
        console.log(elements);


        Array.from(elements).forEach(function (elem) {
            elem.addEventListener("focus", function () {
                if (elem.classList.contains("invalid-input")) {
                    elem.classList.remove("invalid-input");
                }
                elem.parentNode.setAttribute('data-before', '');
                elem.parentNode.classList.remove("show");
            });
        });

        console.log("Got form! Adding validation...");
        form.addEventListener("submit", function (event) {
            console.log("validated! :o");
            if (validateForm(form)) {
                console.log("form is valid!")
            } else {
                console.log("form is invalid! :<")
            }

            event.preventDefault();
        })
    }
});

function validateForm(form) {
    var email = form["email"];
    var content = form["content"];
    var phone = form["phone"];

    if (email.value === "" || !email.value.includes("@") || content.value === "" || (!numbers.test(phone.value) && phone.value !== "")) {
        showErrors(form, email.value === "", !email.value.includes("@"), content.value === "", (!numbers.test(phone.value) && phone.value !== ""));
        return false;
    }

    return true;
}

function showErrors(form, emailEmpty, emailWrong, content, phone) {
    if (emailEmpty) {
        form["email"].classList.add("invalid-input");
        form["email"].parentNode.setAttribute('data-before', 'To pole nie może być puste.');
        form["email"].parentNode.classList.add("show");
        console.log(form["email"].parentNode.classList);
    }

    if(emailWrong && !emailEmpty) {
        form["email"].classList.add("invalid-input");
        form["email"].parentNode.setAttribute('data-before', 'Niepoprawny adres email.');
        form["email"].parentNode.classList.add("show");
    }

    if (content) {
        form["content"].classList.add("invalid-input");
        form["content"].parentNode.setAttribute('data-before', 'Treść nie może być pusta.');
        form["content"].parentNode.classList.add("show");
    }

    if (phone) {
        form["phone"].classList.add("invalid-input");
        form["phone"].parentNode.setAttribute('data-before', 'Niepoprawny numer telefonu.');
        form["phone"].parentNode.classList.add("show");
    }
}