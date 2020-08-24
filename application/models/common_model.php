<?php
class Common_model extends MY_Model
{
    
    public $_table;
    function __construct()
    {
        // Call the Model constructor
        //$this->load->library('email');
        //parent::__construct();
        
        //$this->load->library('form_validation');
        //$this->load->library('encrypt_ssn');
        //$this->validation_messages();
    }
    
  
    function get_pending_doc_with_signed_status($project,$file_type,$keypeople_id= NULL){

        $this->db->select('funds_pending_documents.*,esign_documents_details.status,u.admin_firstname,u.admin_lastname');
        $this->db->from('funds_pending_documents');
        $this->db->join("esign_documents_details","funds_pending_documents.pending_doc_id=esign_documents_details.doc_id",'left');
        $this->db->join('funds_admin u', 'u.admin_id=funds_pending_documents.uploaded_by');
        $this->db->where('funds_pending_documents.project_id',$project);
        $this->db->where('funds_pending_documents.project_doc_type',$file_type);
        if($keypeople_id!='')
            $this->db->where('funds_pending_documents.keypeople_id',$keypeople_id);
        $this->db->order_by('funds_pending_documents.pending_doc_id','desc');
        $result = $this->db->get();
        return $result->result_array();
    }


}
