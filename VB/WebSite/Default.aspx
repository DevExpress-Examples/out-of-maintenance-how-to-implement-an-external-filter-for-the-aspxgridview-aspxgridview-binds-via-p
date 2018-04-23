<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<table>
			<tr>
				<td align="center">
					<dx:ASPxRoundPanel ID="rpFilter" runat="server" Width="200px" HeaderText="Filter">
						<PanelCollection>
							<dx:PanelContent runat="server">
								<table>
									<tr align="left">
										<td>
											<dx:ASPxLabel ID="lblFirstName" runat="server" Text="First name:">
											</dx:ASPxLabel>
										</td>
										<td>
											<dx:ASPxLabel ID="lblLastName" runat="server" Text="Last name:">
											</dx:ASPxLabel>
										</td>
									</tr>
									<tr>
										<td>
											<dx:ASPxTextBox ID="txtFirstName" runat="server" Width="170px">
											</dx:ASPxTextBox>
										</td>
										<td>
											<dx:ASPxTextBox ID="txtLastName" runat="server" Width="170px">
											</dx:ASPxTextBox>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<dx:ASPxRoundPanel ID="rpfHireDate" runat="server" Width="100%" HeaderText="Hire date">
												<PanelCollection>
													<dx:PanelContent runat="server">
														<table>
															<tr>
																<td align="left">
																	<dx:ASPxLabel ID="lbHDFrom" runat="server" Text="From:">
																	</dx:ASPxLabel>
																</td>
																<td align="left">
																	<dx:ASPxLabel ID="lbHDTo" runat="server" Text="To:">
																	</dx:ASPxLabel>
																</td>
															</tr>
															<tr>
																<td>
																	<dx:ASPxDateEdit ID="deHDFrom" runat="server">
																	</dx:ASPxDateEdit>
																</td>
																<td>
																	<dx:ASPxDateEdit ID="deHDTo" runat="server">
																	</dx:ASPxDateEdit>
																</td>
															</tr>
														</table>
													</dx:PanelContent>
												</PanelCollection>
											</dx:ASPxRoundPanel>
										</td>
									</tr>
									<tr>
										<td colspan="2" align="right">
											<dx:ASPxButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click">
											</dx:ASPxButton>
										</td>
									</tr>
								</table>
							</dx:PanelContent>
						</PanelCollection>
					</dx:ASPxRoundPanel>
				</td>
			</tr>
			<tr>
				<td>
					<dx:ASPxGridView ID="gvData" runat="server" AutoGenerateColumns="False" KeyFieldName="EmployeeID"
						OnDataBinding="gvData_DataBinding">
						<Columns>
							<dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="True" VisibleIndex="0">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="1">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="3">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataTextColumn FieldName="TitleOfCourtesy" VisibleIndex="4">
							</dx:GridViewDataTextColumn>
							<dx:GridViewDataDateColumn FieldName="BirthDate" VisibleIndex="5">
							</dx:GridViewDataDateColumn>
							<dx:GridViewDataDateColumn FieldName="HireDate" VisibleIndex="6">
							</dx:GridViewDataDateColumn>
							<dx:GridViewDataTextColumn FieldName="City" VisibleIndex="7">
							</dx:GridViewDataTextColumn>
						</Columns>
					</dx:ASPxGridView>
				</td>
			</tr>
		</table>
		<asp:AccessDataSource ID="adsData" runat="server" DataFile="~/App_Data/Data.mdb"
			SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [City] FROM [Employees]">
		</asp:AccessDataSource>
		<br />
	</div>
	</form>
</body>
</html>