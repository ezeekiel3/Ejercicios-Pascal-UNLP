program ejercicio1;
var
  numero1, numero2: integer;

begin
  // Leer los dos números desde el teclado
  write('Introduce el primer número: ');
  readln(numero1);
  
  write('Introduce el segundo número: ');
  readln(numero2);
  
  // Comparar los números y mostrar el resultado
  if numero1 > numero2 then
    writeln('El primer número es mayor que el segundo número.')
  else if numero1 < numero2 then
    writeln('El segundo número es mayor que el primer número.')
  else
    writeln('Los números leídos son iguales.');
  
end.
