<?php
/**
 * ally.php
 *
 * ally application model
 *
 * @package		InvisMVC
 * @author		iSolution
 */
 

class Product extends iModel
{	

	function Product()
	{
		$this->iModel();
	}

	function product_input($product)
	{
		date_default_timezone_set("Asia/Dacca");
		$this->set_opt('product');
		$val = array('title'=>$product['title'],'des'=>$product['description'],
					'rprice'=>$product['rprice'],'sprice'=>$product['sprice'],
					'priceunit'=>$product['price-unit'],'color'=>$product['color'],
					'size'=>$product['size'],'cat'=>$product['category'],
					'subcat'=>$product['Sub-Category'],'subsubcat'=>$product['Sub-Sub-Category'],
					'tag'=>$product['tag'],'adate'=>date("Y-m-d h:i:sa"));
		$this->add_row($val);
	}

	function list_product()
	{
		$this->set_opt('product');
		$list = $this->list_rows();
		return ($list);
	}

}

?>