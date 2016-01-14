// U3.W9:JQuery


// I worked on this challenge [with: Donald Lang].
// This challenge took me [1] hour.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
header = $(':header');
mascot = $('.mascot');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('h1:first').css({
  'color': 'gray',
  'border': '0px solid black',
  'visibility': 'visible',
});

$('img').css({
  border: '1px solid blue',
});

$('.mascot h1').html('Squirrels 2016');

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://globe-views.com/dcim/dreams/squirrel/squirrel-04.jpg')
  });
$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  });

//RELEASE 5: Experiment on your own

$('img').animate({
  width: '50%',
  marginLeft: '30%',
  borderWidth: '5px',
}, 3000 );

})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// Reflection
// What is jQuery?

// JQuery is a JavaScript library.

// What does jQuery do for you?

// JQuery makes it easier to use JavaScript on our website by providing build in methods.

// What did you learn about the DOM while working on this challenge?

// The DOM is the "Document Object Model" takes the code we write and executes it.  For this challenge learned how to apply JQuery to the DOM to modify the CSS of different objects.