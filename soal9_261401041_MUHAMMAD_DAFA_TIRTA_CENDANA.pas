program soal9_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  tahun, bulan, jumlahHari: integer;
  isKabisat: boolean;

begin
  clrscr;
  writeln('=== PROGRAM PENENTUAN JUMLAH HARI ===');
  write('Masukkan Tahun: ');
  readln(tahun);
  write('Masukkan Nomor Bulan (1-12): ');
  readln(bulan);

  { Cek Tahun Kabisat }
  if ((tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0))) then
    isKabisat := true
  else
    isKabisat := false;

  { Tentukan Jumlah Hari berdasarkan bulan }
  case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
    4, 6, 9, 11: jumlahHari := 30;
    2: begin
         if isKabisat then
           jumlahHari := 29
         else
           jumlahHari := 28;
       end;
    else
      begin
        writeln('Nomor bulan tidak valid! (Harus 1 - 12)');
        readln;
        halt;
      end;
  end;

  writeln;
  writeln('Tahun    : ', tahun);
  if isKabisat then
    writeln('Status   : Tahun Kabisat')
  else
    writeln('Status   : Bukan Tahun Kabisat');

  writeln('Bulan ke : ', bulan);
  writeln('Jumlah   : ', jumlahHari, ' hari');
  
  readln;
end.