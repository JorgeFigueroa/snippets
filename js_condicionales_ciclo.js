// ####  CONDICIONALES  IF
var numero1 = 34, numero2 = '30';

(true) //true
(numero2) // true, xke  variable numero2 esta definida
(!(numero1 < numero2)) // TRUE XKE numero1 NO ES menor que numero 2
(numero1 && true) // true
(numero1 || false) //true
(numero1 !== numero2) // true  xke los nuemros son diferentes

if (false) {
} else if (false) {
} else {
  // ejecuta else xke los son falsos if(false)
}

//boleanos -> true / false
/* operadores logicos
> mayor que
< menor que
|| OR
&& AND
== === igual
!= !== diferente
!  no
*/


// ####  CICLO WHILE
var contador = 0;
while (contador < 10) {
  contador++;
  document.querySelector('body').innerHTML += contador + ' < 10<br>';
}

// multiplo de 2
var multiplo = 0;
while (multiplo < 10) {
  multiplo++;
  if (multiplo % 2 == 0) {
    // imprime solo multiplo 2
  }
}

//ejemplo de ciclo con con continue
var salta = 0;
while (salta < 10) {
  salta++;
  if (salta % 2 == 0) {
    continue;// salta while() cuando se cumple el if 
  }
  // imprime el while 
}

// ejemplo de ciclo do while y break
var contador = 0;
do {
  contador++
  // entra una vez imprime contador
  if (contador >= 10)
    break; // rompe el ciclo termina el ciclo
} while (true);