<?php
class PortefeuilleModel extends Model{
    public function __construct()
	{
		parent::__construct();
	}

	public function findAllContexte(){
		$this->_setSql("SELECT * FROM contexte");
		return $this->getAll();	
	}

	public function findAllSituaPro(){
		$this->_setSql("SELECT * FROM situation_pro");
		return $this->getAll();
	}

	public function findAllSituaObli(){
		$this->_setSql("SELECT * FROM situation_obli");
		return $this->getAll();
	}

	//Meo

	public function findMeoByContexte($id){

	}

	public function findMeoBySituaPro($id){

	}

	public function findMeoBySituObli($id){
		
	}

}