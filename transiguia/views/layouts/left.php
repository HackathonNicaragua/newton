<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src=<?php echo Yii::$app->homeUrl."images/LogoTransiGuiaWhiteSM.png" ?> class="" style="max-width:100%" alt="User Image"/>
            </div>
            <div class="pull-left info">

            </div>
        </div>

        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Menu', 'options' => ['class' => 'header']],
                    ['label' => 'Inicio', 'icon' => 'home', 'url' => ['site/index']],
                    ['label' => 'Prueba tus conocimientos', 'icon' => 'fa fa-id-card', 'url' => ['site/test']],
                    ['label' => '¿Quieres saber más?', 'icon' => 'question-circle', 'url' => ['site/saber-mas']],
                    ['label' => 'Calculadora de multas', 'icon' => 'calculator', 'url' => ['site/calculadora']],
                    ['label' => 'Te puede interesar', 'icon' => 'hand-peace-o', 'url' => ['site/interes']],
                    ['label' => 'Señalización', 'icon' => 'warning', 'url' => ['site/senales']],
                    //['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    // [
                    //     'label' => 'TransiGuia',
                    //     'icon' => 'car',
                    //     'url' => '#',
                    //     'items' => [
                    //         ['label' => 'Señalización', 'icon' => 'warning', 'url' => ['site/seniales'],],
                    //         ['label' => '¡Consigue tu licencia!', 'icon' => 'dashboard', 'url' => ['/debug'],],
                    //         /*[
                    //             'label' => 'Level One',
                    //             'icon' => 'circle-o',
                    //             'url' => '#',
                    //             'items' => [
                    //                 ['label' => 'Level Two', 'icon' => 'circle-o', 'url' => '#',],
                    //                 [
                    //                     'label' => 'Level Two',
                    //                     'icon' => 'circle-o',
                    //                     'url' => '#',
                    //                     'items' => [
                    //                         ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                    //                         ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                    //                     ],
                    //                 ],
                    //             ],
                    //         ],*/
                    //     ],
                    // ],
                ],
            ]
        ) ?>

    </section>

</aside>
