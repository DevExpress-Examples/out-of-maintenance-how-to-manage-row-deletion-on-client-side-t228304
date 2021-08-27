<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541663/14.2.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T228304)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
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


