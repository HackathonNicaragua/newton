<?php
/**
 * Created by PhpStorm.
 * User: norman
 * Date: 25/11/2017
 * Time: 19:40
 */
use yii\helpers\Html;
?>

<div class="row">
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="...">
            <div class="caption">
                <div class="text-center"><h2><i class="fa fa-info-circle fa-5x"></i></h2></div>
                <h3>Informativas</h3>
                <p>
                    Su función es la de guiar e informar a los actores de la vía, brindando información como distancias  a un lugar de interés prestación de servicios (monta llantas , hospitales, restaurantes);
                </p>
                <p>
                    <?= Html::a('Leer mas', ['/site/informativas'], ['class'=>'btn btn-primary']) ?>
                    <a href="#" class="btn btn-default" role="button">Button</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="...">
            <div class="caption">
                <div class="text-center"><h2><i class="fa fa-exclamation-triangle fa-5x"></i></h2></div>
                <h3>Preventivas</h3>
                <p>Estas señales tienen la función de prevenir al peatón o conductor de situaciones peligrosas o no. Su forma es un rombo de color amarillo con imágenes en negro. Se pude encontrar muchas veces al llegar una escuela o universidad.</p>
                <p>
                    <?= Html::a('Leer mas', ['/controller/action'], ['class'=>'btn btn-primary']) ?>
                    <a href="#" class="btn btn-default" role="button">Button</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="...">
            <div class="caption">
                <div class="text-center"><h2><i class="fa fa-legal fa-5x"></i></h2></div>
                <h3>Reglamentarias</h3>
                <p>
                    Tiene por objeto indicar al usuario de la vía las limitaciones, prihibiciones o restricciones sobre su uso, y cuya violación constituye falta. Los colores distintivos son: anillos y líneas oblicuas en rojo, fondo blanco y símbolos negros.
                <p>
                    <?= Html::a('Leer mas', ['/controller/action'], ['class'=>'btn btn-primary']) ?>
                    <a href="#" class="btn btn-default" role="button">Button</a>
                </p>
            </div>
        </div>
    </div>
</div>
