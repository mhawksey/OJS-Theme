<?php

/**
 * @file plugins/themes/mpgAlt/MPGThemePlugin.inc.php
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class MPGThemePlugin
 * @ingroup plugins_themes_mpg
 *
 * @brief "mpg" theme plugin
 */

import('classes.plugins.ThemePlugin');

class MPGAltThemePlugin extends ThemePlugin {
	/**
	 * Get the name of this plugin. The name must be unique within
	 * its category.
	 * @return String name of plugin
	 */
	function getName() {
		return 'MPGAltThemePlugin';
	}

	function getDisplayName() {
		return 'Mason Publishing Theme - ALT';
	}

	function getDescription() {
		return 'mpg layout';
	}

	function getLocaleFilename($locale) {
		return null; // No locale data
	}

	function activate(&$templateMgr) {
		$templateMgr->template_dir[0] = Core::getBaseDir() 
										. DIRECTORY_SEPARATOR 
										. 'plugins' 
										. DIRECTORY_SEPARATOR 
										. 'themes' 
										. DIRECTORY_SEPARATOR 
										. 'mpgAlt' 
										. DIRECTORY_SEPARATOR 
										. 'templates';   
											      
		$templateMgr->compile_id = 'mpgAltTheme';
	}
}

?>
