// document.getElementById("myBtn").addEventListener("click", function() {
//     alert("Hello World!");
// });

// document.getElementById("demo").onmouseover = function() {mouseOver()};
// document.getElementById("demo").onmouseout = function() {mouseOut()};

// function mouseOver() {
//   document.getElementById("demo").style.color = "red";
// }

// function mouseOut() {
//   document.getElementById("demo").style.color = "black";
// }

// document.getElementById("q").onmouseover = function() {mouseOver()};
// document.getElementById("q").onmouseout = function() {mouseOut()};

// function mouseOver() {
//   document.getElementById("q").style.backgroundColor = "red";
// }

// function mouseOut() {
//   document.getElementById("q").style.backgroundColor = "grey";
// }


// document.getElementById("btn").addEventListener("click", displayDate);

// function displayDate() {
//   document.getElementById("demo").innerHTML = Date();
// }


const loginForm = document.getElementById("login-form");
const loginButton = document.getElementById("login-form-submit");
const loginErrorMsg = document.getElementById("login-error-msg");

loginButton.addEventListener("click", (e) => {
    e.preventDefault();
    const username = loginForm.username.value;
    const password = loginForm.password.value;

    if (username === "user" && password === "web_dev") {
        alert("You have successfully logged in.");
        location.reload();
    } else {
        loginErrorMsg.style.opacity = 1;
    }
})