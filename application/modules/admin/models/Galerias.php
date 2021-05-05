<?php

class Admin_Model_Galerias extends Zend_Db_Table {

    protected $_name = 'galerias';
    protected $_primary = 'id';
    protected $imagens = '';

    public function init() {
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->view = $viewRenderer->view;
    }

    public function Dados() {
        if ($retun = $this->fetchRow()) {
            return $retun->toArray();
        }
    }

    public function GetDados($id) {
        $sql = $this->select()->where("id = " . $id);
        $data = $this->fetchRow($sql)->toArray();
      
        return $data;
    }


    public function GetId($id) {
        $sql = $this->select()->where("id = " . $id);
        if ($data = $this->fetchRow($sql)) {
            return $data;
        } else {
            return false;
        }
    }


    public function Lista($limit = '', $ativo = false, $operacao = false) {

        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array('g' => $this->_name), array("*"))
                ->joinLeft(array("i" => "galeria_imagens"), "i.galeria = g.id and (i.capa = 1)", array("imagem" => "i.imagem"))
                ->order("g.id DESC")
                ->group('g.id');

        if ($limit) {
            $sql->limit($limit);
        }

        if ($ativo) {
            $sql->where("g.ativo =1");
        }
        
        if ($operacao) {
            $sql->where("g.operacao = ?", $operacao);
        }

     
        if ($arr = $this->fetchAll($sql)) {
            $galeria = $arr->toArray();

            $imagem = new Admin_Model_GaleriaImagens();
            foreach ($galeria as $key => $row) {
                if (empty($row['imagem'])) {
                    $galeria[$key]['imagem'] = $imagem->GetImg($row['id']);
                }
            }
            return $galeria;
        } else {
            return false;
        }
    }

    public function insert(array $data) {
        $vinculo = $data['vinculo'];


        if (!is_array($data))
            return false;
        if (empty($data['imagem'])) {
            unset($data['imagem']);
        }
        
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
    

        if (is_numeric($data['id'])) {
            $this->update($data, "id = " . $data['id']);
            return $data['id'];
        }

        unset($data['id']);
        //$data['data_cadastro'] = date('Y-m-d H:i:s');
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        $lastId = parent::insert($data_insert);


        if ($vinculo != $lastId) {
            $imagem = new Admin_Model_GaleriaImagens();
            $imagem->update(array('galeria' => $lastId), "galeria = '" . $vinculo . "' ");
        }
        return $lastId;
    }
    
    public function Getgaleria($id) {
        $sql = $this->select()
                ->setIntegrityCheck(false)
                ->from(array('g' => $this->_name), array("*"))
                ->where("g.id = ? ", $id);

        if ($data = $this->fetchRow($sql)) {
            $ModelImagens = new Admin_Model_GaleriaImagens();
            $result = $data->toArray();
            $result['imagens'] = $ModelImagens->BuscarImagens($id);
            
            return $result;
        } else {

            return false;
        }
    }
    
    public function update(array $data, $where) {
        $info = $this->info();
        $data_insert = array_intersect_key($data, $info['metadata']);
        return parent::update($data_insert, $where);
        $vinculo = $data['vinculo'];
        $imagem = new Admin_Model_GaleriaImagens();
        $imagem->update(array('galeria' => $data['id']), "galeria = '" . $vinculo . "' ");
    }

    public function delete($where) {
        return parent::delete($where);
    }

}
