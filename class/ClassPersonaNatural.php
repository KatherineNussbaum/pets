<?php

/**
|
| Clase PersonaNatural
| 
| Fecha modificación: 09-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class PersonaNatrual
{

	private $id;
	private $idPersona;
	private $nombres;
	private $apellidoPaterno;
	private $apellidoMaterno;
	private $idGenero;
	private $fechaNacimiento;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->idPersona = "";
		$this->nombres = "";
		$this->apellidoPaterno = "";
		$this->apellidoMaterno = "";
		$this->idGenero = "";
		$this->fechaNacimiento = "";
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

	public function getNombres()
	{
		return $this->nombres;
	}

	public function getApellidoPaterno()
	{
		return $this->apellidoPaterno;
	}

	public function getApellidoMaterno()
	{
		return $this->apellidoMaterno;
	}

	public function getIdGenero()
	{
		return $this->idGenero;
	}

	public function getFechaNacimiento()
	{
		return $this->fechaNacimiento;
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

	public function setNombres($nombres)
	{
		$this->nombres = $nombres;
	}

	public function setApellidoPaterno($apellidoPaterno)
	{
		$this->apellidoPaterno = $apellidoPaterno;
	}

	public function setApellidoMaterno($apellidoMaterno)
	{
		$this->apellidoMaterno = $apellidoMaterno;
	}

	public function setIdGenero($idGenero)
	{
		$this->idGenero = $idGenero;
	}

	public function setFechaNacimiento($fechaNacimiento)
	{
		$this->fechaNacimiento = $fechaNacimiento;
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