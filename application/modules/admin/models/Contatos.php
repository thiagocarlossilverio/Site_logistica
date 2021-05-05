<?php
class Admin_Model_Contatos extends Zend_Db_Table {
    protected $_name = 'contatos';
    protected $_primary = 'id';
    public $_view;
    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->_view = $viewRenderer->view; // Atribuo os Helper de Visão para  $this->view
    }
    public function GetDados($id) {
        $sql = $this->select()->where("id = ?", $id);
        if ($result = $this->fetchRow($sql)->toArray()) {
            return $result;
        }
    }
    public function insert(array $data) {
        // Verificações INICIAIS Se o $DATA não for um Array saio da função.
        if (!is_array($data)) {
            return false;
        }
        unset($data['id']);
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::insert($data_insert);
    }
    public function Lista() {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("c" => $this->_name))
                ->order('c.id DESC');
        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }
     public function ContatosAtivos() {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array("c" => $this->_name))
                ->order('c.id')
                ->where('visualizado = ?', 0);
        if ($result = $this->fetchAll($sql)->toArray()) {
            return $result;
        } else {
            return FALSE;
        }
    }
    public function delete($where) {
        return parent::delete($where);
    }
}
