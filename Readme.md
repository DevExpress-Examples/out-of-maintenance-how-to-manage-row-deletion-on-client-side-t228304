<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to manage row deletion on client side
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t228304/)**
<!-- run online end -->


<p>This example demonstrates how to use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientGridView_GetSelectedKeysOnPagetopic">ASPxClientGridView.GetSelectedKeysOnPage</a>  and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientGridView_GetVisibleRowsOnPagetopic">ASPxClientGridView.GetVisibleRowsOnPage</a> methods to prevent a user from deleting all rows on a single grid page (if editing logic requires it).</p>
<p>To do this, you can compare the array length of keys obtained through GetSelectedKeysOnPage client method (returns keys only on a visible page) and the number of rows on a page obtained through GetVisibleRowsOnPage client method.</p>

<br/>


