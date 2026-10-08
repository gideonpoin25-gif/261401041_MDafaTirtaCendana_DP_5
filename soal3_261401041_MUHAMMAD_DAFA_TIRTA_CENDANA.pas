program soal3_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  pilihan, aInt, bInt: integer;
  aReal, bReal: real;
  ulang: char;

begin
  repeat
    clrscr;
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    case pilihan of
      1: begin
           write('Masukkan angka pertama: '); readln(aReal);
           write('Masukkan angka kedua  : '); readln(bReal);
           writeln('Hasil: ', aReal:0:2, ' + ', bReal:0:2, ' = ', (aReal + bReal):0:2);
         end;
      2: begin
           write('Masukkan angka pertama: '); readln(aReal);
           write('Masukkan angka kedua  : '); readln(bReal);
           writeln('Hasil: ', aReal:0:2, ' - ', bReal:0:2, ' = ', (aReal - bReal):0:2);
         end;
      3: begin
           write('Masukkan angka pertama: '); readln(aReal);
           write('Masukkan angka kedua  : '); readln(bReal);
           writeln('Hasil: ', aReal:0:2, ' * ', bReal:0:2, ' = ', (aReal * bReal):0:2);
         end;
      4: begin
           write('Masukkan angka pertama: '); readln(aReal);
           write('Masukkan angka kedua  : '); readln(bReal);
           if bReal = 0 then
             writeln('Error: Pembagian dengan nol tidak terdefinisi!')
           else
             writeln('Hasil: ', aReal:0:2, ' / ', bReal:0:2, ' = ', (aReal / bReal):0:2);
         end;
      5: begin
           write('Masukkan angka pertama (Bulat): '); readln(aInt);
           write('Masukkan angka kedua (Bulat)  : '); readln(bInt);
           if bInt = 0 then
             writeln('Error: Pembagian dengan nol tidak terdefinisi!')
           else
           begin
             writeln('Hasil DIV (Hasil Bagi Bulat) : ', aInt div bInt);
             writeln('Hasil MOD (Sisa Bagi)        : ', aInt mod bInt);
           end;
         end;
      else
        writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
  until (ulang = 'T') or (ulang = 't');
end.