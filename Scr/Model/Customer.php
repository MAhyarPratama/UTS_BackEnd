<?php
class Customer {
    private $db;

    public function __construct($dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAllCustomers() {
        $stmt = $this->db->prepare("SELECT * FROM customers");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCustomerById($id) {
        $stmt = $this->db->prepare("SELECT * FROM customers WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function createCustomer($data) {
        $stmt = $this->db->prepare("INSERT INTO customers (name, email, address) VALUES (:name, :email, :address)");
        $stmt->bindParam(':name', $data['name']);
        $stmt->bindParam(':email', $data['email']);
        $stmt->bindParam(':address', $data['address']);
        $stmt->execute();
        return $this->db->lastInsertId();
    }

    public function updateCustomer($id, $data) {
        $stmt = $this->db->prepare("UPDATE customers SET name = :name, email = :email, address = :address WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->bindParam(':name', $data['name']);
        $stmt->bindParam(':email', $data['email']);
        $stmt->bindParam(':address', $data['address']);
        $stmt->execute();
        return $stmt->rowCount();
    }

    public function deleteCustomer($id) {
        $stmt = $this->db->prepare("DELETE FROM customers WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->rowCount();
    }
}
?>