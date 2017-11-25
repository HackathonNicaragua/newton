<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pregunta_respuesta".
 *
 * @property integer $Id
 * @property integer $IdPregunta
 * @property integer $IdRespuesta
 * @property integer $Puntaje
 *
 * @property Pregunta $idPregunta
 * @property Respuesta $idRespuesta
 */
class PreguntaRespuesta extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pregunta_respuesta';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IdPregunta', 'IdRespuesta', 'Puntaje'], 'integer'],
            [['IdPregunta'], 'exist', 'skipOnError' => true, 'targetClass' => Pregunta::className(), 'targetAttribute' => ['IdPregunta' => 'Id']],
            [['IdRespuesta'], 'exist', 'skipOnError' => true, 'targetClass' => Respuesta::className(), 'targetAttribute' => ['IdRespuesta' => 'Id']],
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
            'IdRespuesta' => 'Id Respuesta',
            'Puntaje' => 'Puntaje',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdPregunta()
    {
        return $this->hasOne(Pregunta::className(), ['Id' => 'IdPregunta']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdRespuesta()
    {
        return $this->hasOne(Respuesta::className(), ['Id' => 'IdRespuesta']);
    }
}
