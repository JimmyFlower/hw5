<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <title>Jimmy's Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bold">
    
 <h1>Jimmy's Mortgage Calculator</h1>
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
        <span class="errormessage">
             <br />
             <asp:RequiredFieldValidator ID="tbLoanAmount" runat="server"
                   ControltoValidate ="tbLoanAmt"
                   ErrorMessage ="Please enter a valid Loan Amount :P">
                  
               </asp:RequiredFieldValidator>                  
           </span>          
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
               <span class="errormessage">
               <br />
               <asp:RequiredFieldValidator ID="tbAnnInt" runat="server"
                    ControltoValidate ="tbAnnualInterest"
                    ErrorMessage ="Please enter a valid Annual Interest % (please enter 2 for 2%)">

               </asp:RequiredFieldValidator>
                  
           </span>
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        <span class="errormessage">
               <br />
               <asp:RequiredFieldValidator ID="tbTerm" runat="server"                   ControltoValidate ="tbLoanTerm"
                ErrorMessage ="Please enter a valid Loan Term. (Please enter 2 for 2years)">

                </asp:RequiredFieldValidator>
                  
            </span>
      <br /> 
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" CssClass="auto-style1" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="auto-style1" />
     

    
            
        <br />
     

    

        <% If Not IsPostBack Then%>

        Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.

        <% Else%>
           
        <div id="results">
        <p id="results_title">
        Monthly Payment: <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        </p>
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="gridview" />
        </div>

        <% End If%>
    </form>
</body>
</html>
