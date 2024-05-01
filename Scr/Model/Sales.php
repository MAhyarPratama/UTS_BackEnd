<?php
class Sales {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    // Mengambil semua baris data
    public function getAllSales() {
        $query = "SELECT * FROM sales";
        $result = $this->db->query($query);
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }

    // Mengambil satu baris data berdasarkan nomor ID
    public function getSalesById($id) {
        $query = "SELECT * FROM sales WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Menginputkan satu baris data
    public function insertSales($data) {
        $query = "INSERT INTO sales (product_id, quantity, sale_date) VALUES (?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['product_id'], $data['quantity'], $data['sale_date']]);
        return $this->db->lastInsertId();
    }

    // Memperbarui satu baris data berdasarkan nomor ID
    public function updateSales($id, $data) {
        $query = "UPDATE sales SET product_id = ?, quantity = ?, sale_date = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['product_id'], $data['quantity'], $data['sale_date'], $id]);
        return $stmt->rowCount();
    }

    // Menghapus satu baris data berdasarkan nomor ID
    public function deleteSales($id) {
        $query = "DELETE FROM sales WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->rowCount();
    }
}
?>
