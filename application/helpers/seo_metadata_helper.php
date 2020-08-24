<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function get_seo_metadata(){

    $CI = get_instance();
    $CI->load->model('common_model','common');
    $current_page = $CI->router->fetch_class() . "/" . $CI->router->fetch_method();
    $meta_data = $CI->common->get_seo_data($current_page);
    // Default page title, meta description, meta keywords; based off recommendations for Home
    $meta['page_title'] = ""; // if still empty below, will use title();
    $meta['page_description'] = "Sharestates is a crowdfunding platform for accredited real estate investors that empowers people to build a real estate portfolio.";
    $meta['page_keywords']    = "Sharestates, real estate investing, real estate crowdfunding, real estate crowdfunding platform, real estate crowdfunding marketplace, real estate crowdfunding New York, marketplace lending";
    $meta['current_page']     = $current_page;

    if(!empty($meta_data)){
        $meta['page_title']       = $meta_data['page_title']; 
        $meta['page_description'] = $meta_data['page_description'] ;
        $meta['page_keywords']    = $meta_data['page_keywords'];
        $meta['current_zone']     = $meta_data['current_zone'];
    }
    
    return $meta;
}

function is_live(){

    $CI = get_instance();

    $CI->config->load('sharestatesapi', TRUE);
    
    $config = $CI->config->item('sharestatesapi');

    if($config['env'] == "sharestates.com")
    {
        return true;
    }
    else
    {
        return false;
    }
    
}


function get_api_domain(){

    $CI = get_instance();

    $CI->config->load('sharestatesapi', TRUE);
    
    $config = $CI->config->item('sharestatesapi');

    if(isset($config['api_domain']))
        return $config['api_domain'];
    else
        return '';
    
}


function get_callback_domain(){

    $CI = get_instance();

    $CI->config->load('sharestatesapi', TRUE);
    
    $config = $CI->config->item('sharestatesapi');

    if(isset($config['callback_domain']))
        return $config['callback_domain'];
    else
        return '';
    
}



?>