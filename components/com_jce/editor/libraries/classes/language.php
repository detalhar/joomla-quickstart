<?php

/**
 * @package   	JCE
 * @copyright 	Copyright (c) 2009-2016 Ryan Demmer. All rights reserved.
 * @license   	GNU/GPL 2 or later - http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * JCE is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
abstract class WFLanguage {

    protected static $instance;

    /*
     * Check a lnagueg file exists and is the correct version
     */
    protected static function check($tag) {
        return file_exists(JPATH_SITE . '/language/' . $tag . '/' . $tag . '.com_jce.ini');
    }

    /**
     * Return the curernt language code
     *
     * @access public
     * @return language code
     */
    public static function getDir() {
        $language   = JFactory::getLanguage();
        $tag        = self::getTag();

        if ($language->getTag() == $tag) {
            return $language->isRTL() ? 'rtl' : 'ltr';
        }

        return 'ltr';
    }

    /**
     * Return the curernt language code
     *
     * @access public
     * @return language code
     */
    public static function getTag() {
        $language   = JFactory::getLanguage();
        $tag        = $language->getTag();

        if (!isset(self::$instance)) {
            if (self::check($tag)) {
                self::$instance = $tag;
            } else {
                self::$instance = 'en-GB';
            }
        }
        return self::$instance;
    }

    /**
     * Return the curernt language code
     *
     * @access public
     * @return language code
     */
    public static function getCode() {
        $tag = self::getTag();

        return substr($tag, 0, strpos($tag, '-'));
    }

    /**
     * Load a language file
     *
     * @param string $prefix Language prefix
     * @param object $path[optional] Base path
     */
    public static function load($prefix, $path = JPATH_SITE) {
        $language   = JFactory::getLanguage();
        $tag        = self::getTag();

        $language->load($prefix, $path, $tag, true);
    }
}
?>
