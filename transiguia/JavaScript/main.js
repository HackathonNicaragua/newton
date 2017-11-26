var app = angular.module('MyApp', []);


function PreguntasCotroller($scope, $http)
{

    total = 0;

    $scope.Respuesta = function(id) {
        total = total + parseInt(1);
        var targetFirst = '#Pregunta' + id;
        $(targetFirst).fadeOut(0, function(){ $(this).remove();
            var targetNext = '#Pregunta' + (parseInt(id) + 1);
            //console.log(targetNext);
            if (targetNext != '#Pregunta37')
            {
                $(targetNext).fadeIn();
                $(targetNext).addClass('slideInRight');
            }
            else{

                var correctas = parseFloat(total/37 * 100);
                var incorrectas = 100 - correctas;
                var chart = new CanvasJS.Chart("chartContainer", {
                    exportEnabled: true,
                    animationEnabled: true,
                    title:{
                        text: "State Operating Funds"
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
        });

    };

}
app.controller('PreguntasCotroller', PreguntasCotroller);
