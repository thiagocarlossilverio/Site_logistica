<?phpclass TCS_Controller_Plugin_Acl extends Zend_Controller_Plugin_Abstract {    public function preDispatch(Zend_Controller_Request_Abstract $request) {        $auth = Zend_Auth::getInstance();        $user = $auth->getIdentity();        $viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('viewRenderer');        $viewRenderer->initView();        if ($user) {            $module = $this->_request->getModuleName();            $controller = (string)$this->_request->getControllerName();            $controller = str_ireplace('-', '', $controller);            $action = $this->_request->getActionName();            $action = str_ireplace('-', '', $action);            $server = $request->getServer('HTTP_X_REQUESTED_WITH');            /* Se for diferente de uma requisição ajax */            if (!isset($server) && strtolower($server) != "xmlhttprequest") {                $ModelPermissoes = new Admin_Model_MenusPerfil();                $existe = $ModelPermissoes->VerificaPerfil($controller, $action, $user->perfil);                if ($module == 'admin') {                    if ($user->perfil != 3) {                        if (!$existe) {                            if ($controller != 'login' && $controller != 'index' && $controller != 'notificacao') {                                //Adiciona a mensagem de sucesso                                $this->getResponse()->setRedirect("/admin/notificacao")->sendResponse();                            }                        }                    }                }            }        }    }}