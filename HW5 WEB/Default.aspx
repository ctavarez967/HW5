﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
    <style type="text/css">
        #Header {
            font-weight: 700;
            text-align: center;
        }
        .auto-style1 {
            font-size: small;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="calculator">
    
           <h1 style="text-align:center;">Cristian's Mortgage Calculator </h1>
               
        <br /><br />
     
            <strong>*Loan Amount:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
                  
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="*Please Enter a Loan Amount" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
            <strong>*Annual Interest %:</strong>&nbsp; <asp:TextBox ID="tbAnnualInterest" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="*Please Enter a Annual Interest %" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br /><br />

            <strong>*Loan Term (Yrs):</strong>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="*Please Enter a Loan Term in Years" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br />
           <br />
           *<em><span class="auto-style1">Required Fields</span></em><br />
           <br />

            
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" BackColor="White" BorderColor="Black" BorderStyle="Solid" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Overline="False" Text="Clear" Width="70px" BackColor="White" BorderColor="Black" BorderStyle="Solid" />
        
        
           <br />           
           <br />
           <br />
                
           <strong>Monthly Payment:</strong> <asp:Label ID="lblMonthlyPmt" runat="server">Welcome to my mortgage calculator. Please complete the fields about to have your monthly payment and loan repayment schedule calculated for you.</asp:Label>
        
     
           <br />
           <br />
           <br />
        
        <asp:GridView ID="loanGridView" runat="server" style="text-align: center">
            <AlternatingRowStyle CssClass ="grid_cells_style" /> </asp:GridView>   

            
        </div>
    </form>
</body>
</html>
