<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */






//$data = json_encode(['username'=>'superadmin','password'=>'adminpass']);
    
    
$ch = curl_init();  

//curl_setopt($ch, CURLOPT_HTTPHEADER, array("Authorization: Bearer {$json['access_token']}"));
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    "Content-Type: application/json",
    "Accept: application/json",
    ));

curl_setopt($ch, CURLOPT_URL, 'http://127.0.0.1/secApps/api/web/v1/auth/login' );
curl_setopt($ch, CURLOPT_FORBID_REUSE, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

////curl_setopt($ch, CURLOPT_PUT, true);
//curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');                
////curl_setopt($ch, CURLOPT_POSTFIELDS,http_build_query($sfData));
//curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, 'username=superadmin&password=adminpass');

$res = curl_exec($ch);

curl_close($ch);


echo "Response:$res";
    