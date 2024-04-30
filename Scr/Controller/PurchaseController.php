<?php
require_once 'Model/Purchase.php';

class PurchasesController {
    private $purchaseModel;

    public function __construct() {
        $this->purchaseModel = new Purchase();
    }

    public function handleRequest() {
        $requestMethod = $_SERVER['REQUEST_METHOD'];
        switch ($requestMethod) {
            case 'GET':
                if (!empty($_GET['id'])) {
                    $this->getPurchase($_GET['id']);
                } else {
                    $this->getAllPurchases();
                }
                break;
            case 'POST':
                $this->createPurchase($_POST);
                break;
            case 'PUT':
                parse_str(file_get_contents("php://input"), $put_vars);
                $this->updatePurchase($put_vars['id'], $put_vars);
                break;
            case 'DELETE':
                parse_str(file_get_contents("php://input"), $delete_vars);
                $this->deletePurchase($delete_vars['id']);
                break;
            default:
                header("HTTP/1.1 405 Method Not Allowed");
                break;
        }
    }

    private function getAllPurchases() {
        $purchases = $this->purchaseModel->getAllPurchases();
        header("Content-Type: application/json");
        echo json_encode($purchases);
    }

    private function getPurchase($id) {
        $purchase = $this->purchaseModel->getPurchaseById($id);
        header("Content-Type: application/json");
        echo json_encode($purchase);
    }

    private function createPurchase($data) {
        $newId = $this->purchaseModel->createPurchase($data);
        header("Content-Type: application/json");
        echo json_encode(['id' => $newId]);
    }

    private function updatePurchase($id, $data) {
        $result = $this->purchaseModel->updatePurchase($id, $data);
        header("Content-Type: application/json");
        echo json_encode(['updated' => $result]);
    }

    private function deletePurchase($id) {
        $result = $this->purchaseModel->deletePurchase($id);
        header("Content-Type: application/json");
        echo json_encode(['deleted' => $result]);
    }
}
?>
