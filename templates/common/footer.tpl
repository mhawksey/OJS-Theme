{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2000-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->
</div><!-- container -->
{strip}
{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
	{assign var=issn value=$currentJournal->getSetting('onlineIssn')}
{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
	{assign var=issn value=$currentJournal->getSetting('printIssn')}
{/if}

{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
<div id="pageFooter">
	<div id="standardFooter">      
  		<p id="social"><a href="http://twitter.com/A_L_T" target="_blank"><span class="screen_reader">Visit ALT on Twitter</span><i class="fa fa-twitter-square"></i></a> <a href="https://google.com/+ALTacuk" target="_blank"><span class="screen_reader">Visit ALT on Google+</span><i class="fa fa-google-plus-square"></i></a> <a href="http://www.linkedin.com/company/association-for-learning-technology" target="_blank"><span class="screen_reader">Visit ALT on LinkedIn"</span><i class="fa fa-linkedin-square"></i></a> <a href="http://www.youtube.com/user/ClipsFromALT" target="_blank"><span class="screen_reader">Visit ClipsFromALT on YouTube</span><i class="fa fa-youtube-square"></i></a> <a href="https://www.flickr.com/photos/PicsFromALT/" target="_blank"><span class="screen_reader">Visit PicsFromALT on Flickr</span><i class="fa fa-flickr"></i></a> <a href="/feeds"><span class="screen_reader">See ALT's RSS Feeds</span><i class="fa fa-rss-square"></i></a></p>
		<p>Association for Learning Technology | Registered charity number: 1160039<br><a href="mailto:enquiries@alt.ac.uk" style="color:#fff">enquiries@alt.ac.uk</a> | Tel: +44 (0)1865 819 009</p>
	</div>
	<div class="customFooter">
		{if $pageFooter}
			{$pageFooter}
		{/if}
		{if $issn}
			<p>ISSN: {$issn}</p>
		{/if}
		{call_hook name="Templates::Common::Footer::PageFooter"}
	</div>
{/strip}
<script type="text/javascript" src="{$baseUrl}/plugins/themes/mpgAlt/js/menu.js"></script>
</div>


{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}


</body>
</html>
