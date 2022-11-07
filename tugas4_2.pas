program tampilan_soalnomor2;
uses crt;
var 
  i,j,n:integer;

begin
    clrscr;
write('Masukkan jumlah baris yang ditampilkan : ');readln(n);
writeln;
for i :=1 to n do
    begin
        for j :=1 to i do
        begin
            if (i mod 2 = 1) then
            write(' *')
            else
            write(' ',i);
        end;
        writeln;
    end;
    
readln;
end.