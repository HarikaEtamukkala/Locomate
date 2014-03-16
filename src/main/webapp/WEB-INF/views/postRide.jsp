<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/ion.tabs.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/ion.tabs.skinBordered.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/Normalize.css" />" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script src="<c:url value="/resources/js/easy-editable-text.js" />"></script>	
<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>	
<link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css" />" rel="stylesheet">

<script>
$(document).ready(function(){
	$("#YesID").click(function(){
	    $("#contentId").show();
	    $("#txtCarmake").hide();
	    $("#txtCarYear").hide();
	    $("#txtCarSeat").hide();
	    $("#txtCarcolor").hide();
	    $("#txtCarModel").hide(); 
	    $("#travelDetailsId").hide();
	  });
  $("#NoID").click(function(){
    $("#contentId").hide();
    $("#travelDetailsId").show();
  });
  $("#carUpdate").click(function(){
	    $("#contentId").hide();
	    $("#travelDetailsId").show();
	  });
});

$(document).ready(function(){
	$("#carEdit").click(function()
		{	
	$("#txtCarmake").show();
	$("#txtCarYear").show();
	$("#txtCarSeat").show();
	$("#txtCarcolor").show();
	$("#txtCarModel").show();
	$("#txtCarNumber").show(); 
		});});

$(document).ready(function(){
	$("#carCancel").click(function()
		{	
	$("#txtCarmake").hide();
	 $("#txtCarYear").hide();
	    $("#txtCarSeat").hide();
	    $("#txtCarcolor").hide();
	    $("#txtCarModel").hide(); 
	    $("#txtCarNumber").hide();
		});});
	



	
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#oneTimeID").click(function()
		{	
	$("#dateTimeId").show();
	$("#regularId").hide();
		});});
		
		$(document).ready(function(){
			$("#regularID").click(function(){
				$("#dateTimeId").hide();
				$("#regularId").show();	
			});
		});

</script>
<script>
function load()
{
$("#contentId").hide();
$("#txtCarmake").hide();
$("#txtCarYear").hide();
$("#txtCarSeat").hide();
$("#txtCarcolor").hide();
$("#txtCarModel").hide(); 
$("#txtCarNumber").hide();
$("#dateTimeId").hide();
$("#regularId").hide();
}

$('#divirdate').datetimepicker({
    language:  'en',
	format: 'dd-mm-yyyy',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});

$(function(){
    $('#chckbxId').on('change',function(){
    	alert(123);
    	var checked = $(this).prop('checked');
    	alert(checked);
    	alert($('.enableOnCheck'));
    	$('.enableOnCheck').prop('disabled',!checked);
         /* if ($(this).val() == 'Yes') {
              $('.enableOnCheck').prop('disabled', false);
         } else {
              $('.enableOnCheck').prop('disabled', true);
         } */
    });
});
</script>
<script src="<c:url value="/resources/js/jquery-1.11.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/ion.tabs.js" />"></script>
<script src="<c:url value="/resources/js/ion.tabs.min.js" />"></script>
<script src="<c:url value="/resources/js/commons.js" />"></script>


</head>
<body onload="load()">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img
					src='<c:url value="/resources/images/logosmall.png"/>' />&nbsp;Locomate</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./postride">Post Ride</a></li>
					<li><a href="./">My Records</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">${name}<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Edit Account</a></li>
							<li><a href="#">Change Password</a></li>
							<li class="divider"></li>
							<li><a href="./logout">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<br />
	<br />
	<br />
	<div class="container main">
		<div class="row well blackbg">
			<div class="gridster">

				<div class="ionTabs" id="tabs_1" data-name="Tabs_Group_name">
					<ul class="ionTabs__head">
						<li class="ionTabs__tab" data-target="Tab_1_name"><b>First
								Step</b></li>
						<li class="ionTabs__tab" data-target="Tab_2_name">Second Step</li>
						<li class="ionTabs__tab" data-target="Tab_3_name">Third Step</li>
					</ul>
					<div class="ionTabs__body">
				<%-- 	<form:form commandName="postPO" method="post" action="/submitRide"> --%>
						<div class="ionTabs__item" data-name="Tab_1_name" id="tab1">
							<div class="form-group">
								<label>Are you a driver? </label> &nbsp &nbsp &nbsp <input
									type="radio" value="Yes" name="Radio" id="YesID">Yes</input>&nbsp
								&nbsp &nbsp &nbsp &nbsp &nbsp <input type="radio" value="No"
									name="Radio" id="NoID" checked="checked" />No </input>&nbsp &nbsp &nbsp
								&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </br>


							</div>
							<div id="contentId">
								<table>
									<tr>
										<th><label> Vehicle Comapny
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></th>
										<th><label>Year &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></th>
										<th><label>No of
												Seats&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></th>
									</tr>
									<tr>
										<td class="form-group"><label class="labelcontent"
											id="lblCarmake"></label> <input class="inputlarge"
											type="text" id="txtCarmake" name="carmaker1" value=""></td>

										<td class="form-group"><label class="labelcontent"
											id="lblCarYear"></label> <input class="inputlarge"
											type="text" id="txtCarYear" name="carYear" value=""></td>
										<td class="form-group"><label class="labelcontent"
											id="lblCarSeat"></label> <input class="inputlarge"
											type="text" id="txtCarSeat" name="carSeat" value="">
										</td>
									</tr>
								</table>
								<table>
									<tr>
										<th><label>Vehicle color
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></th>
										<th><label>Vehicle Model
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></th>
										<th><label>Vehicle NUmber </label></th>
									</tr>
									<tr>
										<td class="form-group"><label class="" id="lblCarColor"></label>
											<input class="inputlarge" type="text" id="txtCarcolor"
											name="carColor" value=""></td>
										<td class="form-group"><label class="" id="lblCarModel"></label>
											<input class="inputlarge" type="text" id="txtCarModel"
											name="carModel" value=""></td>
										<td><label class="" id="lblCarNumber"></label> <input
											class="" type="text" id="txtCarNumber" name="carNumber"
											value=""></td>
									</tr>

								</table>

								<div class="form-group">
									<a id="carEdit" class="btnatag btnacolor_green"
										style="float: right; margin-bottom: 5px; margin-right: 10px; margin-bottam: 5px;"
										href="#">Edit</a> <a id="carCancel"
										class="btnatag btnacolor_green"
										style="float: right; margin-bottom: 5px; margin-right: 10px; margin-bottam: 5px;"
										href="#">Cancel</a><a id="carUpdate"
										class="btnatag btnacolor_green"
										style="float: right; margin-bottom: 5px; margin-right: 10px; margin-bottam: 5px;"
										href="#">Continue</a>
								</div>
							</div>
							
							<div style="width: 90%;" id="travelDetailsId">
								<div style="float: left; width: 33%;">
									<label>From</label> <input type="text" class="form-control"
										placeholder="e.g DilshukNagar" tabindex="2" name="fromAddress">
								</div>
								<div style="float: left; width: 33%;">
									<label>To</label> <input type="text" class="form-control"
										placeholder="e.g GachiBowli" tabindex="2" name="toAddress">
								</div>
								<div style="float: left; width: 33%;">
									<label>Via</label> <input type="text" class="form-control"
										placeholder="e.g Mehdipatnam" tabindex="2" name="viaAddress">
								</div>
								<div>
									<span style="float: right" id="ss1msg"></span>
									<!-- <a class="btnatag btnacolor_green"  tabindex="4" id="lnkstep1next" 
          style="float:right; margin-bottom:5px; margin-right:10px; margin-bottam:5px;" href="#">Next</a></div> -->
									<button class="button tabsSwitch" data-group="Tabs_Group_name"
										data-tab="Tab_2_name">Next tab</button>
								</div>


							</div>
						</div>



						<!-- </div>
	  		   <div class="form-group" id="distancediv">
            <div class="boxwidth30">
              <div class="boxwidth45" style="max-width:200px;">
                <label> Distance :</label>
              </div>
              <div class="boxwidth35" style="max-width:150px;">
                <label class="labelcontent"  id="di">0 Kms</label>
              </div>
            </div>
            <div class="boxwidth60">
              <div class="boxwidth50" style="max-width:200px;">
                <label>EST.time (Approximately) :</label>
              </div>
              <div class="boxwidth40" style="max-width:150px;">
                <label class="labelcontent" id="du">0</label>
              </div>
            </div>
          </div> -->


						<div class="ionTabs__item" data-name="Tab_2_name" id="tab2">
							<div class="form-group">
							<label>Mode of Travelling</label>
							<input
									type="radio" value="Yes" name="Radio" id="oneTimeID">One Time</input> <input type="radio" value="No"
									name="Radio" id="regularID" />Regular </input
							</div>
							<br>
							<br>
							<div class="form-group" id="dateTimeId">
							<label>Date</label>
						<input type="text">

						 <label>Time</label>
						 <input type="text">
        </div>
							</div>
							<br>
							<div  id="regularId">
							<div style="width:80%;
margin-left:9%;
">
							<div style="float: left;
width: 33%;
 "><label>From Date</label>
							<input type="text" name="travelDate"> </div>
							<div style="float: left;
width: 34%;
"> <label>To Date</label>
							<input type="text" name="totravelDate"></div>
							<div style="float:left;
width: 33%;
"><label>Time</label>
							<input type="text"></div>
							
							</div>
							<br>
							<br>
							<div style="width:80%;
margin-left:9%;
">
							<div style="float: left;
width: 43%;
 "><label>Pick UP At</label>
							<input type="text" name="pickUpStop"></div>
							<div style="float: left;
width: 44%;
"> <label>Required Seats</label>
							<input type="text" name="requiredSeats"></div>
							<!-- <div style="float:left;
width: 33%;
"><label>Time</label>
							<input type="text"></div> -->
							</div>
							<br>
							<div class="form-group" style="float:left">
							<div id="returId">
							<label>Return </label>
						<input type="checkbox" value="Yes" id="chckbxId"> 
							</div>
							<div>
							<input type="text" id="someId" class="enableOnCheck"  checked="checked"  disabled="disabled">
							</div>
							</div>
							</div>
							<div>
									<span style="float: right" id="ss1msg"></span>
									<button class="button tabsSwitch" data-group="Tabs_Group_name"
										data-tab="Tab_1_name">Preious tab</button>
									</div>
									<div>
									<button class="button tabsSwitch" data-group="Tabs_Group_name"
										data-tab="Tab_3_name" >Next tab</button>
								</div>
							
					<%-- 		</form:form> --%>
							</div>
							</div>
						<div class="ionTabs__item" data-name="Tab_3_name">Tab 3
							content</div>

						<div class="ionTabs__preloader"></div>

					</div>


					<script>
    $.ionTabs("#tabs_1");
    
    $(".tabsSwitch").on("click", function(){
        var group = $(this).data("group");
        var tab = $(this).data("tab");

        $.ionTabs.setTab(group, tab);
    });
    </script>
   

				</div>
			</div>
		</div>
	</div>
	</div>
	  		
</body>
</html>