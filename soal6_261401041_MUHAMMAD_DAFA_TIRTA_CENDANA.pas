program soal6_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  tugas, uts, uas, kehadiran, nilaiAkhir: real;
  indeks: char;
  status: string;

begin
  clrscr;
  writeln('=== PROGRAM PENENTUAN NILAI AKHIR MATA KULIAH ===');
  write('Masukkan Nilai Tugas (0-100) : '); readln(tugas);
  write('Masukkan Nilai UTS (0-100)   : '); readln(uts);
  write('Masukkan Nilai UAS (0-100)   : '); readln(uas);
  write('Masukkan Kehadiran (%)       : '); readln(kehadiran);

  { Hitung Nilai Akhir berdasarkan bobot }
  nilaiAkhir := (0.30 * tugas) + (0.30 * uts) + (0.40 * uas);

  { Tentukan Indeks Huruf }
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  { Tentukan Status Kelulusan (Nilai Akhir >= 60 DAN Kehadiran >= 80%) }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  writeln;
  writeln('=== HASIL PENILAIAN ===');
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);
  writeln('Status      : ', status);
  
  readln;
end.