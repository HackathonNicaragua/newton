<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MultaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Multas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="multa-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Multa', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Id',
            'Descripcion',
            'Precio',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
