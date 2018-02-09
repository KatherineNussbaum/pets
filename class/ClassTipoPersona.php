<?php

/**
|
| Clase Tipo Persona
| 
| Fecha modificación: 08-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class TipoPersona
{
	private $id;
	private $tipo;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->tipo = "";
		$this->createDate = "";
		$this->updateDate = "";
		$this->deleteDate = "";
		$this->active = "";
	}

	public function getId()
	{
		return $this->id;
	}

	public function getTipo()
	{
		return $this->tipo;
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

	public function setTipo($tipo)
	{
		$this->tipo = $tipo;
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
