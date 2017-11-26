<?php
/**
 * Created by PhpStorm.
 * User: norman
 * Date: 25/11/2017
 * Time: 22:17
 */
use kartik\select2\select2;
use yii\helpers\ArrayHelper;
use app\models\Multa;
use app\models\ArticuloDescripcion;

$this->title = 'Pagina Ley 431';

$data = ArrayHelper::map(ArticuloDescripcion::find()->asArray()->all(), 'Id', 'Articulo');

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
            <input type="hidden" name="Infracciones" ng-model="Infracciones" value="{{Infracciones}}">
        </tr>
        </tbody>
    </table>

    <input type="hidden" id="Arto">
    <input type="hidden" id="Descrpcion">

    <div class="jumbotron">
        <div class="jumbotron">
            <h1>{{articulo}}</h1>
            <p>{{descripcion}}</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        </div>
    </div>

</div>

<?php
$script = <<< JS
    $('#Descripcion').change(function() {
        var Id = $(this).val();
        $.get('get-descripcion',{Id:Id}, function(data) {
            var data = $.parseJSON(data);
            
            $('#Arto').attr('value', data.Articulo);
            $('#Descrpcion').attr('value', data.Descripcion);
        })
    });
JS;
$this->registerJs($script);
?>