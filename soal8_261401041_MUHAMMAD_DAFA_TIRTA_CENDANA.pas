program soal8_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, uangLembur, bonus, totalGaji: longint;

begin
  clrscr;
  writeln('=== PROGRAM PERHITUNGAN GAJI KARYAWAN ===');
  write('Masukkan Golongan Karyawan (A/B/C): ');
  readln(golongan);
  golongan := UpCase(golongan);

  write('Masukkan Total Jam Kerja per Minggu: ');
  readln(jamKerja);

  { Tentukan Gaji Pokok }
  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
    else
      begin
        writeln('Golongan tidak valid!');
        readln;
        halt;
      end;
  end;

  { Hitung Jam Lembur & Uang Lembur }
  if jamKerja > 40 then
  begin
    jamLembur := jamKerja - 40;
    uangLembur := jamLembur * 20000;
  end
  else
  begin
    jamLembur := 0;
    uangLembur := 0;
  end;

  { Bonus Tambahan khusus Golongan C jika jam kerja > 50 jam }
  bonus := 0;
  if (golongan = 'C') and (jamKerja > 50) then
  begin
    bonus := 100000;
  end;

  { Hitung Total Gaji Akhir }
  totalGaji := gajiPokok + uangLembur + bonus;

  writeln;
  writeln('=== RINCIAN GAJI KARYAWAN ===');
  writeln('Golongan         : ', golongan);
  writeln('Jam Kerja        : ', jamKerja, ' jam (Lembur: ', jamLembur, ' jam)');
  writeln('Gaji Pokok       : Rp', gajiPokok);
  writeln('Uang Lembur      : Rp', uangLembur);
  writeln('Bonus Tambahan   : Rp', bonus);
  writeln('-----------------------------------');
  writeln('Total Gaji Akhir : Rp', totalGaji);
  
  readln;
end.