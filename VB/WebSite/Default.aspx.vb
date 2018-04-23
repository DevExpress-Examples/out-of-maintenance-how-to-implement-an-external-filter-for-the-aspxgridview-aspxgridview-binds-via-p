Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Data.Filtering
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors



Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private Function GetFilterExpression() As String
		Dim res_str As String = String.Empty
		Dim lst_operator As New List(Of CriteriaOperator)()

		If Not String.IsNullOrEmpty(txtFirstName.Text) Then
			lst_operator.Add(New BinaryOperator("FirstName", String.Format("%{0}%", txtFirstName.Text), BinaryOperatorType.Like))
		End If

		If Not String.IsNullOrEmpty(txtLastName.Text) Then
			lst_operator.Add(New BinaryOperator("LastName", String.Format("%{0}%", txtLastName.Text), BinaryOperatorType.Like))
		End If

		If deHDFrom.Value IsNot Nothing Then
			lst_operator.Add(New BinaryOperator("HireDate", deHDFrom.Date, BinaryOperatorType.GreaterOrEqual))
		End If

		If deHDTo.Value IsNot Nothing Then
			lst_operator.Add(New BinaryOperator("HireDate", deHDTo.Date, BinaryOperatorType.LessOrEqual))
		End If

		If lst_operator.Count > 0 Then
			Dim op(lst_operator.Count - 1) As CriteriaOperator
			For i As Integer = 0 To lst_operator.Count - 1
				op(i) = lst_operator(i)
			Next i
			Dim res_operator As CriteriaOperator = New GroupOperator(GroupOperatorType.And, op)
			res_str = res_operator.ToString()
		End If

		Return res_str
	End Function

	Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs)
		gvData.DataBind()
	End Sub

	Protected Sub gvData_DataBinding(ByVal sender As Object, ByVal e As EventArgs)
		Dim f_expression As String = GetFilterExpression()

		If f_expression = String.Empty Then
			gvData.DataSource = Nothing
		Else
			gvData.DataSource = adsData
		End If

		gvData.FilterExpression = f_expression
	End Sub
End Class
