<?php

class GaleriaController extends Zend_Controller_Action {

    public function indexAction() {
        $server = $this->_request->getServer('HTTP_X_REQUESTED_WITH');
        if (isset($server) && strtolower($server) == "xmlhttprequest") {
            $this->_helper->layout()->disableLayout();
        }
        $this->view->server = $server;
    }

    public function ajaxOperacaoAction() {
        $this->_helper->layout()->disableLayout();
        $param = $this->_request->getParam('param');

        if ($param == 'granel') {
            $operacao = 1;
        } else {
            $operacao = 2;
        }

        $ModelGaleria = new Admin_Model_Galerias();
        $lista = $ModelGaleria->Lista(NULL, TRUE, $operacao);

        $this->view->galerias = $lista;
    }

    public function dadosAction() {
        $param = $this->_request->getParam('param');
        $ModelGaleria = new Admin_Model_Galerias();
        $dados = $ModelGaleria->Getgaleria($param);
        //Zend_Debug::dump($dados);die;
        $this->view->dados = $dados;
    }

}
