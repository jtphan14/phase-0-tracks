##Plan to Jquery

*1. Go through CodeAcademy!
*2. Test code through CodeAcademy tests.

##CODEACADEMY

** Introduction to jQuery**

* DOM: Document Object Model
* jQuery is a library, or a set of helpful add-ons to the Javascript programming language.
* Basic Formatting

```javascript
    $(document).ready(function(){ 
    });
```
* Another Example

```javascript
     $(div).ready(.slideDown('slow')){
});
```

Code to change id or class
```
$(document).ready(function() {
    $('button').click(function() {
        $('div').fadeOut('slow');
    });
});
```

Another Example
```
$(document).ready(function() {
    $('.pull-me').click(function() {
        $('.panel').slideToggle('slow')
    });
});
```