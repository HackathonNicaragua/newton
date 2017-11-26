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
    <br>
    <div class="row">
        <div class="col-md-12">
            <textarea class="form-control" name="" id="Descrpcion" cols="100" rows="10" readonly></textarea>
        </div>
    </div>

</div>

<?php
$script = <<< JS
    $('#Descripcion').change(function() {
        var Id = $(this).val();
        $.get('get-descripcion',{Id:Id}, function(data) {
            var data = $.parseJSON(data);
            
            $('#Descrpcion').val(data.Descripcion);
        })
    });
JS;
$this->registerJs($script);
?>