<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\PreguntaRespuesta */

$this->title = 'Create Pregunta Respuesta';
$this->params['breadcrumbs'][] = ['label' => 'Pregunta Respuestas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pregunta-respuesta-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
