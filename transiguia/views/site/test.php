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
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(0)">Calzada</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(0)">{{preguntas[0].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(0)">Carril</button>
        <button class="btn btn-danger btn-lg animated slideInRight">Estacionamiento</button>
    </div>

    <div id="Pregunta1" style="display: none">
        <div class="center"><b><h3>{{preguntas[1].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(1)">Arcen</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(1)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(1)">{{preguntas[1].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(1)">Estacionamiento</button>
    </div>

    <div id="Pregunta2" style="display: none">
        <div class="center"><b><h3>{{preguntas[2].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(2)">{{preguntas[2].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(2)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(2)">Parada</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(2)">Paso a desnivel</button>
    </div>

    <div id="Pregunta3" style="display: none">
        <div class="center"><b><h3>{{preguntas[3].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(3)">Interseccion</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(3)">Carril</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(3)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(3)">{{preguntas[3].Respuesta}}</button>
    </div>

    <div id="Pregunta4" style="display: none">
        <div class="center"><b><h3>{{preguntas[4].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(4)">Estacionamiento</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(4)">{{preguntas[4].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(4)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(4)">Boleta de infracción</button>
    </div>

    <div id="Pregunta5" style="display: none">
        <div class="center"><b><h3>{{preguntas[5].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(5)">{{preguntas[5].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(5)">Paso a desnivel</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(5)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(5)">Estacionamiento</button>
    </div>

    <div id="Pregunta6" style="display: none">
        <div class="center"><b><h3>{{preguntas[6].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(6)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(6)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(6)">{{preguntas[6].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(6)">Estacionamiento</button>
    </div>

    <div id="Pregunta7" style="display: none">
        <div class="center"><b><h3>{{preguntas[7].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(7)">{{preguntas[7].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(7)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(7)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(7)">Estacionamiento</button>
    </div>

    <div id="Pregunta8" style="display: none">
        <div class="center"><b><h3>{{preguntas[8].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(8)">{{preguntas[8].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(8)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(8)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(8)">Estacionamiento</button>
    </div>

    <div id="Pregunta9" style="display: none">
        <div class="center"><b><h3>{{preguntas[9].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(9)">{{preguntas[9].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(9)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(9)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(9)">Estacionamiento</button>
    </div>

    <div id="Pregunta10" style="display: none">
        <div class="center"><b><h3>{{preguntas[10].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(10)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(10)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(10)">{{preguntas[10].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(10)">Estacionamiento</button>
    </div>

    <div id="Pregunta11" style="display: none">
        <div class="center"><b><h3>{{preguntas[11].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(11)">{{preguntas[11].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(11)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(11)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(11)">Estacionamiento</button>
    </div>

    <div id="Pregunta12" style="display: none">
        <div class="center"><b><h3>{{preguntas[12].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(12)">{{preguntas[12].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(12)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(12)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(12)">Estacionamiento</button>
    </div>

    <div id="Pregunta13" style="display: none">
        <div class="center"><b><h3>{{preguntas[13].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(13)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(13)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(13)">Estacionamiento</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(13)">{{preguntas[13].Respuesta}}</button>
    </div>

    <div id="Pregunta14" style="display: none">
        <div class="center"><b><h3>{{preguntas[14].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(14)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(14)">{{preguntas[14].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(14)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(14)">Estacionamiento</button>
    </div>

    <div id="Pregunta15" style="display: none">
        <div class="center"><b><h3>{{preguntas[15].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(15)">{{preguntas[15].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(15)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(15)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(15)">Estacionamiento</button>
    </div>

    <div id="Pregunta16" style="display: none">
        <div class="center"><b><h3>{{preguntas[16].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(16)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(16)">{{preguntas[16].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(16)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(16)">Estacionamiento</button>
    </div>

    <div id="Pregunta17" style="display: none">
        <div class="center"><b><h3>{{preguntas[17].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(17)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(17)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(17)">{{preguntas[17].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(17)">Estacionamiento</button>
    </div>

    <div id="Pregunta18" style="display: none">
        <div class="center"><b><h3>{{preguntas[18].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(18)">{{preguntas[18].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(18)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(18)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(18)">Estacionamiento</button>
    </div>

    <div id="Pregunta19" style="display: none">
        <div class="center"><b><h3>{{preguntas[19].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(19)">{{preguntas[19].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(19)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(19)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(19)">Estacionamiento</button>
    </div>

    <div id="Pregunta20" style="display: none">
        <div class="center"><b><h3>{{preguntas[20].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(20)">{{preguntas[20].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(20)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(20)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(20)">Estacionamiento</button>
    </div>

    <div id="Pregunta21" style="display: none">
        <div class="center"><b><h3>{{preguntas[21].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(21)">{{preguntas[21].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(21)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(21)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(21)">Estacionamiento</button>
    </div>

    <div id="Pregunta22" style="display: none">
        <div class="center"><b><h3>{{preguntas[22].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(22)">{{preguntas[22].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(22)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(22)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(22)">Estacionamiento</button>
    </div>

    <div id="Pregunta23" style="display: none">
        <div class="center"><b><h3>{{preguntas[23].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(23)">{{preguntas[23].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(23)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(23)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(23)">Estacionamiento</button>
    </div>

    <div id="Pregunta24" style="display: none">
        <div class="center"><b><h3>{{preguntas[24].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(24)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(24)">{{preguntas[24].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(24)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(24)">Estacionamiento</button>
    </div>

    <div id="Pregunta25" style="display: none">
        <div class="center"><b><h3>{{preguntas[25].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(25)">{{preguntas[25].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(25)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(25)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(25)">Estacionamiento</button>
    </div>

    <div id="Pregunta26" style="display: none">
        <div class="center"><b><h3>{{preguntas[26].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(26)">{{preguntas[26].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(26)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(26)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(26)">Estacionamiento</button>
    </div>

    <div id="Pregunta27" style="display: none">
        <div class="center"><b><h3>{{preguntas[27].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(27)">{{preguntas[27].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(27)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(27)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(27)">Estacionamiento</button>
    </div>

    <div id="Pregunta28" style="display: none">
        <div class="center"><b><h3>{{preguntas[28].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(28)">{{preguntas[28].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(28)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(28)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(28)">Estacionamiento</button>
    </div>

    <div id="Pregunta29" style="display: none">
        <div class="center"><b><h3>{{preguntas[29].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(29)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(29)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(29)">Estacionamiento</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(29)">{{preguntas[29].Respuesta}}</button>
    </div>

    <div id="Pregunta30" style="display: none">
        <div class="center"><b><h3>{{preguntas[30].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(30)">{{preguntas[30].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(30)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(30)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(30)">Estacionamiento</button>
    </div>

    <div id="Pregunta31" style="display: none">
        <div class="center"><b><h3>{{preguntas[31].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(31)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(31)">{{preguntas[31].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(31)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(31)">Estacionamiento</button>
    </div>

    <div id="Pregunta32" style="display: none">
        <div class="center"><b><h3>{{preguntas[32].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(32)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(32)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(32)">{{preguntas[32].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(32)">Estacionamiento</button>
    </div>

    <div id="Pregunta33" style="display: none">
        <div class="center"><b><h3>{{preguntas[33].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(33)">{{preguntas[33].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(33)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(33)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(33)">Estacionamiento</button>
    </div>

    <div id="Pregunta34" style="display: none">
        <div class="center"><b><h3>{{preguntas[34].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(34)">{{preguntas[34].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(34)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(34)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(34)">Estacionamiento</button>
    </div>

    <div id="Pregunta35" style="display: none">
        <div class="center"><b><h3>{{preguntas[35].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(35)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(35)">Conducción temeraria</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(35)">Estacionamiento</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(35)">{{preguntas[35].Respuesta}}</button>
    </div>

    <div id="Pregunta36" style="display: none">
        <div class="center"><b><h3>{{preguntas[36].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(36)">{{preguntas[36].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(36)">Boleta de infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(36)">Conductor</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(36)">Estacionamiento</button>
    </div>

    <div id="Pregunta37" style="display: none">
        <div class="center"><b><h3>{{preguntas[37].Pregunta}}</b></h3></div>
        <br>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Respuesta(37)">{{preguntas[37].Respuesta}}</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(37)">Infracción</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(37)">Condiciones atmosféricas</button>
        <button class="btn btn-danger btn-lg animated slideInRight" ng-click="Siguiente(37)">Estacionamiento</button>
    </div>

    <br>
    <div id="chartContainer" style="height: 370px; width: 100%;">
    </div>

    <br>

    <button class="btn btn-primary btn-lg" style="display: none" id="again" ng-click="Intentar()">Intentar de nuevo</button>

</div>
