{**
 * plugins/blocks/navigation/block.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- navigation links.
 *
 *}
{if !$currentJournal || $currentJournal->getSetting('publishingMode') != $smarty.const.PUBLISHING_MODE_NONE}
<div class="pkp_block block_sidebarNavigation">
	<span class="title">{translate key="plugins.block.navigation.journalContent"}</span>
	<div class="content">
		{if $currentJournal}
		<ul>
			<li><a href="{url page="issue" op="archive"}">{translate key="navigation.browseByIssue"}</a></li>
			<li><a href="{url page="search" op="authors"}">{translate key="navigation.browseByAuthor"}</a></li>
			{call_hook name="Plugins::Blocks::Navigation::BrowseBy"}
			{if $hasOtherJournals}
				<li><a href="{url journal="index"}">{translate key="navigation.otherJournals"}</a></li>
				{if $siteCategoriesEnabled}<li><a href="{url journal="index" page="search" op="categories"}">	{translate key="navigation.categories"}</a></li>{/if}
			{/if}
		</ul>
		{/if}
	</div>
</div>
{/if}
