{**
 * templates/common/search.tpl
 *
 *
 * Search Bar
 *
 *}
<div id="searchbar">
  <form id="simpleSearchForm" method="post" action="{url page="search" op="search"}">
    <table cellspacing="0" cellpadding="0" class="search-box">
      <tbody>
        <tr>
          <td class="gsc-input"><input id="simpleQuery" name="simpleQuery" type="text" aria-label="Search" value="" class="textField" /><input type="hidden" id="searchField" name="searchField" value="query" /></td>
          <td  class="gsc-submit"><input type="submit" value="" class="button" /></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
