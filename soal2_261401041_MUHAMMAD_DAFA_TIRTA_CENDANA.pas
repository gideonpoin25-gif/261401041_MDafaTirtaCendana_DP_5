program soal2_261401041_MUHAMMAD_DAFA_TIRTA_CENDANA;
uses crt;

const
  KATA_SANDI_RAHASIA = 'pascal123'; { Kata sandi internal }

var
  inputSandi: string;
  percobaan: integer;
  berhasil: boolean;

begin
  clrscr;
  writeln('=== SISTEM VERIFIKASI KATA SANDI ===');
  
  percobaan := 0;
  berhasil := false;

  { Perulangan repeat-until untuk verifikasi }
  repeat
    percobaan := percobaan + 1;
    write('Masukkan Kata Sandi (Percobaan ', percobaan, '/3): ');
    readln(inputSandi);

    { Cek kebenaran kata sandi }
    if inputSandi = KATA_SANDI_RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break; { Keluar dari loop jika berhasil }
    end
    else
    begin
      if percobaan < 3 then
        writeln('Kata sandi salah. Silakan coba lagi.');
    end;
  until percobaan >= 3;

  { Jika gagal setelah 3 kali }
  if not berhasil then
  begin
    writeln('Akses Ditolak! Akun Terkunci.');
  end;

  readln;
end.