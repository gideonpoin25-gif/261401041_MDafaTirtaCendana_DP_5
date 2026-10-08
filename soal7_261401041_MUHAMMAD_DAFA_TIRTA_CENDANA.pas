program soal7_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  kode: char;
  lamaJam: integer;
  totalTarif: longint;
  jenisKendaraan: string;

begin
  clrscr;
  writeln('=== PROGRAM PERHITUNGAN TARIF PARKIR ===');
  writeln('Kode Jenis Kendaraan:');
  writeln('M : Mobil');
  writeln('K : Motor');
  writeln('B : Bus');
  write('Masukkan Kode Kendaraan (M/K/B): ');
  readln(kode);
  kode := UpCase(kode);

  write('Masukkan Lama Parkir (jam): ');
  readln(lamaJam);

  case kode of
    'M': begin
           jenisKendaraan := 'Mobil';
           if lamaJam > 10 then
             totalTarif := 30000 { Tarif Maksimal Flat }
           else if lamaJam > 1 then
             totalTarif := 5000 + (lamaJam - 1) * 3000
           else if lamaJam = 1 then
             totalTarif := 5000
           else
             totalTarif := 0;
         end;
    'K': begin
           jenisKendaraan := 'Motor';
           if lamaJam > 10 then
             totalTarif := 10000 { Tarif Maksimal Flat }
           else if lamaJam > 1 then
             totalTarif := 2000 + (lamaJam - 1) * 1000
           else if lamaJam = 1 then
             totalTarif := 2000
           else
             totalTarif := 0;
         end;
    'B': begin
           jenisKendaraan := 'Bus';
           if lamaJam > 10 then
             totalTarif := 50000 { Tarif Maksimal Flat }
           else if lamaJam > 1 then
             totalTarif := 10000 + (lamaJam - 1) * 5000
           else if lamaJam = 1 then
             totalTarif := 10000
           else
             totalTarif := 0;
         end;
    else
      begin
        writeln('Kode kendaraan tidak valid!');
        readln;
        halt;
      end;
  end;

  writeln;
  writeln('=== RINCIAN TARIF PARKIR ===');
  writeln('Jenis Kendaraan : ', jenisKendaraan);
  writeln('Lama Parkir     : ', lamaJam, ' jam');
  writeln('Total Tarif     : Rp', totalTarif);
  
  readln;
end.