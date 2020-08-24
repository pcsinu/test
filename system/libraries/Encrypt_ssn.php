<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class CI_Encrypt_ssn
    {
              private $iv = 'fedcba9876543210'; #Same as in JAVA
              //private $key = '0123456789abcdef'; #Same as in JAVA

                function __construct(){
                }

                public function set_encryption_key($client_id){
                  $length = strlen((string)$client_id);
                  if($length==1){
                    $key = "123456789abcdef".$client_id;
                  }
                  else if ($length==2) {
                    $key = "123456789abcde".$client_id;
                  }
                  else if ($length==3) {
                    $key = "123456789abcd".$client_id;
                  }
                  else if ($length==4) {
                    $key = "123456789abc".$client_id;
                  }
                  else if ($length==5) {
                    $key = "123456789ab".$client_id;
                  }
                  else {
                    $key = "123456789".$client_id;
                  }
                  return $key;
                } 

                function encrypt($str=NULL,$key) {
                  //$key = $this->hex2bin($key);     
                  $iv = $this->iv;
                  $td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);
                  mcrypt_generic_init($td,$key,$iv);
                  @$encrypted = mcrypt_generic(@$td,@$str);
                  mcrypt_generic_deinit($td);
                  mcrypt_module_close($td);
                  return bin2hex(@$encrypted);
                }

                function decrypt($code,$key) {
                  //$key = $this->hex2bin($key);
                  if($code != ''){
                    $code = $this->hex2bin($code);
                    $iv = $this->iv;
                    $td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);
                    mcrypt_generic_init($td, $key, $iv);
                    $decrypted = mdecrypt_generic($td, $code);
                    mcrypt_generic_deinit($td);
                    mcrypt_module_close($td);
                    return utf8_encode(trim(@$decrypted));
                  }
                }

                protected function hex2bin($hexdata) {
                  $bindata = '';

                  for ($i = 0; $i < strlen($hexdata); $i += 2) {
                    $bindata .= chr(hexdec(substr($hexdata, $i, 2)));
                  }

                  return $bindata;
                }

        }

      /*$objcrypt = new MCrypt();
      echo $objcrypt ->encrypt('Please search for a school, or select a school from the drop down menu in order to link class data to a lesson ');
      echo '<br>'.$objcrypt ->decrypt('ba990ac5c04761a90b120de7df7f4570d4d7d24ebde84c742df4048bf37ea66f3bcc53cd07a034b997bbc1eda9ce4e3f0d8f5b304fe1a33af10423d0bbae28bc7bcd4e5792ca6d38465828f168020c5d');
      */