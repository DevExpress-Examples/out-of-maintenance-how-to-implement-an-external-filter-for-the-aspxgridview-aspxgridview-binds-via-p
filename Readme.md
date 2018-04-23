# How to implement an external filter for the ASPxGridView (ASPxGridView binds via postback)


<p><strong>UPDATED:<br /></strong><br />Starting with version 14.2, GridView provides the built-in Search / Find Panel functionality with the capability to locate it outside grid boundaries. This allows accomplishing a similar task with less effort and does not require so much extra code. See the <a href="https://community.devexpress.com/blogs/aspnet/archive/2014/11/19/asp-net-data-grid-enhancements-coming-soon-in-v14-2.aspx">ASP.NET Data Grid: Enhancements</a> post to learn more about this new functionality.<br /><br />The example demonstrates how to implement an external filter for the ASPxGridView control. To accomplish this, handle the <strong>ASPxGridView.DataBinding</strong> event and specify a value of the <strong>ASPxGridView.FilterExpression</strong> property by using the BinaryOperator / GroupOperator types based on external editors values.</p>
<p>See also: <a href="https://www.devexpress.com/Support/Center/p/E3811">How to implement an external filter for the ASPxGridView (ASPxGridView binds via its callback)</a></p>

<br/>


