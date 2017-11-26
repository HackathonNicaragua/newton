<?php

/* @var $this yii\web\View */

//$this->title = 'My Yii Application';
use yii\helpers\BaseUrl;
use yii\helpers\Html;

?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Bienvenido a <span class="">TransiGuía</span> WEB</h1>
        <p>Tnte. Grethel Vargas Espinoza El número de accidentes de tránsito en las diferentes vías del país aumentaron esta semana, con un total de 832 haciendo una diferencia de 82 accidentes…</p>
        <?php
        echo Html::a('Descarga la APP móvil', ['/site/login'], ['class'=>'btn btn-primary']);
        ?>
        <center>
          <a href='https://play.google.com/store/apps/details?id=com.app.permisodeconducir&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img width="200px" class="img img-responsive" alt='Disponible en Google Play' src='https://play.google.com/intl/en_us/badges/images/generic/es-419_badge_web_generic.png'/></a>
        </center>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded" src="http://www.policia.gob.ni/wp-content/uploads/2017/11/Conferencia-20de-Nov-2017-2.jpg"></img>
                <h2>Conductores continúan incumpliendo con la Ley de Tránsito</h2>
                <p>Tnte. Grethel Vargas Espinoza El número de accidentes de tránsito en las diferentes vías del país aumentaron esta semana, con un total de 832 haciendo una diferencia de 82 accidentes…</p>

                <p><a class="btn btn-default" href="http://www.policia.gob.ni/?p=12547">Leer más &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded"src="http://quintamarcha.com/wp-content/uploads/2013/11/1-curso-conduccion-ford-nov-2013.jpg"></img>
                <h2>Talleres de conduccion</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://r.duckduckgo.com/l/?kh=-1&uddg=http%3A%2F%2Fquintamarcha.com%2Fwp-content%2Fuploads%2F2013%2F11%2F1-curso-conduccion-ford-nov-2013.jpg">Leer más &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img style="height:250px" class="img img-responsive img-rounded"src="https://cartelesdeseguridad.files.wordpress.com/2010/06/senales-de-transito2.png"></img>
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Leer más &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
