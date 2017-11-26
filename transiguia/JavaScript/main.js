var app = angular.module('MyApp', []);

function PreguntasCotroller($scope, $http)
{
    total = 0;

    $scope.EsCorrecta = function () {
        total = total + parseInt(1);
        $('#Pregunta0').hide('slow');
        $
    };
}
app.controller('PreguntasCotroller', PreguntasCotroller);
