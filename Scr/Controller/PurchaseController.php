<?php
require_once __DIR__ . '/../Model/Purchases.php';

class PurchaseController {
    private $purchaseModel;

    public function __construct($pdo) {
        $this->purchaseModel = new Purchase($pdo);
    }

    public function getAllPurchases() {
        try {
            return $this->purchaseModel->getAllPurchases();
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function getPurchaseById($purchaseId) {
        try {
            return $this->purchaseModel->getPurchaseById($purchaseId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function addPurchase($data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->purchaseModel->insertPurchase($data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function updatePurchase($purchaseId, $data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->purchaseModel->updatePurchase($purchaseId, $data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function deletePurchase($purchaseId) {
        try {
            return $this->purchaseModel->deletePurchase($purchaseId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }
}
?>
