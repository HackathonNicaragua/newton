<?php

/* @var $this yii\web\View */

//$this->title = 'My Yii Application';
use yii\helpers\BaseUrl;
use yii\helpers\Html;

?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Bienvenido a <span class="">TransiGuía</span> WEB</h1>
        <p>Grandiosa guía para antes de tomar el examen teórico y práctico de conducir en Nicaragua.</p>

        <a class='btn btn-danger' href='https://play.google.com/store/apps/details?id=com.app.permisodeconducir&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><i class="fa fa-download fa-2x" aria-hidden="true"></i></a>
        <?php
        //echo Html::a('Descarga la APP móvil', ['/site/login'], ['class'=>'btn btn-primary']);
        ?>
        <center>
          <a href='https://play.google.com/store/apps/details?id=com.app.permisodeconducir&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img width="200px" class="img img-responsive" alt='Disponible en Google Play' src='https://play.google.com/intl/en_us/badges/images/generic/es-419_badge_web_generic.png'/></a>
          <iframe src="https://www.facebook.com/plugins/follow.php?href=https%3A%2F%2Fwww.facebook.com%2FTransiguia-391799507918219%2F&width=200&height=80&layout=standard&size=large&show_faces=true&appId" width="200" height="80" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        </center>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded" src=<?php echo Yii::$app->homeUrl."./images/leydetransito.jpg" ?>></img>
                <h2>Conductores continúan incumpliendo con la Ley de Tránsito</h2>
                <p>Tnte. Grethel Vargas Espinoza El número de accidentes de tránsito en las diferentes vías del país aumentaron esta semana, con un total de 832 haciendo una diferencia de 82 accidentes…</p>

                <p><a class="btn btn-default" href="http://www.policia.gob.ni/?p=12547">Leer más &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded"src=<?php echo Yii::$app->homeUrl."./images/curso-conduccion.jpg" ?>></img>
                <h2>Talleres de conduccion</h2>

                <p>Encuentra las mejores escuelas de manejo y donde ubicarlas, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://r.duckduckgo.com/l/?kh=-1&uddg=http%3A%2F%2Fquintamarcha.com%2Fwp-content%2Fuploads%2F2013%2F11%2F1-curso-conduccion-ford-nov-2013.jpg">Leer más &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded"src=<?php echo Yii::$app->homeUrl."./images/practica-senales-de-transito.png" ?>></img>
                <h2>Practicas</h2>

                <p>Realica una serie de practicas que te ayudaran a saber si estas listo para el examen de conduccion, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="site/test">Leer más &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
