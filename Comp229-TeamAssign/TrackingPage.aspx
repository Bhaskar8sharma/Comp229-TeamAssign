<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrackingPage.aspx.cs" Inherits="Comp229_TeamAssign.TrackingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div style="width: 1200px; margin: auto">
            <div class="row">
                <h3>Tracking Page</h3>
                <div class="col-md-6">
                    <div class="panel panel-primary" id="panelLatestMovies">
                        <div class="panel-heading">
                            <h3 class="panel-title">Recent additions <%#Rprecentitems.Items.Count%></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-xs-12 col-sm-6 movie">
                                <asp:Repeater ID="Rprecentitems" runat="server">
                                    <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <strong><%# Eval("Title") %> </strong>
                                    </div>
                                    <div class="panel-body">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <a class="fancybox pull-left" href="gallery1" title="">
                                                    <img class="media-object" height="120" src="Assets/mages/<%# Eval("image") %>" alt="" />
                                                </a>

                                            </a>
                                            <div class="media-body">
                                                <div><small><%# Eval("Description") %></small></div>                                            </div>
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
                <div class="col-md-6">
                    <div class="panel panel-primary" id="Div1">
                        <div class="panel-heading">
                            <h3 class="panel-title">owned Items <%#Rprecentitems.Items.Count%></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-xs-12 col-sm-6 movie">
                                <asp:Repeater ID="Rptowned" runat="server">
                                    <ItemTemplate>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <strong><%# Eval("Title") %> </strong>
                                    </div>
                                    <div class="panel-body">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <a class="fancybox pull-left" href="gallery1" title="">
                                                    <img class="media-object" height="120" src="Assets/images/<%# Eval("image") %>" alt="" />
                                                </a>

                                            </a>
                                            <div class="media-body">
                                                <div><small><%# Eval("Description") %></small></div>                                            </div>
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
            </div>
        </div>
</asp:Content>
