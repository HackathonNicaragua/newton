<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "multa".
 *
 * @property integer $Id
 * @property string $Descripcion
 * @property double $Precio
 */
class Multa extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'multa';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Precio'], 'number'],
            [['Descripcion'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'ID',
            'Descripcion' => 'Descripcion',
            'Precio' => 'Precio',
        ];
    }
}
