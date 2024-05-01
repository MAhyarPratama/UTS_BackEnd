<?php
class Purchase {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    // Mengambil semua baris data
    public function getAllPurchases() {
        $query = "SELECT * FROM purchases";
        $result = $this->db->query($query);
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }

    // Mengambil satu baris data berdasarkan nomor ID
    public function getPurchaseById($id) {
        $query = "SELECT * FROM purchases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Menginputkan satu baris data
    public function insertPurchase($data) {
        $query = "INSERT INTO purchases (product_id, quantity, purchase_date) VALUES (?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['product_id'], $data['quantity'], $data['purchase_date']]);
        return $this->db->lastInsertId();
    }

    // Memperbarui satu baris data berdasarkan nomor ID
    public function updatePurchase($id, $data) {
        $query = "UPDATE purchases SET product_id = ?, quantity = ?, purchase_date = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$data['product_id'], $data['quantity'], $data['purchase_date'], $id]);
        return $stmt->rowCount();
    }

    // Menghapus satu baris data berdasarkan nomor ID
    public function deletePurchase($id) {
        $query = "DELETE FROM purchases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->execute([$id]);
        return $stmt->rowCount();
    }
}
?>
