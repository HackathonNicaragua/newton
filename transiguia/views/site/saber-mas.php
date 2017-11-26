<?php
/**
 * Created by PhpStorm.
 * User: norman
 * Date: 25/11/2017
 * Time: 22:17
 */
use kartik\select2\select2;
use yii\helpers\ArrayHelper;


$this->title = 'Pagina Ley 431';

$data = ArrayHelper::map(Multa::find()->asArray()->all(), 'Descripcion', 'Descripcion');

?>
<div ng-controller="SaberMasController">
    <table class="table table-fixed" width="100%">
        <thead>
        <th width="100%">Articulo</th>
        </thead>
        <tbody>
        <tr>
            <td>
                <?php
                echo Select2::widget([
                    'name' => 'Descripcion',
                    'value' => 'Descripcion',
                    'data' => $data,
                    'options' => ['multiple' => false, 'placeholder' => 'Describa la infraccion','id'=>'Descripcion']
                ]);
                ?>
            </td>
            <td><input id="Precio" class="form-control" readonly></td>
            <td><button type="button" ng-click="addNew()" class='btn btn-success'><i class="glyphicon glyphicon-plus"></i></button></td>
            <input type="hidden" name="Infracciones" ng-model="Infracciones" value="{{Infracciones}}">
        </tr>
        </tbody>
    </table>
</div>