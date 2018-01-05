<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Comp229_TeamAssign.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div style="width: 1200px; margin: auto">
            <div class="row">
                <div class="col-md-8 col-sm-12">
                    <div class="panel panel-primary" id="panelLatestMovies">
                        <div class="panel-heading">
                            <h3 class="panel-title">Register</h3>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Name *<br />
                                   <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br/>
                                 <asp:RequiredFieldValidator ID="reqtxtname" runat="server" ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    UserName*<br />
                                   <asp:TextBox ID="txtusername" runat="server"></asp:TextBox><br/>
                                    <asp:RequiredFieldValidator ID="reqtxtusername" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Email *<br />
                                   <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br/>
                                     <asp:RequiredFieldValidator ID="reqtxtemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Password *<br />
                                   <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox><br/>
                                     <asp:RequiredFieldValidator ID="reqtxtpassword" runat="server" ControlToValidate="txtpassword"  ErrorMessage="Enter Password" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    <asp:Button ID="BtnRegister" runat="server" Text="Register" class="btn" OnClick="BtnRegister_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
