<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="AspVisualBasicFinalProject_Update._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/bxslider/4.1.1/jquery.bxslider.css">
    <script type="text/javascript" src="http://cdn.jsdelivr.net/bxslider/4.1.1/jquery.bxslider.js"></script>
    <link href="Content/Site.css" rel="stylesheet">
    <script type="text/javascript">
        $(function () {
            $('.bxslider').bxSlider({
                mode: 'fade',
                auto: true,
                pagerCustom: '#bx-pager',
                captions: true, 
                adaptiveHeight: true
            });
        });
    </script>
    <style>
        #bxcontainer {
            width: 180px;
            margin: 0 auto;
        }
        .bxslider img {
            margin: 0 auto;
        }

    </style>
    &nbsp;<h1>Welcome to my page of art and wonders!</h1>
    <br><br>
    <p>Hello! Thank you for stopping by! Use the navigation tools on this webpage to get around and see some famous artwork and maybe even learn a little bit about the artists that made them.</p>
    <br>
    <div id ="bxcontainer">
        <div class="bxslider" >
            <div><img src="AppData/static/images/anxiety.jpg" width="128" height="128" title="anxiety"/></div>
            <div><img src="AppData/static/images/madonna.jpg" width="128" height="128" title="madonna"/></div> 
            <div><img src="AppData/static/images/themagpie.jpg" width="128" height="128" title="themagpie"/></div> 
            <div><img src="AppData/static/images/thelastsupper.jpg" width="128" height="128" title="thelastsupper"/></div> 
            <div><img src="AppData/static/images/thepotatoeaters.jpg" width="128" height="128" title="thepotatoeaters"/></div> 
        </div>
    </div>
</asp:Content>
