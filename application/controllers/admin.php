<?php

/**
 * default.php
 *
 * default application controller
 *
 * @package		InvisMVC
 * @author		iSolution
 */

class Admin_Controller extends iController
{	
	function __construct()
	{
		parent::__construct();
	}

	function index()
	{
		$this->load('RainTPL');		
		$this->RainTPL->assign('urls_base',$this->base_url);
		$this->RainTPL->draw('admin-panel');
	}

	function pre_insert_cat()
	{
		$this->load("RainTPL");
		$this->load('Json_helper','libraries');
		$cat=$this->Json_helper->get_cat_list();
		$this->RainTPL->assign('cat',$cat);
		$this->RainTPL->draw("add_new_cat");	
	}

	function insert_new_cat()
	{
		$this->load('Json_helper','libraries');
		$rt=$this->Json_helper->add_new_cat($_POST['ncategory']);
		if($rt)
		echo 'Entry Succesful';
		else
		echo 'Already exist';
		$this->pre_insert_cat();
	}
	
	function get_cat()
	{
		$this->load('Json_helper','libraries');
		$cat=$this->Json_helper->get_cat_list();
		$this->load("RainTPL");
		$this->RainTPL->assign('cat',$cat);
		$this->RainTPL->draw("get_cat");
	}
	
	function pre_del_cat()
	{
		$this->load("RainTPL");
		$this->get_cat();
		$this->RainTPL->draw("delete_cat");
	}

	function del_cat()
	{
		$this->load('Json_helper','libraries');
		$this->Json_helper->del_cat_list($_POST['ncategory']);
		$this->pre_insert_cat();
	}

	function list_product()
	{
		$this->load("RainTPL");
		$this->load("Product","models");
		$list=$this->Product->list_product();
		$this->RainTPL->assign('all_product_list',$list);
		$this->RainTPL->draw("all_product_list");
	}


	function pre_insert_test_type()
	{
		$this->load("RainTPL");
		$this->RainTPL->draw("add_test_type");
	}
	
	function insert_new_test_type()
	{
		$this->load("RainTPL");
		$this->load('Json_helper','libraries');
		$this->Json_helper->add_new_test($_POST);
		$this->pre_insert_test_type();
	}
	
	function pre_insert_new_test()
	{
		$this->load("RainTPL");
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->RainTPL->assign('test',$test);
		$keys =array_keys($test);
		$k=isset($_GET['ttype'])? $_GET['ttype']:$keys[0];
		$this->RainTPL->assign('atest',$test[$k]);
		$this->RainTPL->draw("add_new_test");
		
	}
	function insert_new_test()
	{
		$this->load('Json_helper','libraries');
		$this->Json_helper->add_new_test($_POST);
		$this->pre_insert_new_test();
		
	}
	function get_test()
	{
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->load("RainTPL");
		$this->RainTPL->assign('test',$test);
		$this->RainTPL->draw("get_test");
	}
	
	function get_test_type()
	{
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->load("RainTPL");
		$this->RainTPL->assign('test',$test);
		$keys =array_keys($test);
		$k=isset($_GET['ttype'])? $_GET['ttype']:$keys[0];
		$this->RainTPL->assign('atest',$test[$k]);
		//var_dump($test);
		$this->RainTPL->draw("get_test_type");
	}
	function get_test_list()
	{
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->load("RainTPL");
		$keys =array_keys($test);
		$k=isset($_GET['ttype'])? $_GET['ttype']:$keys[0];
		$this->RainTPL->assign('atest',$test[$k]);
		//var_dump($test);
		$this->RainTPL->draw("get_test_list");
	}
	
	function pre_del_test_type()
	{
		$this->load("RainTPL");
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->RainTPL->assign('test',$test);
		$this->RainTPL->draw("del_test_type");
	}
	function del_test_type()
	{
		$this->load('Json_helper','libraries');
		$this->Json_helper->del_test_type_list($_POST['nttype']);
		$this->pre_del_test_type();
	
	}
	
	function pre_del_test()
	{
		$this->load("RainTPL");
		$this->load('Json_helper','libraries');
		$test=(array)$this->Json_helper->get_test_list();
		$this->RainTPL->assign('test',$test);
		$keys =array_keys($test);
		$k=isset($_GET['ttype'])? $_GET['ttype']:$keys[0];
		$this->RainTPL->assign('atest',$test[$k]);
		$this->RainTPL->draw("del_test");
	}
	function del_test()
	{
		$this->load('Json_helper','libraries');
		$this->Json_helper->del_test_list($_POST['nttype'],$_POST['ntest']);
		$this->pre_del_test();
	
	}

	
}

?>
