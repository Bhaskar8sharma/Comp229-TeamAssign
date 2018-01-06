<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="Comp229_TeamAssign.WebForm2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="width: 1200px; margin: auto">
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-primary" id="panelLatestBooks">
                    <div class="panel-heading">
                        <h3 class="panel-title">Available Books</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-xs-12 col-sm-5 books">
                            <asp:Repeater ID="Rptitems" runat="server">
                                <ItemTemplate>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <strong><%# Eval("Title") %> </strong>
                                        </div>
                                        <div class="panel-body">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <a class="fancybox pull-left" href="gallery1" title="">
                                                        <img class="media-object" height="120" src="Assets/Images/<%# Eval("image") %>" />
                                                    </a>
                                                </a>
                                                <div class="media-body">
                                                    <div><small><%# Eval("Description") %></small></div>
                                                </div>
                                                <br />
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <img src="Assets/Images/raty/star-on.png" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-primary" id="Div1">
                    <div class="panel-heading">
                        <h3 class="panel-title">Become a Member?</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12" style="text-align: center">
                            New User?
                                    <a href="Login.aspx">Register</a>
                        </div>
                        <br />
                        <div class="col-md-12">
                            Username:
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="reqtxtusername" runat="server" ControlToValidate="txtusername"
                                ErrorMessage="Enter Username" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12">
                            Password :        
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="reqtxtpassword" runat="server" ControlToValidate="txtpassword"
                                ErrorMessage="Enter Password" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12">
                            <asp:Label ID="lblerror" runat="server" Style="color: red"></asp:Label>
                        </div>
                        <div class="col-md-12" style="text-align: center">
                            <asp:Button ID="BtnLogin" runat="server" Text="Login" class="btn" OnClick="BtnLogin_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
