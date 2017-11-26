var app = angular.module('MyApp', []);

function PreguntasCotroller($scope, $http)
{
    total = 0;

    $scope.EsCorrecta = function () {
        total = total + parseInt(1);
        $('#Pregunta1').hide('slow', function () {
            $('#Pregunta1').show('slow');
        });
    };
}
app.controller('PreguntasCotroller', PreguntasCotroller);
