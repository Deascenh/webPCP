<?php

class PortefeuilleController extends Controller{

    public function __construct($model, $nameController, $nameAction){
		parent::__construct($model, $nameController, $nameAction);
        $this->_setModel($model);

        $this->_view->setCommons("nav", HOME . DS . 'includes' . DS . 'common.nav.php');
		$this->_view->setCommons("footer", HOME . DS . 'includes' . DS . 'common.footer.php');

        $this->_view->set('navContextes', $this->_model->findAllContexte());
        $this->_view->set('navSituapros', $this->_model->findAllSituaPro());
        $this->_view->set('navSituaoblis', $this->_model->findAllSituaObli());
        $this->_view->set('listActivites', $this->_model->findAllActivite());
    }

    public function home(){   
        $this->_view->set('askMeos', $this->_model->findAllLastMeo());
        $this->_view->Output();
    }

    public function contexte($action = false){

        if($action){
            $action = $this->formatAction($action);
            $this->_view->set('currentContexte', $this->_model->findContexteByID($action['query']['id']));
            $this->_view->set('askMeos', $this->_model->findMeoByContexte($action['query']['id']));
        }

        $this->_view->Output();
    }

    public function obligatoire($action = false){

        if($action){
            $action = $this->formatAction($action);
            $this->_view->set('currentObligatoire', $this->_model->findSituaObliByID($action['query']['id']));
            $this->_view->set('askMeos', $this->_model->findMeoBySituaObli($action['query']['id']));
        }

        $this->_view->Output();
    }
    
    public function professionnelle($action = false){

        if($action){
            $action = $this->formatAction($action);
            $this->_view->set('currentProfessionnelle', $this->_model->findSituaProByID($action['query']['id']));
            $this->_view->set('askMeos', $this->_model->findMeoBySituaProGBactivite($action['query']['id']));
        }

        $this->_view->Output();
    }
    
    public function detail($action = false){

        if($action){
            $action = $this->formatAction($action);
            $detailMeos = $this->_model->findMeoByProAct($action['query']);
            foreach($detailMeos as $key => $value){
                $detailMeos[$key]['mediaMeos'] =  $this->_model->findMediaByMeo($value['id']);
            }
            $this->_view->set('detailMeos', $detailMeos);
        }

        $this->_view->Output();
    }

    public function activite($action = false){
        if($action){
            $action = $this->formatAction($action);
            $this->_view->set('currentActivite', $this->_model->findActiviteByID($action['query']['id']));
            $this->_view->set('askMeos', $this->_model->findMeoByActivite($action['query']['id']));
        }

        $this->_view->Output();
    }
}