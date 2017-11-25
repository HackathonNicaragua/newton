<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "respuesta".
 *
 * @property integer $Id
 * @property integer $IdPregunta
 * @property string $Respuesta
 *
 * @property PreguntaRespuesta[] $preguntaRespuestas
 * @property PreguntaUsuario[] $preguntaUsuarios
 */
class Respuesta extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'respuesta';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IdPregunta'], 'integer'],
            [['Respuesta'], 'string', 'max' => 11],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'ID',
            'IdPregunta' => 'Id Pregunta',
            'Respuesta' => 'Respuesta',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntaRespuestas()
    {
        return $this->hasMany(PreguntaRespuesta::className(), ['IdRespuesta' => 'Id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntaUsuarios()
    {
        return $this->hasMany(PreguntaUsuario::className(), ['IdRespuesta' => 'IdPregunta']);
    }
}
