<?php
class Admin_BannersController extends Zend_Controller_Action {
    public function indexAction() {
        $banners = new Admin_Model_Banners();
        $result = $banners->Lista();
        $this->view->dados = $result;
    }
    public function adicionarAction() {
        $form = new TCS_Form_FormBanner();
        $banners = new Admin_Model_Banners();
        $data = $this->_request->getPost();
        if ($this->_request->isPost() && $form->isValid($data)) {
            $banners->insert($data);
            //Adiciona a mensagem de sucesso
            $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Adicionado com sucesso'));
            $this->redirect('admin/banners/');
        }
        $this->view->form = $form;
        $this->view->controller = $this->_request->getControllerName();
    }
    public function editarAction() {
        $id = (int) $this->_request->getParam('id');
        $form = new TCS_Form_FormBanner();
        $banners = new Admin_Model_Banners();
        if ($id) {
            $values = $banners->GetDados($id);
            //Zend_Debug::dump($values);die;
            $form->populate($values);
            $data = $this->_request->getPost();

            if ($this->_request->isPost() && $form->isValid($data)) {
                $banners->insert($data);
                $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Editado com sucesso'));
                $this->_helper->redirector('index');
            }
            $this->view->form = $form;
            $this->view->controller = $this->_request->getControllerName();
            $this->render('adicionar');
        } else {
            $this->_helper->redirector('index');
        }
    }
    public function excluirAction() {
        $id = (int) $this->_request->getParam('id');
        $banners = new Admin_Model_Banners();
        $result = $banners->GetDados($id);
        unlink('/imagens/banners/' . $result['imagem']);
        $banners->delete("id = " . $id);
        
        //Adiciona a mensagem de sucesso
        $this->_helper->FlashMessenger->addMessage(array('sucesso' => 'Excluido com sucesso'));
        
        $this->_redirect('admin/banners');
    }
    public function ajaxOrdemAction() {
        $model = new Admin_Model_Banners();
        
        $ordem = $_POST['ordem'];
        for ($i = 0; $i < count($ordem); $i++)
            if (is_numeric($ordem[$i]))
                $model->update(array("ordem" => $i), "id =" . $ordem[$i]);
        die;
    }
}
?>