<?php
class Second_page extends CI_Controller {

  public function __construct()
  {
     parent::__construct();
     $this->load->model('common_model', 'common');
  }

  #---------------------------------------------------------------------------
  public function index() 
  { 
    print"hi";
    $this->load->view('index',$this->data);   
  }

  
}
?>
