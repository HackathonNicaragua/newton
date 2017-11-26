<?php
/**
 * Created by PhpStorm.
 * User: norman
 * Date: 25/11/2017
 * Time: 20:30
 */
use yii\helpers\VarDumper;
use app\models\PreguntaRespuestaCompleta;
use yii\helpers\Json;

$preguntas = Json::encode(PreguntaRespuestaCompleta::find()->asArray()->all());
//VarDumper::dump($preguntas, 10, true);exit();
?>
<div ng-controller="PreguntasCotroller">
    <span ng-init='preguntas = <?php echo $preguntas;?>'></span>

    <div id="Pregunta0" class="animated slideInRight">
        <div class="center"><b><h3>{{preguntas[0].Pregunta}} 0</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta0()">{{preguntas[0].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta1" style="display: none">
        <div class="center"><b><h3>{{preguntas[0].Pregunta}} 1</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta1()">{{preguntas[0].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta2" style="display: none">
        <div class="center"><b><h3>{{preguntas[0].Pregunta}} 2</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta2()">{{preguntas[0].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

</div>