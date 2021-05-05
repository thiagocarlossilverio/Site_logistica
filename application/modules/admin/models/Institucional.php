<?php

class Admin_Model_Institucional extends Zend_Db_Table {

    protected $_name = 'institucional';
    protected $_primary = 'id';

    public function init() {
        
    }

    public function Dados() {
        if ($retun = $this->fetchRow()) {
            return $retun->toArray();
        }
    }


    public function update(array $data, $where) {
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        parent::update($data_insert, $where);
    }

    public function DadosCompletos($item) {
        $sql = $this->select()
                    ->where("url_tratada = '$item'");
        if ($arr = $this->fetchRow($sql)) {
            return $arr->toArray();
        } else {
            return FALSE;
        }
    }
    
     public function GetDados($id) {
        $sql = $this->select()->where("id = ?", $id);
        if ($result = $this->fetchRow($sql)) {
            return $result->toArray();
        } else {
            return FALSE;
        }
    }

    public function GetConteudo() {
        $sql = $this->select();
        if ($result = $this->fetchAll($sql)) {
            return $result->toArray();
        } else {
            return false;
        }
    }


}
