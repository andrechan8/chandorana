program TIK_Team3; // Nama Program
uses crt, math; // Penggunaan Library
var 
  LP, V, LS, LA, P, L, T, R, S: Real; // Variabel, LP(Luas Permukaan), V(Volume), LS(Luas Selimut), LA(Luas Alas), P(Panjang)
  T3, a, b: Char; // Variabel                         L(Lebar), T(Tinggi), R(Jari"), S(Garis Pelukis)
const 
  pi = 3.14159265359; // Konstanta yang digunakan

//===================================================================================//

procedure Kubus; // Prosedur 1 untuk mencari Luas permukaan dan volume Kubus
begin
  textcolor(lightmagenta);
  writeln('     ANDA MEMILIH KUBUS');
  write('     Masukkan Sisi = '); readln(S);
  writeln('      _____________');
  writeln('     |\            \');
  writeln('     | \            \');
  writeln('     |  \            \');
  writeln('     |   \____________\');
  writeln('     |   |            |');
  writeln('     |   |            |');
  writeln('      \  |            |',S:1:0);
  writeln('       \ |            |');
  writeln('        \|____________|');
  LP := 6 * (S * S);  // Rumus luas permukaan
  V := S * S * S; // Rumus volume
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     Rumusnya yaitu : ');
  writeln('     LP = 6 * S^2');
  writeln('     V = S^3');
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     > Luas Permukaan Kubusnya yaitu = ', LP:2:1);
  writeln('     > Volume Kubusnya yaitu = ', V:2:1);
end;

//===================================================================================//

procedure Balok; // Prosedur 2 untuk mencari Luas permukaan dan volume balok
begin
  textcolor(lightmagenta);
  writeln('     ANDA MEMILIH BALOK');
  write('     Masukkan Panjang = '); readln(P);
  write('     Masukkan Lebar = '); readln(L);
  write('     Masukkan Tinggi = '); readln(T);
  writeln('      ______________________');
  writeln('     |\                     \');
  writeln('     | \',L:1:0,'                   \');
  writeln('     |  \                     \');
  writeln('     |   \_________',P:1:0,'___________\');
  writeln('     |   |                     |');
  writeln('     |   |                     |');
  writeln('      \  |',T:1:0,'                    |');
  writeln('       \ |                     |');
  writeln('        \|_____________________|');
  LP := 2 * ((P * L) + (P * T) + (L * T)); // Rumus luas permukaan
  V := P * L * T; // Rumus volume
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     Rumusnya yaitu = ');
  writeln('     LP = 2 * (PL + PT + TL)');
  writeln('     V = P * L * T');
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     > Luas Permukaan Baloknya yaitu = ', LP:2:1);
  writeln('     > Volume Baloknya yaitu = ', V:2:1);
end;

//===================================================================================//

procedure Bola; // Prosedur 3 untuk mencari luas permukaan dan volume bola
begin
  textcolor(lightmagenta);
  writeln('     ANDA MEMILIH BOLA');
  write('     Masukkan Jari - Jari = '); readln(R);
  writeln('          ______________');
  writeln('         /       |      \');
  writeln('        /        |       \');
  writeln('       /         |        \');
  writeln('      |          |         |');
  writeln('     (___________|____',R:1:0,'_____)');
  writeln('      |          |         |  ');
  writeln('       \         |        / ');
  writeln('        \        |       /');
  writeln('         \_______|______/');
  writeln('        ((ANGGAP AJA BOLA)) ');
  LP := 4 * pi * R * R; // Rumus luas permukaan
  V := (4 * pi * R * R * R) / 3; // Rumus volume
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     Rumusnya yaitu = ');
  writeln('     LP = 4πr^2');
  writeln('     V = 4πr^3');
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     > Luas Permukaan Bolanya yaitu = ', LP:5:5);
  writeln('     > Volume Bolanya yaitu = ', V:5:5);
end;

//===================================================================================//

procedure Tabung; // Prosedur 4 untuk mencari luas permukaan dan volume tabung
begin
  textcolor(lightmagenta);
  writeln('     ANDA MEMILIH TABUNG');
  write('     Masukkan Jari - Jari = '); readln(R);
  write('     Masukkan Tinggi = '); readln(T);
  writeln('      _________    ');
  writeln('     (_____',R:1:0,'___)   ');
  writeln('     |         |   ');
  writeln('     |         |   ');
  writeln('     |         |   ');
  writeln('     |         |   ');
  writeln('     |         |',T:1:0);
  writeln('     |         |   ');
  writeln('     |         |   ');
  writeln('     |_________|   ');
  writeln('     (_________)   ');
  LA := pi * R * R; //Rumus Luas alas
  LS := 2 * pi * R * T; //Rumus luas selimut
  LP := LS + (2 * LA); // Rumus luas permukaan
  V := LA * T; // Rumus volume
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     Rumusnya yaitu = ');
  writeln('     LA = πr^2');
  writeln('     LS = 2πrt');
  writeln('     LP = LS + 2LA  atau  2πr(r + t)');
  writeln('     V = LA * t  atau  πr^2t');
  textcolor(brown);
  writeln('     ===========================');
  textcolor(cyan);
  writeln('     > Luas Alas Tabung yaitu = ', LA:5:5);
  writeln('     > Luas Selimut Tabung yaitu = ', LS:5:5);
  writeln('     > Luas Permukaan Tabung yaitu = ', LP:5:5);
  writeln('     > Volume Tabung yaitu = ', V:5:5);
end;

//===================================================================================//

procedure Kerucut; // Prosedur 5 untuk mencari luas permukaan dan volume kerucut
begin
  textcolor(lightmagenta);
  writeln('     KAMU MEMILIH KERUCUT');
  write('     Masukkan Tinggi = '); readln(T);
  write('     Masukkan Jari - Jari = '); readln(R);
  writeln('     Apakah Ada Garis Pelukis?');
  writeln('     Ketik Y untuk Ya');
  writeln('     Ketik G untuk Tidak');
  write('     : '); readln(a);
  writeln('                /|\');
  writeln('               / | \');
  writeln('              /  |  \ ');
  writeln('             /   |   \');
  writeln('            /    |    \');
  writeln(         S:1:0,' /     |     \');
  writeln('          /      |',T:1:0,'     \');
  writeln('         /       |       \ ');
  writeln('        /        |        \');
  writeln('       /         |         \ ');
  writeln('      /__________',R:1:0,'__________\');
  writeln('     (___________|__________)');

  if (a = 'G') or (a = 'g') then
  begin
    S := sqrt((R * R) + (T * T)); //Rumus garis pelukis
    LP := pi * R * R + pi * R * S; // Rumus luas permukaan
    V := (pi * R * R * T) / 3; // Rumus volume
    textcolor(cyan);
    writeln('     Rumusnya yaitu = ');
    writeln('     S = √(r^2 + t^2)');
    writeln('     LP = πr^2 + πrs');
    writeln('     V = (πr^2t)/3');
    textcolor(brown);
    writeln('     ===========================');
    textcolor(cyan);
    writeln('     > Garis Pelukis yaitu = ', S:5:5);
    writeln('     > Luas Permukaan yaitu = ', LP:5:5);
    writeln('     > Volume yaitu = ', V:5:5);
  end
  else if (a = 'Y') or (a = 'y') then
  begin
    write('     Masukkan Garis Pelukis = '); readln(S);
    LP := pi * R * R + pi * R * S; // Rumus luas permukaan
    V := (pi * R * R * T) / 3; // Rumus volume
    textcolor(brown);
    writeln('     ===========================');
    textcolor(cyan);
    writeln('     Rumusnya yaitu = ');
    writeln('     LP = πr^2 + πrs');
    writeln('     V = (πr^2t)/3');
    textcolor(brown);
    writeln('     ===========================');
    textcolor(cyan);
    writeln('     > Luas Permukaan yaitu = ', LP:5:5);
    writeln('     > Volume yaitu = ', V:5:5);
  end
  else
    writeln('     SALAH INPUT');
end;

//===================================================================================//

begin
  clrscr; // Membersihkan Layar
  writeln;
  writeln;
  textcolor(Brown);
  WriteLn('              TUGAS TEAM 3         ');
  WriteLn('     ==============================');
  WriteLn('     |  MENCARI                   |');   // Judul Program PROMAX
  Writeln('     |  VOLUME         KELAS XG   |');
  WriteLn('     |  BANGUN RUANG              |');
  WriteLn('     ==============================');
  textcolor(White);
  WriteLn('     |Anggota - Anggota Kelompok : '); // Nama Nama Anggota Kelompok
  Writeln('     |1. Elvin Renald');
  Writeln('     |2. Christian Melvin Fransisko');
  Writeln('     |3. Sylvanie Victoria Ho');
  Writeln('     |4. Michael Japtharican');
  Writeln('     |5. Bentley Jordan Wijaya');
  writeln;
  textcolor(brown);
  writeln('     ==============================');
  writeln;
  
  repeat
    textcolor(Green);
    writeln('     |PILIHLAH BANGUN RUANG');   // Memasuki Program Utama
    writeln;
    textcolor(lightgreen);
    writeln('     |Pilih 1 untuk Kubus');
    writeln('     |Pilih 2 untuk Balok');
    writeln('     |Pilih 3 untuk Bola');   // Pilihan Bangun Ruang
    writeln('     |Pilih 4 untuk Tabung');
    writeln('     |Pilih 5 untuk Kerucut');
    write('     |Masukkan Pilihan : '); readln(T3);
    textcolor(brown);
    writeln('     ==============================');
  
    case T3 of 
      '1': Kubus;
      '2': Balok;
      '3': Bola;
      '4': Tabung;
      '5': Kerucut;
    else
      begin
       repeat
        begin
        textcolor(red);
        writeln('     SALAH INPUT PILIHAN');
        textcolor(lightgreen);
        write('     Masukan Pilihan Lain : ');readln(T3);
        textcolor(brown);
        writeln('     ==============================');
        end
       until (T3 = '1') or (T3 = '2') or (T3 = '3') or (T3 = '4') or (T3 = '5');
        case T3 of 
          '1': Kubus;
          '2': Balok;
          '3': Bola;
          '4': Tabung;
          '5': Kerucut;
        end
      end
    end;
    writeln('     Ketik Y untuk Keluar');
    writeln('     Ketik Apapun untuk Lanjut');
    write('     ');readln(b);
    until (b = 'Y') or (b = 'y');
end.
