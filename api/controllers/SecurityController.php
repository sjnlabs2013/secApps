<?php

namespace api\controllers\user;

//use Yii;
use dektrium\user\controllers\SecurityController as BaseSecurityController;
//use yii\web\NotFoundHttpException;
//use yii\web\ForbiddenHttpException;

class SecurityController extends BaseSecurityController
{
    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            throw new \yii\web\ForbiddenHttpException();
        }

        /** @var LoginForm $model */
        $model = \Yii::createObject(LoginForm::className());
        $event = $this->getFormEvent($model);

        $this->performAjaxValidation($model);

        $this->trigger(self::EVENT_BEFORE_LOGIN, $event);

        if ($model->load(\Yii::$app->getRequest()->post()) && $model->login()) {
            $this->trigger(self::EVENT_AFTER_LOGIN, $event);
            return $this->goBack();
        }

        return $this->render('login', [
            'model'  => $model,
            'module' => $this->module,
        ]);
    }
}
        
