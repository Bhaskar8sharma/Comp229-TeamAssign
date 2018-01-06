<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HBLibrary.aspx.cs" Inherits="Comp229_TeamAssign.HBLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="width: 1200px; margin: auto auto auto 134px; height: 228px;">
    <h1>HB Library</h1>
        <p>HB Library is a platform that acts as a home for all your books.
            Its an online catalog where you can access and search for multiple books from all the majors genres,
            languages and authors; and get your desired book in a couple of days right on your door step within a few clicks.<br />
            You can also create your own virtual collection of books, 
            where you can keep track of your progress as well as share your views on different books once you are done reading them. 
            The online catalog also keeps a memory of your preferences and choices and provides you with a periodically reviewed set of books to enhance your reading process.
            HB Library is also place where you can interact with people around the world who share the same reading interests as you.<br />
            In addition to all of this, if by chance, you don't find some particular books in the search catalog for HB Library, 
            you can always suggest/order for those books with their names and other required information; and our team would get back to you with the book just the way you want it. </p>
        </div><br />
    <asp:HyperLink runat="server"  NavigateUrl="~/DetailPage.aspx">Click here to get started</asp:HyperLink><br /><br />
    <asp:HyperLink runat="server"  NavigateUrl="~/Login.aspx">New Member? Register here </asp:HyperLink><br /><br />
    <asp:HyperLink runat="server" NavigateUrl="~/DetailPage.aspx">Already a member? Login here</asp:HyperLink>
</asp:Content>
