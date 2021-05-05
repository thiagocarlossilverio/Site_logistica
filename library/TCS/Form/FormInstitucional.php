<?php
class TCS_Form_FormInstitucional extends Zend_Form {
    public $view = NULL;   
    public function init() {
        // Arquivos de Inicialização Padrão -------------------------------------------------------------------------------------------
        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRenderer->init();
        $this->view = $viewRenderer->view; // Atribuo os Helper de Visão para  $this->view			//-----------------------------------------------------------------------------------------------------------------------------
       
        $this->setAction('');              // Adiciona a Action ao Formulário. Caso não seja declarado, envia para $_SELF
        $this->setMethod('post');             // Define o Metodo.
        $this->setAttribs(array('id' => 'FormInstitucional', 'nome' => 'FormInstitucional')); // Attribs (Arr com varios) Attrib (Um par de attr e valor)
        $this->setAttrib('enctype', 'multipart/form-data');
        // ID ................................................................
        $elemento = $this->createElement('hidden', 'id', array('id' => 'id'));
        $elemento->removeDecorator('HtmlTag')->removeDecorator('Label');
        $this->addElement($elemento);
        // Pagina .........................................................................
        $elemento = $this->createElement('select', 'pagina', array('Label' => 'Item', 'id' => 'pagina','class' => 'form-control'));
        $model = new Admin_Model_Institucional();
        $elemento->addMultioptions(array('' => 'Selecione o item'));
        foreach ($model->GetConteudo() as  $row){
            $elemento->addMultioptions(array($row['url_tratada']=>$row['pagina']));
        }
        $this->addElement($elemento);
        // Titulo .........................................................................
        $elemento = $this->createElement('textarea', 'conteudo', array('id' => 'conteudo', 'Label' => 'Conteúdo', 'class' => 'form-control'));
        $elemento->setRequired(true);
        $this->addElement($elemento);
        // Submit  ......................................................................................
        $elemento = $this->createElement('submit', 'Salvar', array('class'=>'btn btn-success'));
        $elemento->removeDecorator('Label');
        $this->addElement($elemento);
         $this->addDisplayGroup(array('id', 'pagina', 'conteudo', 'Salvar'), 'Institucional', array('removeDecorator' => 'Label'));
        $this->setDisplayGroupDecorators(array('FormElements', 'Fieldset'));
    }
    
    public function Edita($pagina) {
        $model = new Admin_Model_Institucional();
        if (!$pagina)
            return false;
        $sql =  $model->select()->where("pagina='$pagina'");
        $res = $model->fetchRow($sql)->toArray();
        return $this->populate($res);
    }
    public function Upload($campo = NULL) {
        $config = array('nomeAleatorio' => true);
        $arquivo = Zend_Controller_Action_HelperBroker::getStaticHelper('Upload')->Upload($campo, $config, TRUE);
        $imagens = new InstitucionalImagens();
        if ($arquivo['novoNome'])
            $imagens->insert(array('imagem' => $arquivo['novoNome'], 'pagina' => $_POST['vinculoRand']));
    }
}
