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
        <div class="center"><b><h3>{{preguntas[0].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(0)">{{preguntas[0].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(0)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta1" style="display: none">
        <div class="center"><b><h3>{{preguntas[1].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(1)">{{preguntas[1].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta2" style="display: none">
        <div class="center"><b><h3>{{preguntas[2].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(2)">{{preguntas[2].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta3" style="display: none">
        <div class="center"><b><h3>{{preguntas[3].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(3)">{{preguntas[3].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta4" style="display: none">
        <div class="center"><b><h3>{{preguntas[4].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(4)">{{preguntas[4].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta5" style="display: none">
        <div class="center"><b><h3>{{preguntas[5].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(5)">{{preguntas[5].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta6" style="display: none">
        <div class="center"><b><h3>{{preguntas[6].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(6)">{{preguntas[6].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta7" style="display: none">
        <div class="center"><b><h3>{{preguntas[7].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(7)">{{preguntas[7].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta8" style="display: none">
        <div class="center"><b><h3>{{preguntas[8].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(8)">{{preguntas[8].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta9" style="display: none">
        <div class="center"><b><h3>{{preguntas[9].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(9)">{{preguntas[9].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta10" style="display: none">
        <div class="center"><b><h3>{{preguntas[10].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(10)">{{preguntas[10].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta11" style="display: none">
        <div class="center"><b><h3>{{preguntas[11].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(11)">{{preguntas[11].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta12" style="display: none">
        <div class="center"><b><h3>{{preguntas[12].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(12)">{{preguntas[12].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta13" style="display: none">
        <div class="center"><b><h3>{{preguntas[13].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(13)">{{preguntas[13].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta14" style="display: none">
        <div class="center"><b><h3>{{preguntas[14].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(14)">{{preguntas[14].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta15" style="display: none">
        <div class="center"><b><h3>{{preguntas[15].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(15)">{{preguntas[15].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta16" style="display: none">
        <div class="center"><b><h3>{{preguntas[16].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(16)">{{preguntas[16].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta17" style="display: none">
        <div class="center"><b><h3>{{preguntas[17].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(17)">{{preguntas[17].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta18" style="display: none">
        <div class="center"><b><h3>{{preguntas[18].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(18)">{{preguntas[18].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta19" style="display: none">
        <div class="center"><b><h3>{{preguntas[19].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(19)">{{preguntas[19].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta20" style="display: none">
        <div class="center"><b><h3>{{preguntas[20].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(20)">{{preguntas[20].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta21" style="display: none">
        <div class="center"><b><h3>{{preguntas[21].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(21)">{{preguntas[21].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta22" style="display: none">
        <div class="center"><b><h3>{{preguntas[22].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(22)">{{preguntas[22].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta23" style="display: none">
        <div class="center"><b><h3>{{preguntas[23].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(23)">{{preguntas[23].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta24" style="display: none">
        <div class="center"><b><h3>{{preguntas[24].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(24)">{{preguntas[24].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta25" style="display: none">
        <div class="center"><b><h3>{{preguntas[25].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(25)">{{preguntas[25].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta26" style="display: none">
        <div class="center"><b><h3>{{preguntas[26].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(26)">{{preguntas[26].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta27" style="display: none">
        <div class="center"><b><h3>{{preguntas[27].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(27)">{{preguntas[27].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta28" style="display: none">
        <div class="center"><b><h3>{{preguntas[28].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(28)">{{preguntas[28].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta29" style="display: none">
        <div class="center"><b><h3>{{preguntas[29].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(29)">{{preguntas[29].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta30" style="display: none">
        <div class="center"><b><h3>{{preguntas[30].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(30)">{{preguntas[30].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta31" style="display: none">
        <div class="center"><b><h3>{{preguntas[31].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(31)">{{preguntas[31].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta32" style="display: none">
        <div class="center"><b><h3>{{preguntas[32].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(32)">{{preguntas[32].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta33" style="display: none">
        <div class="center"><b><h3>{{preguntas[33].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(33)">{{preguntas[33].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta34" style="display: none">
        <div class="center"><b><h3>{{preguntas[34].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(34)">{{preguntas[34].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta35" style="display: none">
        <div class="center"><b><h3>{{preguntas[35].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(35)">{{preguntas[35].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta36" style="display: none">
        <div class="center"><b><h3>{{preguntas[36].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(36)">{{preguntas[36].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta37" style="display: none">
        <div class="center"><b><h3>{{preguntas[37].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(37)">{{preguntas[37].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <br>
    <div id="chartContainer" style="height: 370px; width: 100%;"></div>
</div>