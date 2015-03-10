<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Jimmy's Mortgage Calculator
        
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

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
     

    
            
        <br />
        
            
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
      
    </form>
</body>
</html>
