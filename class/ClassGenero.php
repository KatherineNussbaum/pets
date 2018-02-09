<?php

/**
|
| Clase Genero
| 
| Fecha modificación: 09-02-2018
| Autor: Katherine Nussbaum 
| Versión: 1.0
|
*/

class Genero
{

	private $id;
	private $genero;
	private $createDate;
	private $updateDate;
	private $deleteDate;
	private $active;

	function __construct()
	{
		$this->id = "";
		$this->genero = "";
		$this->createDate = "";
		$this->updateDate = "";
		$this->deleteDate = "";
		$this->active = "";
	}

	public function getId()
	{
		return $this->id;
	}

	public function getGenero()
	{
		return $this->genero;
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

	public function setGenero($genero)
	{
		$this->genero = $genero;
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