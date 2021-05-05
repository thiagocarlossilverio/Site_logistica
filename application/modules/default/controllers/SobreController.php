<?php

class SobreController extends Zend_Controller_Action {

    public function indexAction() {
       $ModelInstitucional = new Admin_Model_Institucional();
       $this->view->dados = $ModelInstitucional->GetDados(4);
        
    }

  
}
