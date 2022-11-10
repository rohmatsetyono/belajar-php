-- buat database fakultas
CREATE DATABASE fakultas;

-- buat database jurusan
CREATE TABLE jurusan(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- buat database mahasiswa
CREATE TABLE mahasiswa(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(225) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan
insert into jurusan (kode, nama) values ("PTIF", "Pendidikan Teknik Informatika");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) values (1, "20220001", "Mahmud", "laki-laki", "Jakarta", "2002-02-18", "Jl.jalanin aja 8");

-- delete
delete from mahasiswa where id = 2;

-- update mahasiswa
update mahasiswa set nim = "20220002" where id = 2;