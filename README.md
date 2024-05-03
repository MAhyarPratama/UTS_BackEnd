# UTS_BackEnd

  Nama : Muhammad Ahyar Pratama 
  Kelas : UG224
  Mata Kuliah : Back-end Web Development


Di dalam Controller,  setiap fungsi memiliki peran spesifik dalam mengelola data pelanggan melalui model Customer. Berikut adalah penjelasan untuk setiap fungsi:
dan disini menjelaskan tentang CustomerController.php

1. __construct($pdo)
Tujuan: Konstruktor ini digunakan untuk menginisialisasi objek CustomerController.
Parameter: $pdo - Objek PDO yang digunakan untuk koneksi database.
Fungsi: Menginisialisasi customerModel dengan objek Customer, yang membutuhkan objek PDO untuk operasi database.

2. getAllCustomers()
Tujuan: Mengambil semua data pelanggan dari database.
Fungsi: Memanggil metode getAllCustomers() pada model Customer yang mengembalikan semua pelanggan dari database.
Pengelolaan Eror: Jika terjadi kesalahan (misalnya query database gagal), fungsi akan menangkap Exception dan mengembalikan pesan error.

3. getCustomerById($customerId)
Tujuan: Mengambil data pelanggan berdasarkan ID yang diberikan.
Parameter: $customerId - ID pelanggan yang data nya ingin diambil.
Fungsi: Memanggil metode getCustomerById() pada model Customer yang mengembalikan data pelanggan spesifik berdasarkan ID.
Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception.

4. addCustomer($data)
Tujuan: Menambahkan data pelanggan baru ke dalam database.
Parameter: $data - Array data pelanggan yang akan ditambahkan.
Fungsi: Memeriksa apakah data tidak kosong. Jika tidak, memanggil insertCustomer() pada model Customer untuk menambahkan data ke database.
Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception atau jika data yang diberikan kosong.

5. updateCustomer($customerId, $data)
Tujuan: Memperbarui data pelanggan yang ada berdasarkan ID.
Parameter:
$customerId - ID pelanggan yang data nya ingin diperbarui.
$data - Array data baru untuk pelanggan tersebut.
Fungsi: Memeriksa apakah data tidak kosong. Jika tidak, memanggil updateCustomer() pada model Customer untuk memperbarui data pelanggan di database.
Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception atau jika data yang diberikan kosong.

6. deleteCustomer($customerId)
Tujuan: Menghapus data pelanggan dari database berdasarkan ID.
Parameter: $customerId - ID pelanggan yang akan dihapus.
Fungsi: Memanggil deleteCustomer() pada model Customer untuk menghapus data pelanggan dari database.
Pengelolaan Eror: Menangkap dan mengembalikan pesan error jika terjadi Exception.
Setiap fungsi ini dirancang untuk menangani aspek tertentu dari manajemen data pelanggan, memastikan bahwa operasi database dilakukan dengan aman dan efisien, serta mengelola kesalahan yang mungkin terjadi selama proses tersebut.
