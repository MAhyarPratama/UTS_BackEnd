<?php
require_once __DIR__ . '/../Model/Sales.php';

class SalesController {
    private $salesModel;

    public function __construct($pdo) {
        $this->salesModel = new Sales($pdo);
    }

    
    public function getAllSales() {
        try {
            return $this->salesModel->getAllSales();
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    
    public function getSalesById($orderId) {
        try {
            return $this->salesModel->getSalesById($orderId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    
    public function addSales($data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->salesModel->insertSales($data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    
    public function updateSales($orderId, $data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->salesModel->updateSales($orderId, $data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    
    public function deleteSales($orderId) {
        try {
            return $this->salesModel->deleteSales($orderId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }
}
?>
