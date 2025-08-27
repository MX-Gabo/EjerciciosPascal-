program TableroAjedrez;
uses Crt;

const
    letras: array[1..8] of string = ('A ','B ','C ','D ','E ','F ','G ','H ');

var
  tablero: array[1..8, 1..8] of string;
  i, j: integer;
begin
  { llenar matriz }
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      if (i + j) mod 2 = 0 then
        tablero[i, j] := '[]'   { Casilla negra }
      else
        tablero[i, j] := '  ';  { Casilla blanca }
    end;
  end;

  { Imprimir letras de columnas }
  write(' ');  { margen izquierdo }
  for j := 1 to 8 do
    write( letras[j]);
  writeln;

  { Imprimir filas con numeros }
  for i := 1 to 8 do
  begin
    write(9 - i, ' '); { Numeros de fila 8 a 1 en el margen izquierdo }
    for j := 1 to 8 do
      write(tablero[i, j]);
    writeln(' ', 9 - i); { Numeros de fila al lado derecho }
  end;

  { Imprimir letras de columnas al final }
  write('   ');
  for j := 1 to 8 do
    write(' ', letras[j], ' ');
  writeln;

  readln;
end.
