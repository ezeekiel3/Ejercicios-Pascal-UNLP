program ejercicio1;
var numero1, numero2: integer;
begin
  // Leer los dos números desde el teclado
  write('Introduce el primer numero: ');
  readln(numero1);
  
  write('Introduce el segundo numero: ');
  readln(numero2);
  
  // Comparar los números y mostrar el resultado
  if numero1 > numero2 then
    writeln('El primer numero es mayor que el segundo numero.')
  else if numero1 < numero2 then
    writeln('El segundo numero es mayor que el primer numero.')
  else
    writeln('Los numeros leidos son iguales.');
end.
