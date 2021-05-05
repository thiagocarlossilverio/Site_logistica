<?php

class Admin_ContatosController extends Zend_Controller_Action {

    public function indexAction() {
        $contatos = new Admin_Model_Contatos();
        $result = $contatos->Lista();
        $this->view->dados = $result;
    }

    public function excluirAction() {
        $id = (int) $this->_request->getParam('id');
        $contatos = new Admin_Model_Contatos();
        $contatos->delete("id = " . $id);
        //Adiciona a mensagem de sucesso
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Excluido com sucesso'));
        $this->_redirect('admin/contatos');
    }

    public function visualizarAction() {
        $auth = Zend_Auth::getInstance();
        $user = $auth->getIdentity();
        $id = $this->_request->getParam('id');
        $contatos = new Admin_Model_Contatos();
        if (!empty($id)) {
            $result = $contatos->GetDados($id);
        }
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $result = $contatos->GetDados($data['id']);
            $id = $data['id'];
            $contatos->update(array('resposta' => $data['resposta']), "id =" . $id);
            $conteudo = array('nome' => $result['nome'], 'mensagem' => $data['resposta']);
            $assunto = "Resposta sobre: " . $result['assunto'];
            Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $result['email'], $assunto, $conteudo, false, 'emails/contato.phtml');
            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Mensagem enviada com sucesso!'));
            $this->_redirect('admin/contatos/');
        }
        if (!empty($result)) {
            $contatos->update(array('visualizado' => '1'), "id =" . $id);
        }
        //Zend_Debug::dump($result);die;
        $this->view->dados = $result;
    }

    public function whattsAction() {
        $ModelWhatts = new Admin_Model_ConfWhatts();
        $values = $ModelWhatts->GetDados(1);
        $params = array('username' => $values['ddi'] . $values['dd'] . $values['numero'], 'nike' => $values['nome'], 'debug' => true, 'senha' => $values['password']);
        $this->_helper->WhattsApp('recebe', $params);
    }

    public function enviaWhattsAction() {
        $ModelWhatts = new Admin_Model_ConfWhatts();
        $form = new TCS_Form_FormWhattsMensagem();
        $post = $this->_request->getPost();
        if ($this->_request->isPost() && $form->isValid($post)) {
            $data = $ModelWhatts->GetDados(1);
            $params = array('username' => $data['ddi'] . $data['dd'] . $data['numero'],
                'nike' => $data['nome'],
                'debug' => true,
                'senha' => $data['password']
            );

            $destino = array('number' => $post['numero'],
                'message' => $post['mensagem']
            );
            $teste = $this->_helper->WhattsApp('envia', $params, $destino);
            Zend_Debug::dump($teste);die;
        }
        
        $this->view->form = $form;
    }

    public function enviaAction() {
        $ModelWhatts = new Admin_Model_ConfWhatts();
        $values = $ModelWhatts->GetDados(1);
        $params = array('username' => $values['ddi'] . $values['dd'] . $values['numero'], 'nike' => $values['nome'], 'senha' => $values['password'], 'debug' => true);
        //Zend_Debug::dump($params);die;
        $send = array('number' => '554396547948', 'message' => 'teste de mensagem!');
        $teste = $this->_helper->WhattsApp('recebe', $params, $send);
        die($teste);
    }

}
