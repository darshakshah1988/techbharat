<?php
namespace App\View\Helper;

use Cake\View\Helper;
use Cake\View\View;

/**
 * Common helper
 */
class CommonHelper extends Helper
{

    /**
     * Default configuration.
     *
     * @var array
     */
    protected $_defaultConfig = [];
    
    
    
    public function errorMessage($errors = array(), &$ar){
        foreach($errors as $error){
            if(is_array($error)){
                $this->errors($error, $ar);
            }else{
                 $ar[] = $error;
            }
        }
        return $ar;
    }
    
    public function errors($errors = array(), &$ar){
        foreach($errors as $error){
            if(is_array($error)){
                $this->errors($error, $ar);
            }else{
                 $ar[] = $error;
            }
        }
    }
    

}
