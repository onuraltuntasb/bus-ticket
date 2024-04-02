<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Onur_Altuntas_HW3.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Default Page</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="header">
            <div class="logo">
                
            </div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
        <ContentTemplate>
        <div class="booking-card">
            <div class="booking-elements">
                <asp:Label ID="lbKalkis" runat="server" Text="Kalkış Noktası"></asp:Label>
                <asp:DropDownList ID="cbKalkıs" runat="server" Width="350px" Height="50px">
                <asp:ListItem>BURSA</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="booking-elements" id="lbVaris">
               
                <asp:Label ID="lbKalkis0" runat="server" Text="Varış Noktası"></asp:Label>
               
                <asp:DropDownList ID="cbVaris" runat="server" Width="350px" Height="50px">
                <asp:ListItem>ISTANBUL</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="booking-date">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </div>
            <div class="booking-elements">
                <asp:Button ID="btnSearch" runat="server" Text="Sefer Sorgula" Height="50px" Width="200px" OnClick="btnSearch_Click" />
              
            </div>
        </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <div runat="server" id="results"  Visible="false">
            <ajaxToolkit:Accordion ID="Accordion1" runat="server" HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass" HeaderSelectedCssClass="headerSelectedCss" FadeTransitions="true" TransitionDuration="500" AutoSize="None" SelectedIndex="0" Height="716px">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                        <Header >
                            Kamil Koç
                        </Header>
                        
                        <Content><b><u></u></b>
                            <div class="show-card">
                                <div class="booking-elements">
                                    <asp:Label  ID="lbTime" runat="server" Width="150px" Text="9:00"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label  ID="lbKalkıs" runat="server" Width="300px" Text="BURSA"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label ID="lbVaris" runat="server" Width="300px" Text="İSTANBUL"></asp:Label>
                                </div>
                                 <div class="booking-elements">
                                    <asp:Label ID="lbPrice" runat="server" Width="300px" Text="62 ₺"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Button ID="btnKoltukSec" runat="server" Text="Koltuk Seç" OnClientClick="switchPane(1); return false;" Height="45px" Width="200px" />
                                     
                           
                                </div>

                                
                            </div>
                        </Content>
                    </ajaxToolkit:AccordionPane>
                    <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                        <Header>
                            Koltuk Seç
                        </Header>
                        <Content><b><u></u></b>
                            <div class="tableSeat">
                                <asp:Panel  ID="pnl1" runat="server" >
                                            <asp:Table border="0" ID="seattable" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell1" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            OnClick="s1click" runat="server" />1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s6" OnClick="s6click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s7" OnClick="s7click" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s12" OnClick="s12click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s13" OnClick="s13click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s18" OnClick="s18click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s19" OnClick="s19click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s24" OnClick="s24click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s25" OnClick="s25click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s31" OnClick="s31click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell11" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s2" ImageUrl="~/Images/available_seat_img.gif" OnClick="s2click"
                                                            runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s5" OnClick="s5click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s8" OnClick="s8click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell14" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s11" OnClick="s11click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell15" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s14" OnClick="s14click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell16" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s17" OnClick="s17click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell17" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s20" OnClick="s20click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell18" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s23" OnClick="s23click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell19" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s26" OnClick="s26click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell20" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s30" OnClick="s30click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell21" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell22" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell23" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell24" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell25" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell26" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell27" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell28" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell30" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s29" OnClick="s29click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell31" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s3" OnClick="s3click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s4" OnClick="s4click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s9" OnClick="s9click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s10" OnClick="s10click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell35" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s15" OnClick="s15click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s16" OnClick="s16click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s21" OnClick="s21click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s22" OnClick="s22click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s27" OnClick="s27click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s28" OnClick="s28click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                            </div>
                                     
                            <div style=" margin-left:200px;">
                                 <div class="selected-seats">
                                
                                <asp:Label ID="lbSelectedSeats" runat="server" Text="Seçtiğiniz Koltuklar"></asp:Label>
                                <asp:Label ID="lbWhichSeat" runat="server" Text="Hiç koltuk seçmediniz." Visible="false"></asp:Label><br /><br />
                                <asp:Label ID="labelInvisible" runat="server" Visible="true"></asp:Label><br /><br />
                                <asp:Label ID="labelgenderInv" runat="server" Visible="true"></asp:Label><br /><br />
                                
                                <asp:Button ID="btnPaymentMethod" runat="server" Text="Ödeme Adımına Geç" Height="50px" Width="200px" Visible="false" OnClick="btnPaymentMethod_Click" /><br />
                                <br />Cinsiyetinizi Seçiniz
                               
                                     <div runat="server" id="signup" Visible="false">
                                    Erkek<asp:ImageButton ID="imgBtnMale" runat="server" OnClick="imgbtnMale_Click"  ImageUrl="https://img.icons8.com/color/24/000000/male.png" /> <br /> 
                                    Kadın<asp:ImageButton ID="imgBtnFemale" runat="server" OnClick="imgbtnFemale_Click" ImageUrl="https://img.icons8.com/color/24/000000/female.png" />  
                                     </div>
                                    
                                
                            </div>
                            </div>
                           
                        </Content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion>
        </div>
            <br />

             <div runat="server" id="Div1"  Visible="false">
            <ajaxToolkit:Accordion ID="Accordion2" runat="server" HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass" HeaderSelectedCssClass="headerSelectedCss" FadeTransitions="true" TransitionDuration="500" AutoSize="None" SelectedIndex="0" Height="716px">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                        <Header >
                            Pamukkale
                        </Header>
                        
                        <Content><b><u></u></b>
                            <div class="show-card">
                                <div class="booking-elements">
                                    <asp:Label  ID="Label1" runat="server" Width="150px" Text="03:15"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label  ID="Label2" runat="server" Width="300px" Text="BURSA"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label ID="Label3" runat="server" Width="300px" Text="İSTANBUL"></asp:Label>
                                </div>
                                 <div class="booking-elements">
                                    <asp:Label ID="Label4" runat="server" Width="300px" Text="62 ₺"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Button ID="Button1" runat="server" Text="Koltuk Seç" OnClientClick="switchPane1(1); return false;" Height="45px" Width="200px" />
                                     <script type="text/javascript">
                                         function switchPane(index) {
                                             $find("<%= Accordion1.ClientID %>_AccordionExtender").set_SelectedIndex(index);
                                         }
                                    </script>
                           
                                </div>

                                
                            </div>
                        </Content>
                    </ajaxToolkit:AccordionPane>
                    <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server">
                        <Header>
                            Koltuk Seç
                        </Header>
                        <Content><b><u></u></b>
                            <div class="tableSeat">
                                <asp:Panel  ID="Panel1" runat="server" >
                                            <asp:Table border="0" ID="Table1" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell41" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            OnClick="s1click1" runat="server" />1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell42" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton6" OnClick="s6click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell43" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton7" OnClick="s7click1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell44" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton12" OnClick="s12click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell45" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton13" OnClick="s13click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell46" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton18" OnClick="s18click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell47" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton19" OnClick="s19click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell48" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton24" OnClick="s24click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell49" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton25" OnClick="s25click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell50" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton31" OnClick="s31click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell51" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/available_seat_img.gif" OnClick="s2click1"
                                                            runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell52" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton5" OnClick="s5click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell53" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton8" OnClick="s8click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell54" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton11" OnClick="s11click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell55" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton14" OnClick="s14click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell56" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton17" OnClick="s17click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell57" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton20" OnClick="s20click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell58" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton23" OnClick="s23click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell59" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton26" OnClick="s26click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell60" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton30" OnClick="s30click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell61" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell62" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell63" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell64" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell65" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell66" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell67" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell68" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell69" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell70" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton29" OnClick="s29click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell71" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton3" OnClick="s3click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell72" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton4" OnClick="s4click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell73" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton9" OnClick="s9click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell74" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton10" OnClick="s10click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell75" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton15" OnClick="s15click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell76" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton16" OnClick="s16click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell77" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton21" OnClick="s21click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell78" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton22" OnClick="s22click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell79" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton27" OnClick="s27click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell80" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton28" OnClick="s28click1" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                            </div>
                                     
                            <div style=" margin-left:200px;">
                                 <div class="selected-seats">
                                
                                <asp:Label ID="Label5" runat="server" Text="Seçtiğiniz Koltuklar"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="Hiç koltuk seçmediniz." Visible="false"></asp:Label><br /><br />
                                <asp:Label ID="label7" runat="server" Visible="true"></asp:Label><br /><br />
                                 <asp:Label ID="labelGender2" runat="server" Visible="true"></asp:Label><br /><br />
                                <asp:Button ID="Button2" runat="server" Text="Ödeme Adımına Geç" Height="50px" Width="200px" Visible="false" OnClick="btnPaymentMethod_Click" /><br />
                                <br />Cinsiyetinizi Seçiniz
                               
                                     <div runat="server" id="Div2" Visible="false">
                                    Erkek<asp:ImageButton ID="ImageButton32" runat="server" OnClick="imgbtnMale_Click1"  ImageUrl="https://img.icons8.com/color/24/000000/male.png" /> <br /> 
                                    Kadın<asp:ImageButton ID="ImageButton33" runat="server" OnClick="imgbtnFemale_Click1" ImageUrl="https://img.icons8.com/color/24/000000/female.png" />  
                                     </div>
                                    
                                
                            </div>
                            </div>
                           
                        </Content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion>
        </div>
            <br />
            <div runat="server" id="Div3"  Visible="false">
            <ajaxToolkit:Accordion ID="Accordion3" runat="server" HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass" HeaderSelectedCssClass="headerSelectedCss" FadeTransitions="true" TransitionDuration="500" AutoSize="None" SelectedIndex="0" Height="716px">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane5" runat="server">
                        <Header >
                            Metro
                        </Header>
                        
                        <Content><b><u></u></b>
                            <div class="show-card">
                                <div class="booking-elements">
                                    <asp:Label  ID="Label8" runat="server" Width="150px" Text="08:15"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label  ID="Label9" runat="server" Width="300px" Text="BURSA"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Label ID="Label10" runat="server" Width="300px" Text="İSTANBUL"></asp:Label>
                                </div>
                                 <div class="booking-elements">
                                    <asp:Label ID="Label11" runat="server" Width="300px" Text="62 ₺"></asp:Label>
                                </div>
                                <div class="booking-elements">
                                    <asp:Button ID="Button3" runat="server" Text="Koltuk Seç" OnClientClick="switchPane2(1); return false;" Height="45px" Width="200px" />
                                     <script type="text/javascript">
                                         function switchPane(index) {
                                             $find("<%= Accordion1.ClientID %>_AccordionExtender").set_SelectedIndex(index);
                                         }
                                    </script>
                           
                                </div>

                                
                            </div>
                        </Content>
                    </ajaxToolkit:AccordionPane>
                    <ajaxToolkit:AccordionPane ID="AccordionPane6" runat="server">
                        <Header>
                            Koltuk Seç
                        </Header>
                        <Content><b><u></u></b>
                            <div class="tableSeat">
                                <asp:Panel  ID="Panel2" runat="server" >
                                            <asp:Table border="0" ID="Table2" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell81" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            OnClick="s1click2" runat="server" />1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell82" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_6" OnClick="s6click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell83" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_7" OnClick="s7click2" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell84" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_12" OnClick="s12click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell85" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_13" OnClick="s13click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell86" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_18" OnClick="s18click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell87" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_19" OnClick="s19click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell88" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_24" OnClick="s24click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell89" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_25" OnClick="s25click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell90" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_31" OnClick="s31click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell91" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_2" ImageUrl="~/Images/available_seat_img.gif" OnClick="s2click2"
                                                            runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell92" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_5" OnClick="s5click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell93" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_8" OnClick="s8click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell94" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_11" OnClick="s11click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell95" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_14" OnClick="s14click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell96" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_17" OnClick="s17click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell97" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_20" OnClick="s20click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell98" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_23" OnClick="s23click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell99" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_26" OnClick="s26click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell100" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_30" OnClick="s30click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell101" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell102" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell103" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell104" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell105" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell106" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell107" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell108" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell109" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell110" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_29" OnClick="s29click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell111" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_3" OnClick="s3click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell112" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_4" OnClick="s4click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell113" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_9" OnClick="s9click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell114" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_10" OnClick="s10click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell115" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_15" OnClick="s15click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell116" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_16" OnClick="s16click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell117" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_21" OnClick="s21click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell118" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_22" OnClick="s22click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell119" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_27" OnClick="s27click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell120" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="ImageButton_28" OnClick="s28click2" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                            </div>
                                     
                            <div style=" margin-left:200px;">
                                 <div class="selected-seats">
                                
                                <asp:Label ID="Label12" runat="server" Text="Seçtiğiniz Koltuklar"></asp:Label>
                                <asp:Label ID="Label13" runat="server" Text="Hiç koltuk seçmediniz." Visible="false"></asp:Label><br /><br />
                                <asp:Label ID="label14" runat="server" Visible="true"></asp:Label><br /><br />
                                 <asp:Label ID="labelGender3" runat="server" Visible="true"></asp:Label><br /><br />
                                <asp:Button ID="Button4" runat="server" Text="Ödeme Adımına Geç" Height="50px" Width="200px" Visible="false" OnClick="btnPaymentMethod_Click" /><br />
                                <br />Cinsiyetinizi Seçiniz
                               
                                     <div runat="server" id="Div4" Visible="false">
                                    Erkek<asp:ImageButton ID="ImageButton65" runat="server" OnClick="imgbtnMale_Click2"  ImageUrl="https://img.icons8.com/color/24/000000/male.png" /> <br /> 
                                    Kadın<asp:ImageButton ID="ImageButton66" runat="server" OnClick="imgbtnFemale_Click2" ImageUrl="https://img.icons8.com/color/24/000000/female.png" />  
                                     </div>
                                    
                                
                            </div>
                            </div>
                           
                        </Content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion>
        </div>
            <br />
    </ContentTemplate>

</asp:UpdatePanel>
    
    
</form>
</body>
</html>

<script type="text/javascript">
    function switchPane(index) {
        $find("<%= Accordion1.ClientID %>_AccordionExtender").set_SelectedIndex(index);
    }
    function switchPane1(index) {
        $find("<%= Accordion2.ClientID %>_AccordionExtender").set_SelectedIndex(index);
    }
    function switchPane2(index) {
        $find("<%= Accordion3.ClientID %>_AccordionExtender").set_SelectedIndex(index);
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
        text-align:center;
        justify-content:center;
    }
    .seat{
        display:inline-block;
        text-align:center;
        justify-content:center;
    }
    .show-card{
        margin:20px;
        width:auto;
        height:200px;
        background-color:ghostwhite;
        border-radius:6px;
        border:1px solid;
        border-color:transparent;
        box-shadow:5px 5px 5px rgb(128, 128, 128);
        display:flex;
        text-align:center;
        justify-content:center;
    }
    .select-seat{
        margin:20px;
        width:auto;
        height:300px;
        background-color:ghostwhite;
        border-radius:6px;
        border:1px solid;
        border-color:transparent;
        box-shadow:5px 5px 5px rgb(128, 128, 128);
        display:inline-block;
        text-align:center;
        justify-content:center;
    }
    .selected-seats{
        
       
        background-color: ghostwhite;
        border-radius:6px;
        border:1px solid;
        border-color:transparent;
        box-shadow:5px 5px 5px rgb(128, 128, 128);
         text-align:center;
        display:inline-block;
       
       
    }
    .tableSeat{
        padding-left:250px;
        margin-right:100px;
        float:left;
        text-align:center;
        display:inline-block;
    }
    .select-seat input[type=image]{
        height:96px;
        width:96px;
       
    } 
    .booking-elements{
        margin-top:60px;
        margin-left:15px;
    }
    .booking-date{
        margin-left:10px;
    }
    select {
        height: 30px;
        border: 0;
        margin-top: 10px;
        margin-left: 10px;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
    }

    .booking-elements input[type=submit] {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: white;
        border: 1px solid;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
        background-color:darkblue;
        
    }
    .selected-seats input[type=submit]{
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: white;
        border: 1px solid;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
        background-color:darkblue
    }
    span {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        font-size:32px;
        height: auto;
        width: 200px;
        border: 0;
        border-radius:6px;
        border: 1px solid;
        border-color:blue;
        text-align:center;
        
    }
    .headerCssClass{
        background-color:darkblue;
        color:white;
        border:1px solid black;
        padding:4px;
    }
    .contentCssClass{

        background-color:ghostwhite;
        color:darkblue;
        border:1px dotted black;
        padding:4px;
    }
    .headerSelectedCss{
        background-color:darkblue;
        color:white;
        border:1px solid black;
        padding:4px;
    }


</style>
