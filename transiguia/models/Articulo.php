<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "articulo".
 *
 * @property integer $Id
 * @property string $Descripcion
 * @property integer $Total
 * @property integer $IdCategoria
 *
 * @property Categoria $idCategoria
 * @property Pregunta[] $preguntas
 */
class Articulo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'articulo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Total', 'IdCategoria'], 'integer'],
            [['Descripcion'], 'string', 'max' => 255],
            [['IdCategoria'], 'exist', 'skipOnError' => true, 'targetClass' => Categoria::className(), 'targetAttribute' => ['IdCategoria' => 'Id']],
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
            'Total' => 'Total',
            'IdCategoria' => 'Id Categoria',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdCategoria()
    {
        return $this->hasOne(Categoria::className(), ['Id' => 'IdCategoria']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntas()
    {
        return $this->hasMany(Pregunta::className(), ['IdArticulo' => 'Id']);
    }
}
