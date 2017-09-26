<?php

namespace api\modules\v1\models;

//use Yii;
use \yii\db\ActiveRecord;
/**
 * This is the model class for table "countrys".
 *
 * @property integer $country_id
 * @property string $country_name
 * @property string $country_iso_2
 * @property string $country_iso_3
 * @property integer $country_rid
 * @property string $country_region
 * @property string $country_sub_region
 * @property string $country_region_code
 * @property string $country_sub_region_code
 * @property integer $country_x
 */
class Country extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'countrys';
    }

    /**
     * @inheritdoc
     */
    public static function primaryKey()
    {
        return ['country_id'];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['country_rid', 'country_x'], 'integer'],
            [['country_name'], 'string', 'max' => 44],
            [['country_iso_2'], 'string', 'max' => 2],
            [['country_iso_3'], 'string', 'max' => 3],
            [['country_region'], 'string', 'max' => 50],
            [['country_sub_region', 'country_region_code', 'country_sub_region_code'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'country_id' => 'Id',
            'country_name' => 'Name',
            'country_iso_2' => 'ISO 2',
            'country_iso_3' => 'ISO 3',
            'country_rid' => 'RID',
            'country_region' => 'Region',
            'country_sub_region' => 'Sub Region',
            'country_region_code' => 'Region Code',
            'country_sub_region_code' => 'Sub Region Code',
            'country_x' => 'X',
        ];
    }
    
}
