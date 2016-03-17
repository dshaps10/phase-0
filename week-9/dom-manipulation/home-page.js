// Release 0:
document.getElementById("release-0").className="done";
// Release 1:
document.getElementById("release-1").style.display="none";
// Release 2:
document.getElementsByTagName("h1")[0].innerHTML="I completed release-2.";
// Release 3:
document.getElementById("release-3").style.backgroundColor="#955251";
// Release 4:
var release4 = document.getElementsByClassName('release-4');
 for (var i = 0; i < release4.length; i++) {
    release4[i].style.fontSize='2em';
 };
// Release 5:
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));

// Reflection
/*
Q: What did you learn about the DOM?
A: I learned a lot about you can use JavaScript to manipulate the DOM and how
the HTML can be modified at runtime with the use of JavaScript.  The DOM
works as an API that JavaScript can use to target specific elements and change
them accordingly.  I had never before thought of the DOM as an API, but when
you introduce a scripting language like JavaScript you can see how the DOM
allows JavaScript to interact with the document.

Q: What are some useful methods to use to manipulate the DOM?
A: The style method is a useful method that allows you to change the style of
HTML elements.  You can chain other methods like display and background color
to the style method to change specific features.  Style essentially allows
JavaScript to work like a stylesheet and change the style at runtime. The
className method is a really useful method for changing the class of an HTML
element.  This becomes useful when you have CSS targeting a certain class and
then use JavaScript to change an HTML element to that class, thus applying
that CSS styling at runtime.
*/
