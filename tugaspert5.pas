program penjumlahan_matriks2x2;
uses crt;
type
   larik = array[1..10,1..10] of integer;
var 
   matriks1, matriks2, hasil: larik;
   i, j:integer;
begin
   clrscr;
    writeln ('Matriks A');
    for i:= 1 to 2 do
    begin
      for j:= 1 to 2 do
      begin
        write('Input elemen baris[',i,'] kolom[',j,']= ');
            readln(matriks1[i,j]);
      end;
    end;

    writeln ('Matriks B');
    for i:=1 to 2 do
    begin
      for j:=1 to 2 do
      begin
        write('Input elemen baris[',i,'] kolom[',j,']= ');
            readln(matriks2[i,j]);
      end;
    end;

    writeln('Matriks A ');
    for i:=1 to 2 do 
    begin
        for j:= 1 to 2 do
        begin
            write (matriks1[i,j],' ');
        end;
        writeln;
    end;

    writeln('Matriks B ');
    for i:=1 to 2 do 
    begin
        for j:=1 to 2 do
        begin
            write(matriks2[i,j],' ');
        end;
        writeln;
    end;

   {proses penjumlahan}
    for i:=1 to 2 do
    begin
        for j:=1 to 2 do
        begin
            hasil[i,j]:= matriks1[i,j]+matriks2[i,j];
        end;
    end;

    writeln('Hasil penjumlahannya adalah: ');
    for i:=1 to 2 do 
    begin
        for j:=1 to 2 do
        begin
            write(hasil[i,j],' ');
        end;
        writeln;
    end;
    readln;
  
end.