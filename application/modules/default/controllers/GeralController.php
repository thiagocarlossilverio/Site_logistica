<?php

class GeralController extends Zend_Controller_Action {

    public function topoAction() {
        
    }

    public function rodapeAction() {
        $ModelInstitucional = new Admin_Model_Institucional();
        $this->view->missao = $ModelInstitucional->GetDados(1);
        $this->view->visao = $ModelInstitucional->GetDados(2);
        $this->view->valores = $ModelInstitucional->GetDados(3);
    }

}
