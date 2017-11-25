<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pregunta".
 *
 * @property integer $Id
 * @property string $Pregunta
 * @property integer $IdArticulo
 *
 * @property Articulo $idArticulo
 * @property PreguntaRespuesta[] $preguntaRespuestas
 * @property PreguntaUsuario[] $preguntaUsuarios
 */
class Pregunta extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pregunta';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IdArticulo'], 'integer'],
            [['Pregunta'], 'string', 'max' => 255],
            [['IdArticulo'], 'exist', 'skipOnError' => true, 'targetClass' => Articulo::className(), 'targetAttribute' => ['IdArticulo' => 'Id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'ID',
            'Pregunta' => 'Pregunta',
            'IdArticulo' => 'Id Articulo',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdArticulo()
    {
        return $this->hasOne(Articulo::className(), ['Id' => 'IdArticulo']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntaRespuestas()
    {
        return $this->hasMany(PreguntaRespuesta::className(), ['IdPregunta' => 'Id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntaUsuarios()
    {
        return $this->hasMany(PreguntaUsuario::className(), ['IdPregunta' => 'Id']);
    }
}
