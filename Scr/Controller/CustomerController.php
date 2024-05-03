<?php
require_once __DIR__ . '/../Model/Customer.php';

class CustomerController {
    private $customerModel;

    public function __construct($pdo) {
        $this->customerModel = new Customer($pdo);
    }

    public function getAllCustomers() {
        try {
            return $this->customerModel->getAllCustomers();
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function getCustomerById($customerId) {
        try {
            return $this->customerModel->getCustomerById($customerId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function addCustomer($data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->customerModel->insertCustomer($data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function updateCustomer($customerId, $data) {
        if (empty($data)) {
            return ['error' => 'Data cannot be empty'];
        }
        try {
            return $this->customerModel->updateCustomer($customerId, $data);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }

    public function deleteCustomer($customerId) {
        try {
            return $this->customerModel->deleteCustomer($customerId);
        } catch (Exception $e) {
            return ['error' => $e->getMessage()];
        }
    }
}
?>
