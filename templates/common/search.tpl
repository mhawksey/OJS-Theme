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
          <td class="gsc-input"><input name="search box" type="search" aria-label="Search" value="" class="textField" /></td>
          <td><input type="submit" value="" class="button" /></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
