<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\select2\select2;
use app\models\Pregunta;
use app\models\Respuesta;

/* @var $this yii\web\View */
/* @var $model app\models\PreguntaRespuesta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pregunta-respuesta-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-3">
            <label for="">Enunciado de la pregunta</label>
            <?=
            Select2::widget([
                'name' => 'IdPregunta',
                'model'=>$model,
                'attribute'=> 'IdPregunta',
                'value' => '',
                'data' => ArrayHelper::map(Pregunta::find()->asArray()->all(), 'Id', 'Pregunta'),
                'options' =>
                    [
                        'multiple' => false,
                        'placeholder' => 'Seleccione Pregunta'
                    ]
            ]);
            ?>
        </div>
        <div class="col-md-3">
            <label for="">Enunciado de la respuesta</label>
            <?=
            Select2::widget([
                'name' => 'IdRespuesta',
                'model'=>$model,
                'attribute'=> 'IdRespuesta',
                'value' => '',
                'data' => ArrayHelper::map(Respuesta::find()->asArray()->all(), 'Id', 'Respuesta'),
                'options' =>
                    [
                        'multiple' => false,
                        'placeholder' => 'Seleccione Respuesta'
                    ]
            ]);
            ?>
        </div>
        <div class="col-md-3">
            <?= $form->field($model, 'Puntaje')->textInput() ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
