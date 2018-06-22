// Check All Box
$(document).ready(function(){
    $('#selectAllBoxes').click(function(event){
        if(this.checked){
            $('.checkBoxes').each(function(){
                this.checked = true;
            });
        } else {
            $('.checkBoxes').each(function(){
                this.checked = false;
            });  
        }
    });
});

// Loading
// Not Working!!! (Add div_box inside the html <body>)
var div_box = "<div id='load-screen'><div id='loading'></div></div>";
$("body").prepend(div_box);

$('#load-screen').delay(700).fadeOut(600, function (){  
    $(this).remove();
});