<?php
namespace api\modules\v1;

use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBasicAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\QueryParamAuth;

class Module extends \yii\base\Module
{
    public $controllerNamespace = 'api\modules\v1\controllers';
    
    public function init()
    {
        parent::init();
        \Yii::$app->user->enableSession = false;
    }
    
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['authenticator'] = [
            'class' => HttpBasicAuth::className(),
            //'class' => CompositeAuth::className(),
            //'authMethods' => [
            //    HttpBasicAuth::className(),
            //    HttpBearerAuth::className(),
            //    QueryParamAuth::className(),
            //],
            'auth' => [$this, 'auth']
        ];
        return $behaviors;
    }
    
    public function auth($username, $password) {
        //return \api\models\User::findOne([
        //    'username' => $username,
        //    'password_hash' => $password,
        //]);
        
        $user = null;

        $model = \Yii::createObject(\dektrium\user\models\LoginForm::className());   
        $model->login = $username;
        $model->password = $password;        
        
        if($model->validate() && $model->login()){
            $user = \api\models\User::findOne([
                'username' => $username,
            ]);
        }
        
        return $user;
    }
}