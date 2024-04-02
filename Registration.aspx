<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Onur_Altuntas_HW3.Registration" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
            <div class="logo">
                
            </div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <div class="booking-card">
            
            <div class="booking-elements">
               <asp:TextBox ID="lbRegSeatNumbertxt" runat="server" 
                    ReadOnly="True"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegName"></asp:RequiredFieldValidator>
            </div>
            <div class="booking-elements">
                <asp:TextBox ID="txtRegName"  runat="server" placeholder="Name" ></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegName"></asp:RequiredFieldValidator>
            </div>
            <div class="booking-elements">
                 <asp:TextBox ID="txtRegSurname" runat="server" placeholder="Surname"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegSurname"></asp:RequiredFieldValidator>
            </div>
            <div class="booking-elements">
                  <asp:TextBox ID="txtRegPhone" runat="server"  placeholder="Phone"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegPhone"></asp:RequiredFieldValidator>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                ControlToValidate="txtRegPhone" runat="server"
                 ErrorMessage="Sadece numara girilebilir"
                ValidationExpression="\d+">
                 </asp:RegularExpressionValidator>--%>
                
            </div>
            <div class="booking-elements">
                  <asp:TextBox ID="txtRegEmail" runat="server"  placeholder="Email"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegEmail"></asp:RequiredFieldValidator>

            </div>
            <div class="booking-elements">

                  <asp:TextBox ID="txtRegTC" runat="server"  placeholder="TC"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen boş bırakmayınız." ControlToValidate="txtRegTC"></asp:RequiredFieldValidator>
               <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                ControlToValidate="txtRegTC" runat="server"
                ErrorMessage="Sadece numara girilebilir"
                ValidationExpression="\d+">
                 </asp:RegularExpressionValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    ControlToValidate="txtRegTC" runat="server"
                   ValidationExpression = "^[\s\S]{11,11}$" ErrorMessage="Tc no 11 hane olmalı.">
                     </asp:RegularExpressionValidator>--%>
                      
            </div>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="booking-elements">
                <asp:Button ID="btnRegister" runat="server" Text="Kayıt ol" Height="50px" Width="200px" OnClick="btnRegister_Click"/><br />
                <asp:Button ID="Button1" runat="server" Text="Anasayfaya Dön" Height="50px" Width="200px" OnClientClick="CallConfirmBox()"/><br />
             
            </div>
             </ContentTemplate>
             <triggers>
            <asp:asyncpostbacktrigger controlid="btnRegister" eventname="Click" />
            </triggers>
</asp:UpdatePanel>
        </div>
   
    </form>
    
</body>
</html>

<script type="text/javascript">
       function CallConfirmBox() {
               if (confirm("Kaydınız başarıyla alındı. Anasayfaya dönmek için Tamam'a tıklayınız.")) {
                       //OK – Do your stuff or call any callback method here..
                   window.location.href = 'Default.aspx'
               } else {
                       //CANCEL – Do your stuff or call any callback method here..
                     
               }
       }
</script>

<style>
     body{
        margin:0;
        padding:0;
    }
    .header{
        width:auto;
        height:100px;
        background-color:darkblue;
    }
    .logo{
       position: relative;
       left: 1em;
       width:220px;
       height:50px;
       background-image:url("https://www.anadolu.com.tr/img/logo-invert.png");
    }
    .booking-card{
        margin:20px;
        width:auto;
        height:200px;
        background-color:ghostwhite;
        border-radius:6px;
        border:1px solid;
        border-color:transparent;
        box-shadow:5px 5px 5px rgb(128, 128, 128);
        display:flex;
        align-items: center;
        justify-content: center;
    }
     .booking-elements input[type=submit] {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: white;
        border: 1px solid;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
        background-color:darkblue;
   
        justify-content: center;
    }
     .booking-elements input[type=text]{
        height:50px;
        text-align:center;
        color: darkblue;
        border: 1px solid;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
       
        
    }
     .booking-elements{
    }
    span {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        font-size:18px;
        height: auto;
        width: auto;
        border: 0;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
        text-align:center;    
    }
</style>
