<?php

class Admin_Model_Banners extends Zend_Db_Table {

    protected $_name = 'banners';
    protected $_primary = 'id';
    public $_view;

    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->_view = $viewRenderer->view;
    }

    public function GetDados($id) {
        $sql = $this->select()->where("id = ?", $id);
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function insert(array $data) {
        if (!is_array($data))
            return false;
        if (empty($data['imagem'])) {
            unset($data['imagem']);
        }

        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }
        unset($data['id']);
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::insert($data_insert);
    }

    public function update(array $data, $where) {
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::update($data_insert, $where);
    }

    public function Lista($ativo = FALSE) {
        $sql = $this->select()
                    ->order('ordem');

        if ($ativo) {
            $sql->where('ativo = ?', 1);
        }
        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function Dados($id) {
        $sql = $this->select()->where("p.id = ? ", $id);
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function delete($where) {
        return parent::delete($where);
    }

}
