<?php

$ch = curl_init();  

//curl_setopt($ch, CURLOPT_HTTPHEADER, array("Authorization: Bearer {$json['access_token']}"));

curl_setopt($ch, CURLOPT_URL, "http://pmp.shalomsoft.com/api/web/v1/countries?access_token=superadmin&password=adminpass" );

curl_setopt($ch, CURLOPT_FORBID_REUSE, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');

curl_setopt($ch, CURLOPT_USERPWD, "superadmin:adminpass");
curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
$info = curl_getinfo($ch);
$res = curl_exec($ch);

curl_close($ch);

echo "<strong>Transfer:</strong><br/>";
echo "<pre>";
print_r($info);
echo "</pre>";

echo "<hr/><br/><br/>";

echo "<strong>Response:</strong><br/>";
echo "$res<br/>";

?>