<?php
class Home extends CI_Controller {

  public function __construct()
  {
     parent::__construct();
     $this->load->model('common_model', 'common');
  }

  #---------------------------------------------------------------------------
  public function index() 
  { 
    $this->load->view('index',$this->data);
  }

  
}
?>
