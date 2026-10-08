program  soal1_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

var
  n, i: integer;
  harga, total: real;
  diskonPersen, besarDiskon, totalBayar: real;

begin
  clrscr;
  writeln('=== PROGRAM TOTAL BELANJA TOKO BUKU ===');
  
  { 1. Minta pengguna memasukkan jumlah barang (N) }
  write('Masukkan jumlah barang (N): ');
  readln(n);
  
  total := 0;
  
  { 2. Gunakan perulangan for-to-do untuk input harga barang }
  for i := 1 to n do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  { 3. Hitung diskon menggunakan kondisi if-else }
  if total < 100000 then
    diskonPersen := 0
  else if total < 500000 then
    diskonPersen := 10
  else
    diskonPersen := 20;

  besarDiskon := total * (diskonPersen / 100);
  totalBayar := total - besarDiskon;

  { 4. Tampilkan rincian belanja }
  writeln;
  writeln('=== RINCIAN BELANJA ===');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon (', diskonPersen:0:0, '%)  : Rp', besarDiskon:0:2);
  writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);
  
  readln;
end.