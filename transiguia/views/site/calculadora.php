<?php
/**
 * Created by PhpStorm.
 * User: norman
 * Date: 25/11/2017
 * Time: 22:18
 */
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Multa;
use yii\widgets\ActiveForm;

$data = ArrayHelper::map(Multa::find()->asArray()->all(), 'Id', 'Descripcion');
$this->title = 'Lista de infracciones con el total a pagar';
?>
        <?php $form = ActiveForm::begin(['action' =>'enviar-lista', 'method' => 'post', 'id'=>'listadoForm']); ?>
        <table class="table table-fixed" width="100%">
            <thead>
            <th width="50%">Descripcion de la infraccion</th>
            <th width="20%">Costo de la infraccion</th>
            </thead>
            <tbody>
            <tr>
                <td>
                    <?php
                    echo Select2::widget([
                        'name' => 'Descripcion',
                        'value' => 'Id',
                        'data' => $data,
                        'options' => ['multiple' => false, 'placeholder' => 'Describa la infraccion','id'=>'Descripcion']
                    ]);
                    ?>
                </td>
                <input type="hidden" id="Id">
                <td><button type="button" ng-click="addNew()" class='btn btn-success'><i class="glyphicon glyphicon-plus"></i></button></td>
                <input type="hidden" name="ListaCompleta" ng-model="ListaCompleta" value="{{ListaCompleta}}">
            </tr>
            </tbody>
        </table>

        <table class="table table-fixed" width="100%">
            <thead>
            <th width="15%">Carnet</th>
            <th width="20%">Primer Nombre</th>
            <th width="20%">Segundo Nombre</th>
            <th width="20%">Primer Apellido</th>
            <th width="20%">Segundo Apellido</th>
            <th width="5%">Quitar-</th>
            </thead>
            <tbody>
            <tr ng-repeat="estudiante in ListaCompleta track by $index">
                <input type="hidden" ng-model="estudiante.Id">
                <td>{{estudiante.Carnet}}</td>
                <td>{{estudiante.PrimerNombre}}</td>
                <td>{{estudiante.SegundoNombre}}</td>
                <td>{{estudiante.PrimerApellido}}</td>
                <td>{{estudiante.SegundoApellido}}</td>
                <td><button type="button" ng-click="deleteItem(estudiante, $index)" class='btn btn-danger'><i class="glyphicon glyphicon-minus-sign"></i></button></td>
            </tr>
            </tbody>
        </table>