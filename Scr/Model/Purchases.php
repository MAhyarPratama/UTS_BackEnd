<?php
class Purchase {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAllPurchases() {
        $stmt = $this->db->prepare("SELECT * FROM purchases");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPurchaseById($id) {
        $stmt = $this->db->prepare("SELECT * FROM purchases WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function createPurchase($data) {
        $stmt = $this->db->prepare("INSERT INTO purchases (product_id, quantity, purchase_date) VALUES (:product_id, :quantity, :purchase_date)");
        $stmt->bindParam(':product_id', $data['product_id']);
        $stmt->bindParam(':quantity', $data['quantity']);
        $stmt->bindParam(':purchase_date', $data['purchase_date']);
        $stmt->execute();
        return $this->db->lastInsertId();
    }

    public function updatePurchase($id, $data) {
        $stmt = $this->db->prepare("UPDATE purchases SET product_id = :product_id, quantity = :quantity, purchase_date = :purchase_date WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->bindParam(':product_id', $data['product_id']);
        $stmt->bindParam(':quantity', $data['quantity']);
        $stmt->bindParam(':purchase_date', $data['purchase_date']);
        $stmt->execute();
        return $stmt->rowCount();
    }

    public function deletePurchase($id) {
        $stmt = $this->db->prepare("DELETE FROM purchases WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->rowCount();
    }
}
?>