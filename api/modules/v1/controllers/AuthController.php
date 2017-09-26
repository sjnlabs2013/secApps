<?php
namespace api\modules\v1\controllers;

use yii\rest\ActiveController;
//use Yii;

class AuthController extends ActiveController {
    
    //public $modelClass = 'api\modules\v1\models\User';
    
    public function  actionIndex(){
        echo date('Y-m-d H:i:s');
    }

    public function actionLogin(){

        $username = !empty($_POST['username'])?$_POST['username']:'';
        $password = !empty($_POST['password'])?$_POST['password']:'';

        $response = [];

        if(empty($username) || empty($password)){
          
            $response = [
                'status' => 'error',
                'message' => 'username & password does not match!',
                'data' => '',
            ];
          
        } else {
            
            //$response = [
            //  'status' => 'success',
            //  'message' => 'login success!',
            //  'data' => [
            //      'id' => $user->id,
            //      'username' => $user->username,
            //      'token' => $user->auth_key,
            //  ]
            //];
            //
            $response = [
              'status' => 'success',
              'message' => 'login success!',
              'data' => [
                  'id' => 1,
                  'username' => 'superadmin',
                  'token' => '9C82MJ_UNSVmYbTzw2TZGCVlXbxRTgIT',
              ]
            ];
//    
//$user = \common\models\User::findByUsername($username);
//
//if(!empty($user)){
//
//
//  if($user->validatePassword($password)){
//    $response = [
//      'status' => 'success',
//      'message' => 'login success!',
//      'data' => [
//          'id' => $user->id,
//          'username' => $user->username,
//          'token' => $user->auth_key,
//      ]
//    ];
//
//  } else{
//
//    $response = [
//      'status' => 'error',
//      'message' => 'password!',
//      'data' => '',
//    ];
//
//  }
//
//} else{
//
//  $response = [
//    'status' => 'error',
//    'message' => 'username!',
//    'data' => '',
//  ];
//
//}
        }
        return $response;
    }
    
//    protected function verbs() {
//        return [ 'login' => ['POST'], ];
//    }
    
}

