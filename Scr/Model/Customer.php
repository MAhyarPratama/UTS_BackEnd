<?php
class Customer {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    // Mengambil semua baris data
    public function getAllCustomers() {
        $query = "SELECT * FROM customers";
        $result = $this->db->query($query);
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }

    // Mengambil satu baris data berdasarkan nomor ID
    public function getCustomerById($id) {
        $query = "SELECT * FROM customers WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Menginputkan satu baris data
    public function insertCustomer($data) {
        $query = "INSERT INTO customers (name, email, address) VALUES (?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['name'], $data['email'], $data['address']]);
        return $this->db->lastInsertId();
    }

    // Memperbarui satu baris data berdasarkan nomor ID
    public function updateCustomer($id, $data) {
        $query = "UPDATE customers SET name = ?, email = ?, address = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['name'], $data['email'], $data['address'], $id]);
        return $stmt->rowCount();
    }

    // Menghapus satu baris data berdasarkan nomor ID
    public function deleteCustomer($id) {
        $query = "DELETE FROM customers WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->rowCount();
    }
}
?>
