﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateItems.aspx.cs" Inherits="Comp229_TeamAssign.UpdateItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div style="width: 1200px; margin: auto">
        <div class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand active" href="TrackingPage.aspx">Library</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="AddItem.aspx">Add Books</a></li>
                        <li><a href="DetailPage.aspx">Logout</a></li>
        </ul>
 </div>
</div>
            <br />
            <div class="row">
                <div class="col-md-8 col-sm-12">
                    <div class="panel panel-primary" id="panelLatestBooks">
                        <div class="panel-heading">
                            <h3 class="panel-title">Update Books</h3>
                        </div>
                        <asp:HiddenField ID="hdnItemId" runat="server" />
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Book Title*<br />
                                    <asp:TextBox ID="txtbooktitle" runat="server"></asp:TextBox>
                                   <br />
                                    <asp:RequiredFieldValidator ID="reqbooktitle" runat="server" ErrorMessage="Enter Book title." ControlToValidate="txtbooktitle" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                                     </div>
                                </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Description*<br />
                                    <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                                   <br />
                                    <asp:RequiredFieldValidator ID="reqbookdescription" runat="server" ErrorMessage="Enter Book description." ControlToValidate="txtdescription" ForeColor="#FF6600"></asp:RequiredFieldValidator></div>
                                </div>
                                
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Image*<br />
                                    <asp:FileUpload ID="bookimg" runat="server" ></asp:FileUpload><br />
                                        <asp:RequiredFieldValidator ID="reqbookimg" runat="server" ErrorMessage="Select book Image." ControlToValidate="bookimg" ForeColor="#FF6600"></asp:RequiredFieldValidator></div>
                              </div>
                              
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Author*<br />
                                    <asp:TextBox ID="txtbookwriter" runat="server"></asp:TextBox>
                                   <br />
                                    <asp:RequiredFieldValidator ID="reqbookwriter" runat="server" ErrorMessage="Enter Author." ControlToValidate="txtbookwriter" ForeColor="#FF6600"></asp:RequiredFieldValidator> </div>
                                </div>
                               
                            <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    Release Date*<br />
                                    <asp:TextBox ID="txtreleasedate" runat="server"></asp:TextBox>
                                   <br />
                                    <asp:RequiredFieldValidator ID="reqreleasedate" runat="server" ErrorMessage="Enter Release Date." ControlToValidate="txtreleasedate" ForeColor="#FF6600"></asp:RequiredFieldValidator> </div>
                                     </div>
                                   <%--added the update button--%>
                              <div class="row">
                                <div class="col-md-4 col-sm-12">
                                    <asp:Button ID="BtnUpdate" runat="server" Text="Update" class="btn" OnClick="BtnUpdate_Click" />
                                </div>
                            </div>
                              </div>
                            </div>
                  </div>
                </div>
            </div>    
</asp:Content>
