<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Articulo;
use yii\helpers\ArrayHelper;
use kartik\select2\select2;

/* @var $this yii\web\View */
/* @var $model app\models\Pregunta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pregunta-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-4">
            <label for="">Nombre del Articulo</label>
            <?=
            Select2::widget([
                'name' => 'IdArticulo',
                'model'=>$model,
                'attribute'=> 'IdArticulo',
                'value' => '',
                'data' => ArrayHelper::map(Articulo::find()->asArray()->all(), 'Id', 'Descripcion'),
                'options' =>
                    [
                        'multiple' => false,
                        'placeholder' => 'Seleccione Articulo'
                    ]
            ]);
            ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'Pregunta')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
