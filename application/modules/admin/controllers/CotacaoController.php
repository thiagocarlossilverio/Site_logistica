<?php

class Admin_CotacaoController extends Zend_Controller_Action {

    public function indexAction() {
        $contatos = new Admin_Model_Cotacao();
        $result = $contatos->Lista();
        $this->view->dados = $result;
    }

    public function excluirAction() {
        $id = (int) $this->_request->getParam('id');
        $contatos = new Admin_Model_Cotacao();
        $contatos->delete("id = " . $id);
        //Adiciona a mensagem de sucesso
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Excluido com sucesso'));
        $this->_redirect('admin/cotacao');
    }

    public function visualizarAction() {
        $id = $this->_request->getParam('id');
        $contatos = new Admin_Model_Cotacao();
        if (!empty($id)) {
            $result = $contatos->GetDados($id);
           
        }
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $result = $contatos->GetDados($data['id']);
            $id = $data['id'];
            $contatos->update(array('resposta' => $data['resposta']), "id =" . $id);
            $conteudo = array('nome' => $result['nome'], 'mensagem' => $data['resposta']);
            $assunto = "Resposta sobre a Cotação de Frete: ";
            Zend_Controller_Action_HelperBroker::getStaticHelper('Emails')->Emails('', $result['email'], $assunto, $conteudo, false, 'emails/contato.phtml');
            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Mensagem enviada com sucesso!'));
            $this->_redirect('admin/cotacao/');
        }
        if (!empty($result)) {
            $contatos->update(array('visualizado' => '1'), "id =" . $id);
        }
        //Zend_Debug::dump($result);die;
        $this->view->dados = $result;
    }


}
