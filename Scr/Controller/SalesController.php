<?php
require_once 'Model/Sale.php';

class SalesController {
    private $salesModel;

    public function __construct() {
        $this->salesModel = new Sales();
    }

    public function handleRequest() {
        $requestMethod = $_SERVER['REQUEST_METHOD'];
        switch ($requestMethod) {
            case 'GET':
                if (!empty($_GET['id'])) {
                    $this->getSale($_GET['id']);
                } else {
                    $this->getAllSales();
                }
                break;
            case 'POST':
                $this->createSale($_POST);
                break;
            case 'PUT':
                parse_str(file_get_contents("php://input"), $put_vars);
                $this->updateSale($put_vars['id'], $put_vars);
                break;
            case 'DELETE':
                parse_str(file_get_contents("php://input"), $delete_vars);
                $this->deleteSale($delete_vars['id']);
                break;
            default:
                header("HTTP/1.1 405 Method Not Allowed");
                break;
        }
    }

    private function getAllSales() {
        $sales = $this->saleModel->getAllSales();
        header("Content-Type: application/json");
        echo json_encode($sales);
    }

    private function getSales($id) {
        $sale = $this->saleModel->getSaleById($id);
        header("Content-Type: application/json");
        echo json_encode($sale);
    }

    private function createSales($data) {
        $newId = $this->saleModel->createSale($data);
        header("Content-Type: application/json");
        echo json_encode(['id' => $newId]);
    }

    private function updateSales($id, $data) {
        $result = $this->saleModel->updateSale($id, $data);
        header("Content-Type: application/json");
        echo json_encode(['updated' => $result]);
    }

    private function deleteSales($id) {
        $result = $this->saleModel->deleteSale($id);
        header("Content-Type: application/json");
        echo json_encode(['deleted' => $result]);
    }
}
?>