<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "articulo_descripcion".
 *
 * @property integer $Id
 * @property string $Articulo
 * @property string $Descripcion
 */
class ArticuloDescripcion extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'articulo_descripcion';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Id'], 'required'],
            [['Id'], 'integer'],
            [['Articulo', 'Descripcion'], 'string', 'max' => 1024],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'ID',
            'Articulo' => 'Articulo',
            'Descripcion' => 'Descripcion',
        ];
    }
}
