<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PreguntaRespuesta */

$this->title = 'Update Pregunta Respuesta: ' . $model->Id;
$this->params['breadcrumbs'][] = ['label' => 'Pregunta Respuestas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Id, 'url' => ['view', 'id' => $model->Id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pregunta-respuesta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
