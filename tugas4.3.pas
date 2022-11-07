program tampilan_soalnomor3;
uses crt;
var
  i,j,k,n:integer;

begin
    clrscr;

    write('Masukkan jumlah baris yang ditampilkan : ');readln(n);
    writeln;

for i:=1 to n do
begin
    for k:=(n-1) downto i do
        begin
            write('  ');
        end;
    for j:=1 to i do
        begin
        write('* ');
        end;
    begin
    for j:=(i-1) downto 1 do
        write('* ');
    end;
    writeln(' ');
end;
begin
    for i:=(n-1) downto 1 do
    begin
    for k:=(n-1) downto i do
        begin
        write ('  ');
        end;
    for j:= i downto 1 do
        begin
            write('* ');
        end;
    begin
    for j:=1 to (i-1) do
        write('* ');
    end;
        writeln(' ');
    end;
end;
readln;

end.