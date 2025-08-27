program Volcan;
uses Crt;

var
  i, j, N, espacios: integer;
const
  MAX = 64;   { asteriscos base }

begin
  N := 2;   { cant ini asteriscos }

  while N <= MAX do
  begin
    espacios := (MAX - N) div 2;   { calcular espacios para centrar }
    for i := 0 to espacios do
      write(' ');
    for j := 1 to N do
      write('*');

    writeln;  { salto de linea }

    N := N * 2;
  end;

  readln;
end.

