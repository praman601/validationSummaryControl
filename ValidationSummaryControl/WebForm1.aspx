<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ValidationSummaryControl.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td colspan="2">
                        <b>User Registration</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                            ErrorMessage="Email is Required" ControlToValidate="txtEmail"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                            ErrorMessage="Invalid Email" ControlToValidate="txtEmail"
                            ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            Username:
                        </b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatoruserName" runat="server" 
                            ErrorMessage="Username is Required" ControlToValidate="txtUsername"
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Password:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                            ErrorMessage="Password is Required" ControlToValidate="txtPassword"
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            Confirm Password:
                        </b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmpassword" runat="server" 
                            ErrorMessage="Confirm Password is Required" ControlToValidate="txtConfirmPassword"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorConfirm" runat="server" 
                            ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                            type="String" Operator="Equal"   ForeColor="Red"                         

                            ErrorMessage="Password and Confirm Password should be same" Display="Dynamic">*</asp:CompareValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" HeaderText="Validation Errors" runat="server" ShowMessageBox="True" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
    <p>
&nbsp;
    </p>
</body>
</html>
