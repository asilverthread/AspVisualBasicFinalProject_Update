<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FindByArtist.aspx.vb" Inherits="AspVisualBasicFinalProject_Update.FindByArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
    <br>
    Name:<asp:TextBox ID="txtName" runat="server" Width="31px"></asp:TextBox>
    <asp:Label ID="lblInfo" runat="server" Text="" ForeColor="Red"></asp:Label>
    <br />
    <br>
    <asp:Button ID="btnSearch" runat="server" Text="Search" />
    <br />
    <br>
    <asp:GridView ID="gdvArtPiece" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ArtPieceName" HeaderText="Art Piece" SortExpression="ArtPieceName" />
            <asp:BoundField DataField="FirstName" HeaderText="Artist First" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Artist Last" SortExpression="LastName" />
            <asp:ImageField DataImageUrlField="ImageUri" ItemStyle-Height="50px"> 
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zdcartdbConnectionString2 %>" SelectCommand="SELECT [ImageUri], [ArtPieceId], [ArtPieceName], [FirstName], [LastName] FROM [art_piece] INNER JOIN [artist] ON [FkArtistId]=[ArtistId]"></asp:SqlDataSource>
</asp:Content>
