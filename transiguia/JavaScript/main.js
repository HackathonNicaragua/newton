var app = angular.module('MyApp', []);


function PreguntasCotroller($scope, $http)
{

    total = 0;

    $scope.Respuesta0 = function() {
        total = total + parseInt(1);
        $('#Pregunta0').fadeOut(500, function(){ $(this).remove();
            $('#Pregunta1').fadeIn();
            $('#Pregunta1').addClass('slideInRight');
        });

    };

    $scope.Respuesta1 = function() {
        total = total + parseInt(1);
        $('#Pregunta1').fadeOut(500, function(){ $(this).remove();
            $('#Pregunta2').fadeIn();
            $('#Pregunta2').addClass('slideInRight');
        });

    };
}
app.controller('PreguntasCotroller', PreguntasCotroller);
