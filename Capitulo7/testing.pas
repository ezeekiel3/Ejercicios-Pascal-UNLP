program arrayxd;
type
    testArr = array[1..5] of integer;
var
    numeros: testArr;
    i: integer;
begin
    for i:= 1 to 5 do
        writeln(numeros[i])
end.