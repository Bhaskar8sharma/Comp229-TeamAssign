<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrackingPage.aspx.cs" Inherits="Comp229_TeamAssign.TrackingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="AddItem.aspx">Add Books</a></li>
            <li><a href="DetailPage.aspx">Logout</a></li>
        </ul>
    </div>
    <div class="row">
        <h3>Tracking Page</h3>
        <div class="col-md-6">
            <div class="panel panel-primary" id="panelLatestMovies">
                <div class="panel-heading">
                    <h3 class="panel-title">Recent Additions</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-12 col-sm-6 movie">
                        <asp:Repeater ID="Rprecentitems" runat="server">
                            <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <strong>
                                            <asp:Label runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                        </strong>
                                    </div>
                                    <div class="panel-body">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <a class="fancybox pull-left" href="gallery1" title="">
                                                    <asp:Image runat="server" class="media-object" Height="120" ImageUrl='<%#Eval("image")%>' />
                                                </a>

                                            </a>
                                            <div class="media-body">
                                                <div><small>
                                                    <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small></div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <asp:Image runat="server" src="Assets/Images/raty/star-on.png"></asp:Image>
                                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("ID", "~/UpdateItems.aspx?ID={0}") %>'>Update</asp:HyperLink>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-primary" id="Div1">
                <div class="panel-heading">
                    <h3 class="panel-title">Owned Items</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-12 col-sm-6 movie">
                        <asp:Repeater ID="Rptowned" runat="server">
                            <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <strong>
                                            <asp:Label runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                        </strong>
                                    </div>
                                    <div class="panel-body">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <a class="fancybox pull-left" href="gallery1" title="">
                                                    <asp:Image runat="server" class="media-object" Height="120" ImageUrl='<%#Eval("image")%>' />
                                                    <img class="media-object" height="120" src="Assets/Images/<%# Eval("image") %>" alt="" />
                                                </a>

                                            </a>
                                            <div class="media-body">
                                                <div><small>
                                                    <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small></div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <asp:Image runat="server" src="Assets/Images/raty/star-on.png"></asp:Image>
                                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("ID", "~/UpdateItems.aspx?ID={0}") %>'>Update</asp:HyperLink>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
