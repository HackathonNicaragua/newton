<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "categoria".
 *
 * @property integer $Id
 * @property string $Descripcion
 *
 * @property Articulo[] $articulos
 * @property UsuarioCategoria[] $usuarioCategorias
 */
class Categoria extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'categoria';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
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
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArticulos()
    {
        return $this->hasMany(Articulo::className(), ['IdCategoria' => 'Id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarioCategorias()
    {
        return $this->hasMany(UsuarioCategoria::className(), ['IdCategoria' => 'Id']);
    }
}
