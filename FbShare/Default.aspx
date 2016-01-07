<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="cont">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
<script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php"type="text/javascript"></script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h3>Test for Sharing</h3>   
     <a name="sharebutton" type="button" href="http://www.facebook.com/sharer.php">Share</a> 
    <br /><br />
    <div class="container">
  <h2>Dynamic Tabs</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home" onclick="setBG(this)" style="background-color:#56deda; color:red; font-weight:bold;" id="sts">Home</a></li>
    <li><a data-toggle="tab" href="#menu1" onclick="setBG(this)" style="background-color:#dd5665; color:#56deda;font-weight:bold;">Menu 1</a></li>
    <li><a data-toggle="tab" href="#menu2" onclick="setBG(this)" style="background-color:#dd5665; color:#56deda;font-weight:bold;">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3" onclick="setBG(this)" style="background-color:#dd5665; color:#56deda;font-weight:bold;">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>

<script>
    var rot = $("#sts");
function setBG(el){
 rot = $(el);
$(el).parents('ul').find('li a').each(function(){
if($(this).text() == $(el).text()){
$(this).css({'background-color':'#56deda','color':'red'});
}
else{
    $(this).css({ 'background-color': '#dd5665', 'color': '#56deda' });
}


//alert($(this).text() +  " "  + $(el).text());
});
}
$("a").hover(
function(){
if(rot){
if($(this).text() == $(rot).text()){
$(this).css({'background-color':'#56deda','color':'red'});
}
else{
$(this).css({'background-color':'#dea324','color':'blue'});
}

}
},
function(){
if(rot){
if($(this).text() == $(rot).text()){
$(this).css({'background-color':'#56deda','color':'red'});
}
else{
    $(this).css({ 'background-color': '#dd5665', 'color': '#56deda' });
}

}
});

</script>

</asp:Content>
