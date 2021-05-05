<?php
class InstitucionalImagens extends Zend_Db_Table {
	protected $_name 			= 'institucional_imagens';
	protected $_primary			= 'id';
	public 	  $_view;
	public function init()
	{
		$viewRenderer 	= Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
		$viewRenderer	->init();
		$this->_view		= $viewRenderer->view;	// Atribuo os Helper de Visão para  $this->view
	}
	public function Lista($id){
		$sql = $this->select()->where("pagina = $id")->order("ordem");
		return $this->fetchAll($sql);
	}
	public function Dados($id){
		$sql = $this->select()->where("id = $id");
		return $this->fetchRow($sql);
	}
}