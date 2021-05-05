<?php
class Admin_Model_Cotacao extends Zend_Db_Table {
    protected $_name = 'cotacoes';
    protected $_primary = 'id';
    public $_view;
    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->_view = $viewRenderer->view; // Atribuo os Helper de Visão para  $this->view
    }
    public function GetDados($id) {    
         $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array('c' => $this->_name), array("*"))
                ->where("c.id = ? ", $id);
         
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        }
    }
    public function insert(array $data) {
        // Verificações INICIAIS Se o $DATA não for um Array saio da função.
        if (!is_array($data)) {
            return false;
        }
        
        if (!empty($data['quantidade'])) {
            $data['quantidade'] = $this->_view->LimpaNumero($data['quantidade']);
        }
        
        unset($data['id']);
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::insert($data_insert);
    }
    public function Lista() {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array('c' => $this->_name), array("*"))
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
