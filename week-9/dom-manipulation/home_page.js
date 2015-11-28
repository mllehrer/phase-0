// DOM Manipulation Challenge


// I worked on this challenge with Jess Richardson.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').classList.add('done');



// Release 1:
document.getElementById("release-1").style.display = "none";




// Release 2:
document.getElementById("release-3").style.backgroundColor = "#955251";




// Release 3:
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";




// Release 4:
var txt = document.getElementsByClassName('release-4');
for(var i = 0; i < txt.length; i++){
txt[i].style.fontSize = '2em';
}

// Release 5:
var template1 = document.getElementById('tmpl');
document.body.appendChild(template1.content.cloneNode(true));

