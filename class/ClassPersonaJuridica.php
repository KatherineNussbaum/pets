<?php

/**
|
| Clase PersonaJuridica
| 
| Fecha modificación: 09-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class PersonaJuridica
{

	private $id;
	private $idPersona;
	private $razonSocial;
	private $nombreComercial;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->idPersona = "";
		$this->razonSocial = "";
		$this->nombreComercial = "";
		$this->createDate = "";
		$this->updateDate = "";
		$this->deleteDate = "";
		$this->active = "";
	}

	public function getId()
	{
		return $this->id;
	}

	public function getIdPersona()
	{
		return $this->idPersona;
	}

	public function getRazonSocial()
	{
		return $this->razonSocial;
	}

	public function getNombreComercial()
	{
		return $this->nombreComercial;
	}

	public function getCreateDate()
	{
		return $this->createDate;
	}

	public function getUpdateDate()
	{
		return $this->updateDate;
	}

	public function getDeleteDate()
	{
		return $this->deleteDate;
	}

	public function getActive()
	{
		return $this->active;
	}



	public function setId($id)
	{
		$this->id = $id;
	}

	public function setIdPersona($idPersona)
	{
		$this->idPersona = $idPersona;
	}

	public function setRazonSocial($razonSocial)
	{
		$this->razonSocial = $razonSocial;
	}

	public function setNombreComercial($nombreComercial)
	{
		$this->nombreComercial = $nombreComercial;
	}

	public function setCreateDate($createDate)
	{
		$this->createDate = $createDate;
	}

	public function setUpdateDate($updateDate)
	{
		$this->updateDate = $updateDate;
	}

	public function setDeleteDate($deleteDate)
	{
		$this->deleteDate = $deleteDate;
	}

	public function setActive($active)
	{
		$this->active = $active;
	}
}

?>