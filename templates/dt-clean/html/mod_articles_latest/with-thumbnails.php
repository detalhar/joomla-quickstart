<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_latest
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<ul class="latestnews<?php echo $moduleclass_sfx; ?>">
<?php foreach ($list as $item) :  ?>
	<?php $images = json_decode($item->images);
	$shortDescription = substr($item->introtext, 0, 100); ?>
	<li itemscope itemtype="http://schema.org/Article">
		<a href="<?php echo $item->link; ?>" itemprop="url">
			<img src="<?php echo $images->image_intro; ?>" alt="<?php echo $item->title; ?>" title="<?php echo $item->title; ?>">
		</a>
			<h4 itemprop="name"><a href="<?php echo $item->link; ?>" itemprop="url"><?php echo $item->title; ?></a></h4>
			<p itemprop="name"><?php echo $shortDescription; ?></p>
	</li>
	<div class="clearfix"></div>
<?php endforeach; ?>
</ul>