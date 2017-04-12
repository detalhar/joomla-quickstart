<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.detalharclean
 *
 * @copyright   Copyright (C) 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$app       = JFactory::getApplication();
$doc       = JFactory::getDocument();
$sitename 	= $app->get('sitename');
$colorPrimary = $this->params->get('colorPrimary');
$colorSecundary = $this->params->get('colorSecundary');
$colorTerciary = $this->params->get('colorTerciary');
$logo = $this->params->get('logo');
$bgTop = $this->params->get('bgTop');
$bgBodyColor = $this->params->get('bgBodyColor');
$bgBodyImg = $this->params->get('bgBodyImg');
$bgFooter = $this->params->get('bgFooter');
$linearRadial = $this->params->get('linearRadial');
$gradientColor1 = $this->params->get('gradientColor1');
$gradientColor2 = $this->params->get('gradientColor2');
$iconH3 = $this->params->get('iconH3');
$fbPublisher = $this->params->get('fbPublisher');
$fbAuthor = $this->params->get('fbAuthor');


// Facebook metadata


$page_class = $app->getParams('com_content');


// Add JavaScript Frameworks.
JHtml::_('bootstrap.framework');

// Load optional rtl Bootstrap css and Bootstrap bugfixes.
JHtmlBootstrap::loadCss(false, $this->direction);

// Add Stylesheet.
$this->addStyleSheet('media/jui/css/icomoon.css');
// $this->addStyleSheet('media/jui/css/bootstrap.min.css');
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/template.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/style.css');
$doc->addScript('templates/' . $this->template . '/js/main.js');
// $doc->addScript('templates/' . $this->template . '/js/jquery-1.11.1.min.js');

?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!-- Facebook metadata -->
	<meta property="article:publisher" content="<?php echo $fbPublisher; ?>" />
	<meta property="article:author" content="<?php echo $fbPublisher; ?>" />
	
	<script src="templates/dt-clean/js/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<jdoc:include type="head" />
	<!--[if lt IE 9]>
		<script src="<?php echo $this->baseurl; ?>/media/jui/js/html5.js"></script>
		<![endif]-->

	<style>

		a {
			color: <?php echo $colorPrimary ?>;	
		}
		
		.dt-menu {
			background: <?php echo $colorTerciary ?>
		}

	    .nav > li > a {
			color: <?php echo $colorPrimary ?>;	
	    }

	    .nav > li > a:hover,
	    .nav > li > a:focus {
	      background: <?php echo $colorPrimary ?>;
	      color: #fff;
	    }

	    .nav > li.active > a {
			color: #fff;
			background: <?php echo $colorPrimary ?>;
	    }

	    .nav > li.active > a:hover {
	      color: #fff;
	    }

	    .botao {
	    	background: <?php echo $colorPrimary ?>;   	
	    }

		.botao:hover {
	    	background: <?php echo $colorSecundary ?>;
	    	text-decoration: none;
		}

		.dt-body-c h3 {
			color: <?php echo $colorPrimary ?>;
		}

	</style>

	</head>
	<body class="<?php echo $page_class->get('pageclass_sfx');?>">

		<section class="dt-topo">
			<div class="row-fluid">
				<div class="span6">
					<a href="<?php echo $this->baseurl; ?>">
						<img class="logo" src="<?php echo $logo ?>">
					</a>					
				</div>
			</div>
		</section>

		<section class="dt-menu">
			<div class="row-fluid">
				<!-- MENU COMUM E RESPONSIVO -->
				<div class="span12 hidden-phone" style="min-height: auto;">
					<jdoc:include type="modules" name="dt-menu" style="none" />
				</div>

				<div class="navbar visible-phone span12">
			      <div class="navbar-inner">
			        <div class="container" style="background-color: <?php echo $colorPrimary ?>">
			          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			          </button>
			          <a class="brand visible-phone" href="#" data-toggle="collapse" data-target=".nav-collapse" style="font-weight: bold; color: #333;">Menu de navegação</a>
			          <div class="nav-collapse collapse">

						<jdoc:include type="modules" name="dt-menu" style="none" />

			          </div><!--/.nav-collapse -->
			        </div>
			      </div>
			    </div>
				<!-- FIM MENU COMUM E RESPONSIVO -->
			</div>
		</section>

		<?php if ($this->countModules('dt-slideshow')) : ?>
		<section class="dt-slideshow">
				<div class="row-fluid">
					<div class="span12">
						<jdoc:include type="modules" name="dt-slideshow" style="none" />
					</div>
				</div>
		</section>
		<?php endif; ?>

		<?php if ($this->countModules('dt-body-a')) : ?>
		<section class="dt-body-a">
			<div class="row-fluid">
				<jdoc:include type="modules" name="dt-body-a" style="xhtml" />
			</div>
		</section>
		<?php endif; ?>

		<section class="dt-conteudo">
			<div class="row-fluid">
				<jdoc:include type="message" />
				<jdoc:include type="component" />			
			</div>
		</section>

		<?php if ($this->countModules('dt-body-b')) : ?>
		<section class="dt-body-b">
			<div class="row-fluid">
				<jdoc:include type="modules" name="dt-body-b" style="xhtml" />
			</div>
		</section>
		<?php endif; ?>

		<?php if ($this->countModules('dt-body-c')) : ?>
		<section class="dt-body-c">
			<div class="row-fluid">
				<jdoc:include type="modules" name="dt-body-c" style="xhtml" />
			</div>
		</section>
		<?php endif; ?>

		<section class="dt-rodape">
			<div class="row-fluid">
				<jdoc:include type="modules" name="dt-footer-a" style="xhtml" />
			</div>
		</section>

		<section class="dt-copy">
			<div class="row-fluid">
				<div class="span10">
					<p>&copy; Copyright <?php echo date('Y'); ?> - Todos os direitos reservados para <?php echo $sitename; ?></p>
				</div>
				<div class="span1 pull-right text-center">
					<div class="detalink">
						<a href="http://www.detalharweb.com.br" target="_blank">
							<img src="templates/dt-clean/img/logo-deta-cor03.png" alt="Este site foi desenvolvido por DETALHAR Agência Digital" title="Desenvolvido por DETALHAR Criação de Sites">
						</a>
					</div>					
				</div>
			</div>
		</section>

		<jdoc:include type="modules" name="debug" />
	</body>
</html>