program soal10_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  noHari: integer;
  namaHari: string;

begin
  clrscr;
  writeln('=== PROGRAM MENAMPILKAN NAMA HARI ===');
  write('Masukkan Nomor Hari (1-7): ');
  readln(noHari);

  case noHari of
    1: namaHari := 'Senin';
    2: namaHari := 'Selasa';
    3: namaHari := 'Rabu';
    4: namaHari := 'Kamis';
    5: namaHari := 'Jumat';
    6: namaHari := 'Sabtu';
    7: namaHari := 'Minggu';
    else namaHari := 'Input Tidak Valid! Harus angka 1-7.';
  end;

  writeln;
  if (noHari >= 1) and (noHari <= 7) then
    writeln('Output: Hari ', namaHari)
  else
    writeln('Output: ', namaHari);
  readln;
end.