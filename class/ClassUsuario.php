<?php

/**
|
| Clase Usuario
| 
| Fecha modificación: 09-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class Usuario
{

	private $id;
	private $idPersona;
	private $usuario;
	private $pass;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->idPersona = "";
		$this->usuario = "";
		$this->pass = "";
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

	public function getUsuario()
	{
		return $this->usuario;
	}

	public function getPass()
	{
		return $this->pass;
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

	public function setPersona($idPersona)
	{
		$this->idPersona = $idPersona;
	}

	public function setUsuario($usuario)
	{
		$this->usuario = $usuario;
	}

	public function setPass($pass)
	{
		$this->pass = $pass;
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