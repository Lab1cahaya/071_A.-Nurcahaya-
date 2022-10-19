program makanann;
uses crt;
var 
menu:integer;
begin
    clrscr;
    writeln('-------------------------------------');
    writeln('        Menu Pisang Pasir Olyn       ');
    writeln('-------------------------------------');
    writeln('1. Choco Original            Rp.18800');
    writeln('2. Tiramissu                 Rp.25500');
    writeln('3. Choco Greentea            Rp.20400');
    writeln('4. Choco Maltine             Rp.28500');
    writeln('5. Choco Capucino            Rp.25500');
    writeln('6. Choco Oreo                Rp.20400');

    write('Masukkan menu yang anda pilih (1..6) : ');readln(menu);
    case (menu) of
    1: writeln ('Menu yang Anda pilih adalah Choco Original dengan harga Rp.18800');
    2: writeln ('Menu yang Anda pilih adalah Tiramissu dengan harga Rp.25500');
    3: writeln ('Menu yang Anda pilih adalah Choco Greentea dengan harga Rp.20400');
    4: writeln ('Menu yang Anda pilih adalah Choco Maltine dengan harga Rp.28500');
    5: writeln ('Menu yang Anda pilih adalah Choco Capucino dengan harga Rp.25500');
    6: writeln ('Menu yang Anda pilih adalah Choco Oreo dengan harga Rp.20400');
    else
    begin
        writeln('Menu tidak tersedia.Mohon maaf!');
    end;
    end;

    readln;
end.