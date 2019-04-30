<?php    

funcion Fibonacci($numero) {
    si ($numero == 0) {
        retornar 0;     
    } sinosi ($numero == 1) {
        retornar 1;     
    } sino {
        retornar (Fibonacci($numero-1) + Fibonacci($numero-2)); 
    }
}
  
$numero = 100; 
para ($contador = 0; $contador < $numero; $contador++){   
    imprimir Fibonacci($contador) . " "; 
}

?>