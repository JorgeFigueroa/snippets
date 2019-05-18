$('#element').hide()  //esconde
$('#element').show()  //muestra
$('#element').toggle()  //muestra nascondi
$('#element').addClass('newclas')  //agrega clase
removeClass('class');
text()  // actualiZa texto al interior

$('<input>').insertAfter('#element')  //fuera  despues
$('<input>').insertBefore('#element') //fuera antes
$('<input>').prependTo('#element') // dentro al inizio
$('<input>').appendTo('#element')  // dentro ala fine

$('#element').remove();
$('#element tr').remove(':contains("Singer")');
$('p').html('<strong>Warning!</strong> Text has been replaced … ');
$('h2').text('<strong>Warning!</strong> Title elements can be …');


$(document).ready(function () {
    if (jQuery) alert("jQuery is loaded");
});


// ##### AJAX
$('div:first').load('test.html');

$.getJSON('file.json', function (data) {
    alert('Fetched ' + data.length + ' items!');
});

$.ajax({
    type: 'GET',
    url: 'getDetails.php',
    error: function () { alert('error'); },
    data: { id: 142 },
    success: function (data) { }
});


$(document).ready(function () {
    $('a').click(muestrame);
    function muestrame() {
        var pagina = $(this).attr('href');
        var x = $('#hablame');
        x.load(pagina);
        return false;
    }

    $('#enviar').click(calcular);
    function calcular() {
        var x = $('#numero').attr("value");
        $.post("05_calculadora.php", { numero: x }, recibir);
        return false;
    }
    function recibir(datos) {
        $('#resultado').text(datos);
    }
});


var xhr;
if (window.XMLHttpRequest) // IE7+, Firefox, Chrome, Opera, Safari
    xhr = new XMLHttpRequest();
else 
    xhr = new ActiveXObject("Microsoft.XMLHTTP");// IE6, IE5

xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) 
        document.getElementById("myDiv").innerHTML = xhr.responseText;
    
    xhr.open("GET", "http: example.com / recurso", true);
    xhr.send();
}
