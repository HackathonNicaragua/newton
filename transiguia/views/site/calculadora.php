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

$data = ArrayHelper::map(Multa::find()->asArray()->all(), 'Descripcion', 'Descripcion');
$this->title = 'Lista de infracciones con el total a pagar';
?>
<div ng-controller="CalculadoraController">
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

        <table class="table table-fixed" width="100%">
            <thead>
            <th width="50%">Descripcion de la infraccion</th>
            <th width="20%">Costo de la infraccion</th>
            </thead>
            <tbody>
            <tr ng-repeat="infraccion in Infracciones track by $index">
                <td>{{infraccion.Descripcion}}</td>
                <td>{{infraccion.Precio |currency: 'C$ '}}</td>
                <td><button type="button" ng-click="deleteItem(infraccion, $index)" class='btn btn-danger'><i class="glyphicon glyphicon-minus-sign"></i></button></td>
            </tr>
            </tbody>
        </table>
    <div class="jumbotron"><strong><h2><span class="label label-default">Total</span> {{total()|currency: 'C$ '}}</h2></strong></div>
</div>
<?php
$script = <<< JS
    $('#Descripcion').change(function() {
        var Descripcion = $(this).val();
        $.get('get-multa',{Descripcion:Descripcion}, function(data) {
            var data = $.parseJSON(data);
            $('#Precio').attr('value', data.Precio);
        })
    });
    
JS;
$this->registerJs($script);
?>