<?php
require_once 'Model/Customer.php';

class CustomerController {
    private $customerModel;

    public function __construct() {
        $this->customerModel = new Custumer(); 
    }

    public function handleRequest() {
        $requestMethod = $_SERVER['REQUEST_METHOD'];
        switch ($requestMethod) {
            case 'GET':
                if (!empty($_GET['id'])) {
                    $this->getCustomer($_GET['id']);
                } else {
                    $this->getAllCustomers();
                }
                break;
            case 'POST':
                $this->createCustomer($_POST);
                break;
            case 'PUT':
                parse_str(file_get_contents("php://input"), $put_vars);
                $this->updateCustomer($put_vars['id'], $put_vars);
                break;
            case 'DELETE':
                parse_str(file_get_contents("php://input"), $delete_vars);
                $this->deleteCustomer($delete_vars['id']);
                break;
            default:
                header("HTTP/1.1 405 Method Not Allowed");
                break;
        }
    }

    private function getAllCustomers() {
        $customers = $this->customerModel->getAllCustomers();
        header("Content-Type: application/json");
        echo json_encode($customers);
    }

    private function getCustomer($id) {
        $customer = $this->customerModel->getCustomerById($id);
        header("Content-Type: application/json");
        echo json_encode($customer);
    }

    private function createCustomer($data) {
        $newId = $this->customerModel->createCustomer($data);
        header("Content-Type: application/json");
        echo json_encode(['id' => $newId]);
    }

    private function updateCustomer($id, $data) {
        $result = $this->customerModel->updateCustomer($id, $data);
        header("Content-Type: application/json");
        echo json_encode(['updated' => $result]);
    }

    private function deleteCustomer($id) {
        $result = $this->customerModel->deleteCustomer($id);
        header("Content-Type: application/json");
        echo json_encode(['deleted' => $result]);
    }
}
?>
