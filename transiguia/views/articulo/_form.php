<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\select2;
use app\models\Categoria;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Articulo */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="articulo-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-4">
            <label for="">Nombre de la categoria</label>
            <?=
            Select2::widget([
                'name' => 'IdCategoria',
                'model'=>$model,
                'attribute'=> 'IdCategoria',
                'value' => '',
                'data' => ArrayHelper::map(Categoria::find()->asArray()->all(), 'Id', 'Descripcion'),
                'options' =>
                    [
                        'multiple' => false,
                        'placeholder' => 'Seleccione Categoria'
                    ]
            ]);
            ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'Descripcion')->textInput(['maxlength' => true]) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
