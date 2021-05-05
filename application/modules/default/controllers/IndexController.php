<?php

class IndexController extends Zend_Controller_Action {

    public function init() {
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $IP = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $IP = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (isset($_SERVER['HTTP_FROM '])) {
            $IP = $_SERVER['HTTP_FROM'];
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $IP = $_SERVER['REMOTE_ADDR'];
        }

        $array = explode(',', $IP);

        if ($array[0] == '186.226.246.45') {
            //  $this->redirect('http://schoeler.com.br');
        }
    }

    public function indexAction() {
        $ModelInstitucional = new Admin_Model_Institucional();
        $ModelBanners = new Admin_Model_Banners();
        $ModelVendas = new Admin_Model_Vendas();
        $this->view->dados = $ModelInstitucional->GetDados(5);
        $this->view->banners = $ModelBanners->Lista(true);
        $this->view->vendas = $ModelVendas->Lista('3', TRUE, TRUE);
    }

    public function mapAction() {
        $this->_helper->viewRenderer->setNoRender(true);
        $this->_helper->layout->disableLayout();
        $acesso = new Zend_Session_Namespace("acesso");
        $ModelAcessos = new Admin_Model_Acessos();

        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $IP = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $IP = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (isset($_SERVER['HTTP_FROM '])) {
            $IP = $_SERVER['HTTP_FROM'];
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $IP = $_SERVER['REMOTE_ADDR'];
        }

        $array = explode(',', $IP);
        $IP = $array[0];

        if ($acesso->ip == '') {
            $data = $this->_request->getPost();
            $sistema_op = $ModelAcessos->getOs($_SERVER['HTTP_USER_AGENT']);
            $robots = $ModelAcessos->getBuscador();
            
            if (!empty($sistema_op)) {
                $system = $sistema_op;
            } elseif (!empty($robots)) {
                $system = $robots;
            } else {
                $system = '';
            }
            
            $data['sistema_operacional'] = $system;
            $data['navegador'] = $ModelAcessos->getBrowser($_SERVER['HTTP_USER_AGENT']);
            $data['ip'] = $IP;
            $data['data_acesso'] = date("Y-m-d H:i:s");
            $acesso->ip = $IP;
            $ModelAcessos->insert($data);
            die('Gravado');
        }

    }

}
