using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Data.Filtering;
using DevExpress.Web;




public partial class _Default : System.Web.UI.Page {
    private string GetFilterExpression() {
        string res_str = string.Empty;
        List<CriteriaOperator> lst_operator = new List<CriteriaOperator>();

        if (!string.IsNullOrEmpty(txtFirstName.Text))
            lst_operator.Add(new FunctionOperator(FunctionOperatorType.Contains, new OperandProperty("FirstName"), new OperandValue(txtFirstName.Text)));

        if (!string.IsNullOrEmpty(txtLastName.Text))
            lst_operator.Add(new FunctionOperator(FunctionOperatorType.Contains, new OperandProperty("LastName"), new OperandValue(txtLastName.Text)));

        if (deHDFrom.Value != null)
            lst_operator.Add(new BinaryOperator("HireDate", deHDFrom.Date, BinaryOperatorType.GreaterOrEqual));

        if (deHDTo.Value != null)
            lst_operator.Add(new BinaryOperator("HireDate", deHDTo.Date, BinaryOperatorType.LessOrEqual));

        if (lst_operator.Count > 0) {
            CriteriaOperator[] op = new CriteriaOperator[lst_operator.Count];
            for (int i = 0; i < lst_operator.Count; i++)
                op[i] = lst_operator[i];
            CriteriaOperator res_operator = new GroupOperator(GroupOperatorType.And, op);
            res_str = res_operator.ToString();
        }

        return res_str;
    }

    protected void btnSearch_Click(object sender, EventArgs e) {
        gvData.DataBind();
    }

    protected void gvData_DataBinding(object sender, EventArgs e) {
        string f_expression = GetFilterExpression();

        if (f_expression == string.Empty)
            gvData.DataSource = null;
        else
            gvData.DataSource = adsData;

        gvData.FilterExpression = f_expression;
    }
}
