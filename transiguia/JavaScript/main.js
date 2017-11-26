var app = angular.module('MyApp', []);


function PreguntasCotroller($scope, $http)
{

    total = 0;

    $scope.Siguiente = function Siguiente(id) {

        var targetFirst = '#Pregunta' + id;
        $(targetFirst).fadeOut(0, function(){ $(this).remove();
            //console.log(targetNext);
            var targetNext = '#Pregunta' + (parseInt(id) + 1);
            if (targetNext != '#Pregunta3') {
                $(targetNext).fadeIn();
                $(targetNext).addClass('slideInRight');
            }
            else {
                mostrarBotones();
                mostrarGrafico(id);
            }
        });
    }

    function mostrarBotones() {
        var reinicio = '#Reiniciar';
        var salir = '#Salir';
        $(reinicio).fadeIn();
        $(reinicio).addClass('slideInRight');
        $(salir).fadeIn();
        $(salir).addClass('slideInRight');
    }

    $scope.Iniciar = function () {
        var targetFirst = '#Inicio';
        $(targetFirst).fadeOut(0, function(){ $(this).remove();
            //console.log(targetNext);
            var targetNext = '#Pregunta0';
            $(targetNext).fadeIn();
            $(targetNext).addClass('slideInRight');
        });
    }

    function mostrarGrafico(id) {
        var correctas = parseFloat(total/(id+1) * 100);
        var incorrectas = 100 - correctas;
        var chart = new CanvasJS.Chart("chartContainer", {
            exportEnabled: true,
            animationEnabled: true,
            title:{
                text: "Resultado de la prueba"
            },
            legend:{
                cursor: "pointer",
                itemclick: explodePie
            },
            data: [{
                type: "pie",
                showInLegend: true,
                toolTipContent: "{name}: <strong>{y}%</strong>",
                indexLabel: "{name} - {y}%",
                dataPoints: [
                    { y: correctas, name: "Asertaste", exploded: true },
                    { y: incorrectas, name: "Incorrectas" },
                ]
            }]
        });
        chart.render();

        function explodePie (e) {
            if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
                e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
            } else {
                e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
            }
            e.chart.render();

        }
    }

    $scope.Respuesta = function(id) {
        total = total + parseInt(1);

        $scope.Siguiente(id);

    };

}

function CalculadoraController($scope, $http)
{

    $scope.Infracciones = []

    $scope.deleteItem = function (index) {
        $scope.Infracciones.splice(index, 1)

    }

    $scope.addNew = function (evt) {

        var Descripcion = $('#Descripcion').val()
        var Precio = $('#Precio').val()

        var infraccion = {
            Descripcion:Descripcion,
            Precio:Precio
        }

        $scope.Infracciones.push(infraccion)

    }

    $scope.total = function(){
        sum = 0
        angular.forEach($scope.Infracciones, function(infraccion){
            sum += parseFloat(infraccion.Precio)
        })
        return sum
    }
}

app.controller('PreguntasCotroller', PreguntasCotroller);
app.controller('CalculadoraController', CalculadoraController);
app.controller('SaberMasController', SaberMasController);
