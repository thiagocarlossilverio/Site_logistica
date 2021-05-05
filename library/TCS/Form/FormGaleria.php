<?php

class TCS_Form_FormGaleria extends Zend_Form {

    public $imagem = array('y' => '700', 'x' => '700', 'dir' => 'imagens/galerias/');
    public $view = NULL;

    public function init() {
        $module = Zend_Controller_Front::getInstance()->getRequest()->getModuleName();
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $rand = date('YmdHis');
        $this->view = $viewRenderer->view;
        $this->setAction('');
        $this->setMethod('post');
        $this->setAttribs(array('id' => 'FormGaleria', 'name' => 'FormGaleria', 'enctype' => 'multipart/form-data'));

        $id = $this->createElement('hidden', 'id', array('id' => 'id'));
        $id->removeDecorator('HtmlTag')->removeDecorator('Label');
        $this->addElement($id);

        // VINCULO PARA ARQUIVOS   ....................................................................
        $vinculo = $this->createElement('hidden', 'vinculo', array('id' => 'vinculo', 'value' => $rand));
        $vinculo->removeDecorator('HtmlTag')->removeDecorator('Label');
        $this->addElement($vinculo);

        $elemento = $this->createElement('text', 'nome', array('label' => 'Nome *', 'id' => 'nome', 'class' => 'form-control'));
        $elemento->setRequired(true);
        $this->addElement($elemento);
        
        $elemento = $this->createElement('radio', 'operacao', array('MultiOptions' => array('1' => 'Granel', '2' => 'Suínos'), 'Label' => 'Tipo de Operação *', 'class' => 'label_radio'));
        $elemento->setSeparator('');
        $elemento->setRequired(true);
        $this->addElement($elemento);
        
        $elemento = $this->createElement('textarea', 'descricao', array('label' => 'Descrição', 'rows' => '3', 'id' => 'descricao', 'class' => 'form-control'));
        $this->addElement($elemento);
        
        // Imagens ....................................................................................
        $elemento = $this->createElement('file', 'imagens', array('label' => 'Imagens', 'id' => 'imagens', 'dir' => $this->imagem['dir'], 'rel' => $rand, 'class' => 'multiUpload ' . session_id()));
        try {
            $elemento->setDestination($this->imagem['dir']);
        } catch (Exception $e) {
            mkdir($this->imagem['dir'], 0777);
            $elemento->setDestination($this->imagem['dir']);
        }
        if ($_POST)
            $this->Upload($elemento);
        $this->addElement($elemento);
               

        $elemento = $this->createElement('radio', 'ativo', array('MultiOptions' => array('1' => 'Ativo', '0' => 'Inativo'), 'Label' => 'Ativo *', 'class' => 'label_radio'));
        $elemento->setSeparator('');
        $elemento->setValue(1);
        $elemento->setRequired(true);
        $this->addElement($elemento);

        $elemento = $this->createElement('submit', 'Salvar', array('class' => 'btn btn-success'));
        $elemento->removeDecorator('HtmlTag')->removeDecorator('Label');
        $this->addElement($elemento);
        
        $this->addDisplayGroup(array('id', 'nome', 'operacao', 'descricao', 'imagens', 'ativo', 'Salvar'), 'galerias', array('removeDecorator' => 'Label'));
        $this->setDisplayGroupDecorators(array('FormElements', 'Fieldset'));
    }

   public function Upload($campo = NULL) {
        $imagens = new Admin_Model_GaleriaImagens();
        if (isset($_POST['delete']) && $_POST['delete']) {
            $imagens->ApagaIMG("imagem = '" . $_POST['imagem'] . "'", $this->imagem['dir'] . $_POST['imagem']);
            die('IMAGEM DELETADA');
        }
        
        $config = array('nomeAleatorio' => true);
        $arquivo = Zend_Controller_Action_HelperBroker::getStaticHelper('Upload')->Upload($campo, $config, TRUE);
        if ($arquivo['novoNome']) {
            $imagens->insert(array('imagem' => $arquivo['novoNome'], 'galeria' => $_POST['vinculoRand']));
            chmod($this->imagem['dir'] . $arquivo['novoNome'], 0777);
            if (strpos($campo->getAttrib('class'), 'multiUpload') == 0) {
                die($arquivo['novoNome']);
            }
        }
    }

}
