<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Pregunta;
use yii\helpers\ArrayHelper;
use kartik\select2\select2;

/* @var $this yii\web\View */
/* @var $model app\models\Respuesta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="respuesta-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-4">
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
        <div class="col-md-4">
            <?= $form->field($model, 'Respuesta')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
