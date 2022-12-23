program pendaftaran_sekolah; 
uses crt;
{Penggunaan record} 
type siswa=record 
    nopeserta:string[5]; 
    nama:string[15]; 
    skd :array[1..4,1..5] of integer;//skd berupa array 

end; 
{Penggunaan array}
type daftar=array[1..20] of siswa; 
var daf:daftar; 
{Penggunaan Function}
function huruf(kelas:integer):char; 
    begin 
        case kelas of 
            0:huruf:='E'; 
            1:huruf:='D'; 
            2:huruf:='C'; 
            3:huruf:='B'; 
            4:huruf:='A'; 
        end; 
    end;
function kelas(skd:integer):integer;
    begin
        if skd<40 then kelas:=0
        else
            if (skd>=40) and (skd<55) then kelas:=1
            else
                if (skd>=55) and (skd<65) then kelas:=2
                else
                    if (skd>=65) and (skd<76) then kelas:=3
                        else
                        kelas:=4;
                        end; 
{Penggunaan prosedur}
procedure nt(n:integer;daf:daftar); 
    var i,j:integer; 
        nilai:real; 
    begin 
        for i:=1 to n do//perulangan sebanyak n 
        begin 
            Writeln('No.Peserta : ',daf[i].nopeserta); 
            Writeln('Nama : ',daf[i].nama); 
            writeln; 
            writeln('Mapel Nilai Class');  
            for j:=1 to 3 do 
            begin 
                if (j=1) then begin
                    writeln('SKD','   ',daf[i].skd[3,j],'     ',huruf(daf[i].skd[4,j])); 
                end
                else if (j=2) then begin
                    writeln('TIU','   ',daf[i].skd[3,j],'     ',huruf(daf[i].skd[4,j])); 
                end
                else begin
                    writeln('TKP','   ',daf[i].skd[3,j],'     ',huruf(daf[i].skd[4,j])); 
            end; 
        end; 
            nilai:=(daf[i].skd[3,1]+daf[i].skd[3,2]+daf[i].skd[3,3]);
            writeln; 
            writeln('Nilai Total = ',nilai:0:2); 
            readkey; 
        end; 
        end;
procedure masukdata(var daf:daftar;var n:integer);
    var i,j:integer; 
        begin
        write('Banyak Pendaftar = ');readln(n); 
            for i:=1 to n do 
                begin 
                    write('No.Peserta : ');readln(daf[i].nopeserta); 
                    write('Nama : ');readln(daf[i].nama); 
                    writeln; 
                    writeln('Nilai');
                    for j:=1 to 3 do 
                        begin
                            if (j=1 )then begin
                            write('SKD : ');readln(daf[i].skd[3,j]);
                            daf[i].skd[4,j]:=kelas(daf[i].skd[3,j]);
                            end
                            else if (j=2) then begin
                            write('TIU : ');readln(daf[i].skd[3,j]);
                            daf[i].skd[4,j]:=kelas(daf[i].skd[3,j]);
                            end
                            else begin
                            write('SKD : ');readln(daf[i].skd[3,j]);
                            daf[i].skd[4,j]:=kelas(daf[i].skd[3,j]);
                            end;
                        end; 
                    end; 
                end; 
               
var 
    n:integer;
    user,pass,u,p:string;
    x,i:integer;
    a:char;
    label 1,2,3;
{main} 
begin
1://peloncatan dengan menggunakan label
     clrscr;
     user:= 'admin';
     pass:= '123';
     x:=0;
     for i:=1 to 3 do
     begin
          writeln('Please login with your account');
          writeln('==============================');
          writeln;
          write('Username : ');readln(u);
          write('Password : ');readln(p);
          if user=u then
          begin
               if p=pass then
               begin
                    x:= 1;
                    break;
               end;
          end;
          clrscr;
          writeln('Username or password didnt match');
          writeln;
        end;
     clrscr;
    if (x=1) then begin
        writeln('Welcome back, ',user,'!');
        writeln; 
        masukdata(daf,n); 
        readkey; 
        nt(n,daf); 
        readln;
    end
    else if (x=0) then
        writeln('Sorry, your account has been blocked now');    
2:
    writeln('Apakah  Anda Ingin mengulang Program kembali [y/n]  ?');
    readln(a);
    if a='y'then goto 1
    else if a='n'  then goto 3;
3:
end.