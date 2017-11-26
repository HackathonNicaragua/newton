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
        });

    };

}
app.controller('PreguntasCotroller', PreguntasCotroller);
