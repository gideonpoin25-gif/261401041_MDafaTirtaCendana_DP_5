program soal5_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  m, n, i, j: integer;
  nilai, total, rataRata: real;
  jumlahLulus, jumlahTidakLulus: integer;

begin
  clrscr;
  writeln('=== PROGRAM REKAPITULASI NILAI MAHASISWA ===');
  write('Masukkan jumlah mahasiswa (M): ');
  readln(m);
  write('Masukkan jumlah tugas (N)    : ');
  readln(n);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  { Nested loop untuk input nilai tiap mahasiswa }
  for i := 1 to m do
  begin
    writeln;
    writeln('--- Mahasiswa ke-', i, ' ---');
    total := 0;
    
    for j := 1 to n do
    begin
      write('  Masukkan Nilai Tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;
    
    rataRata := total / n;
    write('  Rata-rata Nilai: ', rataRata:0:2, ' -> Status: ');
    
    if rataRata >= 65 then
    begin
      writeln('LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;
  end;

  { Rekapitulasi total kelulusan }
  writeln;
  writeln('==========================================');
  writeln('REKAPITULASI AKHIR:');
  writeln('Jumlah Mahasiswa LULUS       : ', jumlahLulus);
  writeln('Jumlah Mahasiswa TIDAK LULUS : ', jumlahTidakLulus);
  
  readln;
end.