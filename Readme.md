<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128540980/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3748)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to implement an external filter for the ASPxGridView (ASPxGridView binds via postback)
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3748/)**
<!-- run online end -->


<p><strong>UPDATED:<br /></strong><br />Starting with version 14.2, GridView provides the built-in Search / Find Panel functionality with the capability to locate it outside grid boundaries. This allows accomplishing a similar task with less effort and does not require so much extra code. See the <a href="https://community.devexpress.com/blogs/aspnet/archive/2014/11/19/asp-net-data-grid-enhancements-coming-soon-in-v14-2.aspx">ASP.NET Data Grid: Enhancements</a> post to learn more about this new functionality.<br /><br />The example demonstrates how to implement an external filter for the ASPxGridView control. To accomplish this, handle the <strong>ASPxGridView.DataBinding</strong> event and specify a value of the <strong>ASPxGridView.FilterExpression</strong> property by using the BinaryOperator / GroupOperator types based on external editors values.</p>
<p>See also: <a href="https://www.devexpress.com/Support/Center/p/E3811">How to implement an external filter for the ASPxGridView (ASPxGridView binds via its callback)</a></p>

<br/>


