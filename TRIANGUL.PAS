program triangulo;
        uses Crt;
        var
           i,j,n, num : Integer;
           arr: array[1..20,1..20 ] of Integer;
        begin
        clrscr;
        WriteLn(' Ingresa el numero de filas  ');
        readln(n);

        for i :=1 to n do
         begin

            for j :=1 to n-i do
               write(' ');
        num := i ;
        for j := 1 to i do
        begin
          write(num mod 10);
          num := num +1
        end;

        num := num -2 ;
        for j := 1 to i - 1 do
        begin
          write(num mod 10);
          num := num -1;
        end;

        writeln;
      end;
      readln;
    end.
       end.