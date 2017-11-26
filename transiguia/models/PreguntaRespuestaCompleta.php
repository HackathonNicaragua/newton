<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pregunta_respuesta_completa".
 *
 * @property string $Pregunta
 * @property string $Respuesta
 * @property integer $Puntaje
 */
class PreguntaRespuestaCompleta extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pregunta_respuesta_completa';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Puntaje'], 'integer'],
            [['Pregunta', 'Respuesta'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Pregunta' => 'Pregunta',
            'Respuesta' => 'Respuesta',
            'Puntaje' => 'Puntaje',
        ];
    }
}
