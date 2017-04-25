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
	
	public function findContexteByID($id){
		$this->_setSql("SELECT * FROM contexte
						WHERE id = ?");
		return $this->getRow([$id]);	
	}

	public function findAllSituaPro(){
		$this->_setSql("SELECT * FROM situation_pro");
		return $this->getAll();
	}
	
	public function findSituaProByID($id){
		$this->_setSql("SELECT situation_pro.*, contexte.libelle contexteLibelle FROM situation_pro
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						WHERE situation_pro.id = ?");
		return $this->getRow([$id]);	
	}

	public function findAllSituaObli(){
		$this->_setSql("SELECT * FROM situation_obli");
		return $this->getAll();
	}
	
	public function findSituaObliByID($id){
		$this->_setSql("SELECT * FROM situation_obli
						WHERE id = ?");
		return $this->getRow([$id]);	
	}

	public function findAllActivite(){
		$this->_setSql("SELECT * FROM activite
						ORDER BY reference");
		return $this->getAll();
	}
	
	public function findActiviteByID($id){
		$this->_setSql("SELECT * FROM activite
						WHERE id = ?");
		return $this->getRow([$id]);	
	}

	public function findAllLastMeo(){
		$this->_setSql("SELECT contexte.libelle contexteLibelle, situation_pro.libelle situaProRef, meo.id_situation_pro, activite.id actId, activite.reference actRef, activite.libelle actLib
						FROM meo
						INNER JOIN situation_pro ON meo.id_situation_pro = situation_pro.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						ORDER BY enregistrement DESC");
		return $this->getAll();
	}

	public function findMeoByContexte($id){
		$this->_setSql("SELECT situation_pro.libelle situaProRef, meo.id_situation_pro, activite.id actId, activite.reference actRef, activite.libelle actLib 
						FROM meo
						INNER JOIN situation_pro ON meo.id_situation_pro = situation_pro.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						WHERE contexte.id = ?");
		return $this->getAll([$id]);
	}

	public function findMeoBySituaProGBactivite($id){
		$this->_setSql("SELECT meo.id_situation_pro, activite.id actId, activite.reference actRef, activite.libelle actLib 
						FROM meo
						INNER JOIN situation_pro ON meo.id_situation_pro = situation_pro.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						WHERE situation_pro.id = ?
						GROUP BY activite.id");
		return $this->getAll([$id]);
	}
	
	public function findMeoBySituaObli($id){
		$this->_setSql("SELECT contexte.libelle contexteLibelle, situation_pro.libelle situaProRef, meo.id_situation_pro, activite.id actId, activite.reference actRef, activite.libelle actLib 
						FROM realisation
						INNER JOIN situation_obli ON realisation.id = situation_obli.id
						INNER JOIN situation_pro ON realisation.id_situation_pro = situation_pro.id
						INNER JOIN meo ON realisation.id_situation_pro = meo.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						WHERE realisation.id = ?");
		return $this->getAll([$id]);
	}

	public function findMeoByActivite($id){
		$this->_setSql("SELECT contexte.libelle contexteLibelle, situation_pro.libelle situaProRef, meo.id_situation_pro, activite.id actId, activite.reference actRef, activite.libelle actLib 
						FROM meo
						INNER JOIN situation_pro ON meo.id_situation_pro = situation_pro.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						WHERE activite.id = ?");
		return $this->getAll([$id]);
	}
	
	public function findMeoByProAct($data){
		$this->_setSql("SELECT meo.id, meo.commentaire, competence.reference compRef, competence.libelle compLib 
						FROM meo
						INNER JOIN situation_pro ON meo.id_situation_pro = situation_pro.id
						INNER JOIN contexte ON situation_pro.id_contexte = contexte.id
						INNER JOIN competence ON meo.id_competence = competence.id
						INNER JOIN activite ON competence.id_activite = activite.id
						WHERE activite.id = :id_act
						AND situation_pro.id = :id_pro");
		return $this->getAll($data);
	}

	public function findMeoByID($id){
		$this->_setSql("SELECT * FROM meo
						WHERE id = ?");
		return $this->getRow([$id]);
	}

	public function findMediaByMeo($id){
		$this->_setSql("SELECT media.id mediaId, nom_fichier, type, description, commentaire mediaComment 
						FROM attachement
						INNER JOIN media ON attachement.id = media.id
						WHERE id_meo = ?");
		return $this->getAll([$id]);
	}
}