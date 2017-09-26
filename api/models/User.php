<?php

namespace api\models;

use dektrium\user\models\User as BaseUser;

class User extends BaseUser {
    
    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['auth_key' => $token]);
    }
}
