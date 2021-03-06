<?php

/**
|
| Clase UsuarioRol
| 
| Fecha modificación: 09-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class UsuarioRol
{

	private $id;
	private $idUsuario;
	private $idRol;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->idUsuario = "";
		$this->idRol = "";
		$this->createDate = "";
		$this->updateDate = "";
		$this->deleteDate = "";
		$this->active = "";
	}

	public function getId()
	{
		return $this->id;
	}

	public function getIdUsuario()
	{
		return $this->idUsuario;
	}

	public function getIdRol()
	{
		return $this->idRol;
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

	public function setIdUsuario($idUsuario)
	{
		$this->idUsuario = $idUsuario;
	}

	public function setIdRol($idRol)
	{
		$this->idRol = $idRol;
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