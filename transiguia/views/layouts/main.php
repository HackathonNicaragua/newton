<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */


if (Yii::$app->controller->action->id === 'login') { 
/**
 * Do not use this code in your template. Remove it. 
 * Instead, use the code  $this->layout = '//main-login'; in your controller.
 */
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {

    if (class_exists('backend\assets\AppAsset')) {
        backend\assets\AppAsset::register($this);
    } else {
        app\assets\AppAsset::register($this);
    }

    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    ?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link rel="stylesheet" href="../../JavaScript/css/alertify.min.css">
        <link rel="stylesheet" href="../../JavaScript/jquery-ui.css">
        <link rel="stylesheet" href="../../animate.css/animate.css">
        <script type="text/javascript" src="../../JavaScript/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="../../JavaScript/jquery-ui.js"></script>
        <script type="text/javascript" src="../../JavaScript/angular.min.js"></script>
        <script type="text/javascript" src="../../JavaScript/main.js"></script>
        <script type="text/javascript" src="../../JavaScript/alertify.js"></script>
        <script type="text/javascript" src="../../JavaScript/alertify.min.js"></script>
        <script type="text/javascript" src="../../JavaScript/canvasjs.min.js"></script>
        <link rel="stylesheet" href="../../JavaScript/css/themes/bootstrap.min.css">
        <?php $this->head() ?>
    </head>
    <body class="hold-transition skin-blue sidebar-mini" ng-app='MyApp'>
    <?php $this->beginBody() ?>
    <div class="wrapper">

        <?= $this->render(
            'header.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'left.php',
            ['directoryAsset' => $directoryAsset]
        )
        ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>

    </div>

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>
