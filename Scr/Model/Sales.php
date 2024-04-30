<?php
class Sales {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAllSales() {
        $stmt = $this->db->prepare("SELECT * FROM sales");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getSalesById($id) {
        $stmt = $this->db->prepare("SELECT * FROM sales WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function createSales($data) {
        $stmt = $this->db->prepare("INSERT INTO sales (product_id, quantity, sale_date) VALUES (:product_id, :quantity, :sale_date)");
        $stmt->bindParam(':product_id', $data['product_id']);
        $stmt->bindParam(':quantity', $data['quantity']);
        $stmt->bindParam(':sale_date', $data['sale_date']);
        $stmt->execute();
        return $this->db->lastInsertId();
    }

    public function updateSales($id, $data) {
        $stmt = $this->db->prepare("UPDATE sales SET product_id = :product_id, quantity = :quantity, sale_date = :sale_date WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->bindParam(':product_id', $data['product_id']);
        $stmt->bindParam(':quantity', $data['quantity']);
        $stmt->bindParam(':sale_date', $data['sale_date']);
        $stmt->execute();
        return $stmt->rowCount();
    }

    public function deleteSales($id) {
        $stmt = $this->db->prepare("DELETE FROM sales WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->rowCount();
    }
}
?>
