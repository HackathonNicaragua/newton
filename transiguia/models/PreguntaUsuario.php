<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pregunta_usuario".
 *
 * @property integer $Id
 * @property integer $IdUsuario
 * @property integer $IdPregunta
 * @property integer $IdRespuesta
 *
 * @property Pregunta $idPregunta
 * @property Respuesta $idRespuesta
 * @property User $idUsuario
 */
class PreguntaUsuario extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pregunta_usuario';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IdUsuario', 'IdPregunta', 'IdRespuesta'], 'integer'],
            [['IdPregunta'], 'exist', 'skipOnError' => true, 'targetClass' => Pregunta::className(), 'targetAttribute' => ['IdPregunta' => 'Id']],
            [['IdRespuesta'], 'exist', 'skipOnError' => true, 'targetClass' => Respuesta::className(), 'targetAttribute' => ['IdRespuesta' => 'IdPregunta']],
            [['IdUsuario'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['IdUsuario' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'ID',
            'IdUsuario' => 'Id Usuario',
            'IdPregunta' => 'Id Pregunta',
            'IdRespuesta' => 'Id Respuesta',
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
        return $this->hasOne(Respuesta::className(), ['IdPregunta' => 'IdRespuesta']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdUsuario()
    {
        return $this->hasOne(User::className(), ['id' => 'IdUsuario']);
    }
}
