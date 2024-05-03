# UTS_BackEnd
    Nama : Muhammad Ahyar Pratama 
    Kelas : UG224
    Mata Kuliah : Back-end Web Development


Di dalam Controller,  setiap fungsi memiliki peran spesifik dalam mengelola data pelanggan melalui model Customer. Berikut adalah penjelasan untuk setiap fungsi:
dan disini menjelaskan tentang CustomerController.php

# 1. __construct($pdo)
    Tujuan: Konstruktor ini digunakan untuk menginisialisasi objek CustomerController.
    Parameter: $pdo - Objek PDO yang digunakan untuk koneksi database.
    Fungsi: Menginisialisasi customerModel dengan objek Customer, yang membutuhkan objek PDO untuk operasi database.
    
# 2. getAllCustomers()
    Tujuan: Mengambil semua data pelanggan dari database.
    Fungsi: Memanggil metode getAllCustomers() pada model Customer yang mengembalikan semua pelanggan dari database.
    Pengelolaan Eror: Jika terjadi kesalahan (misalnya query database gagal), fungsi akan menangkap Exception dan mengembalikan pesan error.

# 3. getCustomerById($customerId)
    Tujuan: Mengambil data pelanggan berdasarkan ID yang diberikan.
    Parameter: $customerId - ID pelanggan yang data nya ingin diambil.
    Fungsi: Memanggil metode getCustomerById() pada model Customer yang mengembalikan data pelanggan spesifik berdasarkan ID.
    Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception.

# 4. addCustomer($data)
    Tujuan: Menambahkan data pelanggan baru ke dalam database.
    Parameter: $data - Array data pelanggan yang akan ditambahkan.
    Fungsi: Memeriksa apakah data tidak kosong. Jika tidak, memanggil insertCustomer() pada model Customer untuk menambahkan data ke database.
    Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception atau jika data yang diberikan kosong.

# 5. updateCustomer($customerId, $data)
    Tujuan: Memperbarui data pelanggan yang ada berdasarkan ID.
    Parameter:
    $customerId - ID pelanggan yang data nya ingin diperbarui.
    $data - Array data baru untuk pelanggan tersebut.
    Fungsi: Memeriksa apakah data tidak kosong. Jika tidak, memanggil updateCustomer() pada model Customer untuk memperbarui data pelanggan di database.
    Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception atau jika data yang diberikan kosong.

# 6. deleteCustomer($customerId)
    Tujuan: Menghapus data pelanggan dari database berdasarkan ID.
    Parameter: $customerId - ID pelanggan yang akan dihapus.
    Fungsi: Memanggil deleteCustomer() pada model Customer untuk menghapus data pelanggan dari database.
    Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception.
    Setiap fungsi ini dirancang untuk menangani aspek tertentu dari manajemen data pelanggan, memastikan bahwa operasi database dilakukan dengan aman dan efisien, serta mengelola kesalahan yang mungkin terjadi selama proses tersebut.



terdapat beberapa fungsi yang bertujuan untuk mengelola data pelanggan dalam database. Berikut adalah penjelasan untuk setiap fungsi dalam Model, dan saya menggunakan contoh Customer.php:

# 1. __construct($dbConnection)
    Tujuan: Konstruktor ini digunakan untuk menginisialisasi objek Customer.
    Parameter: $dbConnection - Objek koneksi database (PDO) yang digunakan untuk operasi database.
    Fungsi: Menyimpan objek koneksi database ke dalam properti privat $db yang akan digunakan oleh fungsi-fungsi lain dalam kelas ini.

# 2. getAllCustomers()
    Tujuan: Mengambil semua data pelanggan dari database.
    Fungsi: Menjalankan query SQL untuk memilih semua baris dari tabel customers.
    Return: Mengembalikan array asosiatif dari semua pelanggan yang diambil dari database.

# 3. getCustomerById($id)
    Tujuan: Mengambil data pelanggan berdasarkan ID yang diberikan.
    Parameter: $id - ID pelanggan yang data nya ingin diambil.
    Fungsi: Menjalankan query SQL yang disiapkan (prepared statement) untuk memilih pelanggan berdasarkan ID.
    Return: Mengembalikan array asosiatif yang mewakili pelanggan, atau false jika tidak ada yang ditemukan.

# 4. insertCustomer($data)
    Tujuan: Menambahkan data pelanggan baru ke dalam database.
    Parameter: $data - Array asosiatif yang berisi data pelanggan (name, email, address).
    Fungsi: Menjalankan query SQL yang disiapkan untuk memasukkan data baru ke dalam tabel customers.
    Return: Mengembalikan ID dari pelanggan yang baru ditambahkan.

# 5. updateCustomer($id, $data)
    Tujuan: Memperbarui data pelanggan yang ada berdasarkan ID.
    Parameter:
    $id - ID pelanggan yang data nya ingin diperbarui.
    $data - Array asosiatif yang berisi data pelanggan yang diperbarui (name, email, address).
    Fungsi: Menjalankan query SQL yang disiapkan untuk memperbarui data pelanggan di database.
    Return: Mengembalikan jumlah baris yang terpengaruh oleh operasi update.

# 6. deleteCustomer($id)
    Tujuan: Menghapus data pelanggan dari database berdasarkan ID.
    Parameter: $id - ID pelanggan yang akan dihapus.
    Fungsi: Menjalankan query SQL yang disiapkan untuk menghapus pelanggan berdasarkan ID.
    Return: Mengembalikan jumlah baris yang terpengaruh oleh operasi penghapusan.

Setiap fungsi ini dirancang untuk menangani aspek tertentu dari manajemen data pelanggan, memastikan bahwa operasi database dilakukan dengan aman dan efisien.



# Tantangan dan kesulitan yang dihadapi, serta bagaimana cara mengatasinya.

# 1 Masalah Koneksi Basis Data
    Tantangan: Awalnya, ada masalah dalam membuat koneksi stabil ke database yang memengaruhi pengambilan dan Penampilan data.
    Solusi: Menerapkan mekanisme penanganan kesalahan yang kuat dalam pengaturan koneksi database untuk menangkap dan melaporkan kesalahan koneksi. Hal ini dilakukan pada file konfigurasinya.

    <?php
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'db_xyz');
    define('DB_USER', 'ug224');
    define('DB_PASS', 'ug224');

    try {
        $pdo = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } 
    catch (PDOException $e) {
        die("Could not connect to the database " . DB_NAME . ": " . $e->getMessage());
    }


Selain itu, karena ini merupakan tugas PHP sperti ini, saya merasa kurang berpengalaman dan harus membiasakan diri dengan hal baru.

Untuk mengatasi kurangnya pengalaman dalam tugas, saya terus mempelajari dan membiasakan diri.
Saya harap kedepannya lebih terbiasa lagi dalam membuat tuagas maupun project seperti ini, dan bisa makin mengasah skill sampai ketingkat tertinggi :) . 
