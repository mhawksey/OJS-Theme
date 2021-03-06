{**
 * templates/article/footer.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Article View -- Footer component.
 *}

{if $sharingEnabled}
<!-- start AddThis -->
	{if isset($sharingDropDownMenu)}
		{if isset($sharingUserName)}
			<script type="text/javascript">
				var addthis_pub = '{$sharingUserName}';
			</script>
		{/if}
		<br />
		<br />
		<div class="addthis_container">
			<a href="http://www.addthis.com/bookmark.php"
				onmouseover="return addthis_open(this, '', '{$sharingArticleURL|escape:"javascript"}', '{$sharingArticleTitle|escape:"javascript"}')"
				onmouseout="addthis_close()" onclick="return addthis_sendto()">
					<img src="{$sharingButtonUrl}" width="{$sharingButtonWidth}" height="{$sharingButtonHeight}" border="0" alt="Bookmark and Share" style="border:0;padding:0" />
			</a>
			<script type="text/javascript" src="http://s7.addthis.com/js/200/addthis_widget.js"></script>
		</div>
	{else}
		<a href="http://www.addthis.com/bookmark.php"
			onclick="window.open('http://www.addthis.com/bookmark.php?pub={$sharingUserName|escape:"url"}&amp;url={$sharingRequestURL|escape:"url"}&amp;title={$sharingArticleTitle|escape:"url"}', 'addthis',
			                     'scrollbars=yes,menubar=no,width=620,height=520,resizable=yes,toolbar=no,location=no,status=no');
			         return false;"
			title="Bookmark using any bookmark manager!" target="_blank">
				<img src="{$sharingButtonUrl}" width="{$sharingButtonWidth}" height="{$sharingButtonHeight}" border="0" alt="Bookmark and Share" style="border:0;padding:0" />
		</a>
	{/if}
<!-- end AddThis -->
{/if}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->

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
<script type="text/javascript" src="{$baseUrl}/plugins/themes/mpgAlt/js/menu.js"></script>
<script type='text/javascript' src='https://d1bxh8uas1mnw7.cloudfront.net/assets/embed.js'></script>
{/strip}
</div>
<script type="text/javascript">
{literal}
  window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);
 
  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };
 
  return t;
}(document, "script", "twitter-wjs"));
 {/literal}
</script>

{if $defineTermsContextId}
<script type="text/javascript">
{literal}
<!--
	// Open "Define Terms" context when double-clicking any text
	function openSearchTermWindow(url) {
		var term;
		if (window.getSelection) {
			term = window.getSelection();
		} else if (document.getSelection) {
			term = document.getSelection();
		} else if(document.selection && document.selection.createRange && document.selection.type.toLowerCase() == 'text') {
			var range = document.selection.createRange();
			term = range.text;
		}
		if (term != ""){
			if (url.indexOf('?') > -1) openRTWindowWithToolbar(url + '&defineTerm=' + term);
			else openRTWindowWithToolbar(url + '?defineTerm=' + term);
		}
	}

	if(document.captureEvents) {
		document.captureEvents(Event.DBLCLICK);
	}

	// Make sure to only open the reading tools when double clicking within the galley	
	if (document.getElementById('inlinePdfResizer')) {
		context = document.getElementById('inlinePdfResizer');	
	}
	else if (document.getElementById('content')) {
		context = document.getElementById('content');	
	}
	else {
		context = document;
	}

	context.ondblclick = new Function("openSearchTermWindow('{/literal}{url page="rt" op="context" path=$articleId|to_array:$galleyId:$defineTermsContextId escape=false}{literal}')");
// -->
{/literal}
</script>
{/if}

{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}
</div> <!-- container -->
</body>
</html>
