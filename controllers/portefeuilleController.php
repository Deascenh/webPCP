<?php

class PortefeuilleController extends Controller{

    public function __construct($model, $nameController, $nameAction){
		parent::__construct($model, $nameController, $nameAction);
        $this->_setModel($model);

        $this->_view->setCommons("nav", HOME . DS . 'includes' . DS . 'common.nav.php');
		$this->_view->setCommons("footer", HOME . DS . 'includes' . DS . 'common.footer.php');

        $this->_view->set('contextes', $this->_model->findAllContexte());
        $this->_view->set('situapros', $this->_model->findAllSituaPro());
        $this->_view->set('situaoblis', $this->_model->findAllSituaObli());
    }

    public function contexte($action = false){

        if($action){
            $action = $this->formatAction($action);
            $this->_view->set('askMeos', $this->_model->findMeosByContexte($action['query']['id']));
        }

        $this->_view->Output();
    }
}