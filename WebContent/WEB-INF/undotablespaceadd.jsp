<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${sessionScope.loggedInUser == null}">
	<script type="text/javascript">
		parent.location.href = "/xv4/login";
	</script>
</c:if>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width">
<title>Create Undo Tablespace � Oracle DB Lite Manager : ODBLM</title>
<meta name="robots" content="noindex, nofollow">
<meta name="description"
	content="Le projet consiste � d�velopper une application web permettant d'administrer un serveur de bases de donn�es Oracle." />
<meta name="keywords"
	content="projet, khaled, jouini, jsp, jsf, oracle, 11g, 12c, 10g, admin, sys, dba, dbms, sgbd, base, donn�es, ali, ben messaoud, dni, isitcom, ing�nieur, engineer, t�l�informatique, tablespace, redo log files, undo, segment, index, table, annulation, dbwr, logwr" />
<meta name="author" content="Ali Ben Messaoud" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="content/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="content/css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="content/css/bootmetro.css">
<link rel="stylesheet" type="text/css"
	href="content/css/bootmetro-tiles.css">
<link rel="stylesheet" type="text/css"
	href="content/css/bootmetro-charms.css">
<link rel="stylesheet" type="text/css"
	href="content/css/metro-ui-light.css">
<link rel="stylesheet" type="text/css" href="content/css/icomoon.css">
<link rel="stylesheet" type="text/css" href="content/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="scripts/google-code-prettify/prettify.css">
<link rel="shortcut icon" href="content/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="content/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="content/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="content/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="content/ico/apple-touch-icon-57-precomposed.png">
<script src="scripts/modernizr-2.6.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write("<script src='scripts/jquery-1.8.2.min.js'>\x3C/script>")
</script>
<script type="text/javascript"
	src="scripts/google-code-prettify/prettify.js"></script>
<script type="text/javascript" src="scripts/jquery.mousewheel.js"></script>
<script type="text/javascript" src="scripts/jquery.scrollTo.js"></script>
<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/bootmetro.js"></script>
<script type="text/javascript" src="scripts/bootmetro-charms.js"></script>
<script type="text/javascript" src="scripts/demo.js"></script>
<script type="text/javascript" src="scripts/holder.js"></script>
<script type="text/javascript">
	$(".metro").metro();
</script>
<script type='text/javascript'>
	//<![CDATA[ 
	$(window)
			.load(
					function() {
						$(function() {
							var scntDiv = $('#p_scents');
							var i = $('#p_scents p').size() + 1;

							$('.addScnt')
									.live(
											'click',
											function() {
												$(
														'<p><table width="425" border="0" cellspacing="0" cellpadding="0">  <tr>    <td colspan="3"><input type="text" id="p_scnt" name="smallFileName" value="" placeholder="Smallfile Tablespace Name" class="span4" style="width:363px;" /></td>    <td width="56" align="left"><a style="margin-bottom:5px;" href="#" class="remScnt"><img src="content/img/remove_file.png"></a></td>  </tr>  <tr>    <td width="144" colspan="2">    	<input type="text" id="p_scnt2" name="smallFileSize" value="" placeholder="Smallfile Tablespace Size" class="input-large"  />    </td>    <td width="155">    	<select name="smallFileSizeUnit" class="input-medium" >          <option value="K">K</option>          <option value="M">M</option>          <option value="G">G</option>          <option value="T">T</option>        </select>     </td>    <td>&nbsp;</td>  </tr>  <tr>    <td width="70">    	<label class="checkbox">            <input type="checkbox" value="reuse" name="reuse[]">            <span class="metro-checkbox">Reuse</span>        </label>    </td>    <td colspan="2">    	<table width="201" border="0" align="right" cellpadding="0" cellspacing="0">          <tr>            <td width="85"><label style="padding-right:10px; padding-top:4px;">Autoextend</label></td>            <td width="58">                <label class="radio">                    <input type="radio" name="autoextend[]"  value="on" >                    <span class="metro-radio">On</span>                </label>             </td>            <td width="58">                <label class="radio">                    <input type="radio" name="autoextend"  value="off" >                    <span class="metro-radio">Off</span>                </label>             </td>                   </tr>        </table>    </td>    <td>&nbsp;</td>  </tr></table></p>')
														.appendTo(scntDiv);
												i++;
												return false;
											});

							$('.remScnt').live('click', function() {
								if (i > 2) {
									$(this).parents('p').remove();
									i--;
								}
								return false;
							});
						});

					});//]]>
</script>
<link rel="stylesheet" type="text/css" href="content/css/my-css.css">
<style type="text/css">
padding-right-10 {
	padding-right: 10px;
}
</style>
</head>
<body>
	<!-- Start Subhead
	================================================== -->
	<header id="nav-bar" class="container-fluid"
		style="width: 818px; margin-left: auto; margin-right: auto; margin-top: -24px; background-color: rgba(182, 182, 182, 0.7);">
		<div class="row-fluid">
			<div class="span8">
				<div id="header-container">
					<a id="backbutton" class="win-backbutton" title="Go home!"
						href="home"></a>
					<div style="width: 300px; margin-bottom: -6px; margin-top: 5px;">
						<h4>
							<img src="content/img/db-icon.png" width="16" height="20"
								align="absbottom"> Oracle DB Lite Manager
						</h4>
					</div>
					<div class="dropdown">
						<a class="header-dropdown dropdown-toggle accent-color"
							data-toggle="dropdown" href="#"> Home <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="./tablespacesManage">Manage tablespaces</a></li>
							<li><a href="./tablespacesUndoManage">Manage UNDO
									tablespace</a></li>
							<li><a href="./redoManage">Manage Redo Log Files</a></li>
							<li><a href="./usersManage">Manage users</a></li>
							<li><a href="./queryManage">Execute query</a></li>
							<li class="divider"></li>
							<li><a href="./home">Home</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="top-info" class="pull-right"
				style="float: right; margin-right: -70px; margin-top: 5px;">
				<a href="userView?userID=${sessionScope.loggedInUser}"
					class="pull-left">
					<div class="top-info-block">
						<h3>${sessionScope.loggedInUser}</h3>
						<h4>Oracle</h4>
					</div>
					<div class="top-info-block">
						<b class="icon-user"></b>
					</div>
				</a>
				<hr class="separator pull-left" />
				<a id="settings" class="pull-left"
					onclick="window.location.href = 'logout'"> <b class="icon-exit"></b>
				</a>
			</div>
		</div>
	</header>
	<!-- End Subhead
	================================================== -->


	<div
		style="width: 958px; margin-left: auto; margin-right: auto; margin-top: -20px;">
		<!-- Start breadcrumbs
		================================================== -->
		<div id="bread_crumbs" style="margin-bottom: -20px;">
			<ul class="breadcrumb">
				<li><a href="home">Home</a> <span class="divider">/</span></li>
				<li><a href="tablespaceUndoManage">Manage Tablespaces</a> <span
					class="divider">/</span></li>
				<li class="active">Create Undo Tablespace</li>
			</ul>
		</div>
		<!-- End breadcrumbs
		================================================== -->


		<!-- Start alert
		================================================== -->
		${errors}${success}

		<!-- end alert================================================== -->


		<div style="padding-bottom: 2px;">
			<div style="display: inline-block; float: left;">
				<h2>Create Undo Tablespace</h2>
			</div>
			<div style="display: inline-block; float: right; padding-top: 4px;">
				<form class="form-search">
					<input type="text" class="input-medium search-query">
					<button type="submit" class="btn">Search</button>
				</form>
			</div>
		</div>
		<br> <br>
		<div>
			<legend></legend>
		</div>
		<div>
			<form method="post" name="form" target="_parent">
				<table border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="131" align="right">File Name</td>
						<td width="25" align="right">&nbsp;</td>
						<td width="446"><input type="text" name="tablespace_name"></td>
					</tr>
					<tr>
						<td align="right">Small or Bigfile</td>
						<td align="right">&nbsp;</td>
						<td><select name="sbfile">
								<option value=""></option>
								<option value="SMALLFILE">SMALLFILE</option>
								<option value="BIGFILE">BIGFILE</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="3">
							<FIELDSET ALIGN="Left">
								
								<table border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="130" align="right">Data file name</td>
										<td width="25" align="right">&nbsp;</td>
										<td colspan="2"><input type="text" name="datafile_name"></td>
									</tr>
									<tr>
										<td align="right">Size </td>
										<td align="right">&nbsp;</td>
										<td width="134"><input type="text" name="datafile_size" size="4"></td>
										<td width="213"><select name="datafile_size_int">
												<option value="K">K</option>
												<option value="M">M</option>
												<option value="G">G</option>
												<option value="T">T</option>
										</select></td>
									</tr>
									<tr>
										<td align="right">Allow autoextend</td>
										<td align="right">&nbsp;</td>
										<td colspan="2"><select name="datafile_autoextend">
												<option value=""></option>
												<option value="ON">ON</option>
												<option value="OFF">OFF</option>
										</select></td>
									</tr>
									<tr>
										<td align="right">On next </td>
										<td align="right">&nbsp;</td>
										<td><input type="text" name="datafile_next" size="4"></td>
										<td><select name="datafile_next_int">
												<option value="K">K</option>
												<option value="M">M</option>
												<option value="G">G</option>
												<option value="T">T</option>
										</select></td>
									</tr>
									<tr>
										<td align="right">Max allowed size </td>
										<td align="right">&nbsp;</td>
										<td><input type="text" name="datafile_maxsize" size="4"></td>
										<td><select name="datafile_maxsize_int">
												<option value="K">K</option>
												<option value="M">M</option>
												<option value="G">G</option>
												<option value="T">T</option>
										</select></td>
									</tr>
								</table>
							</FIELDSET>
						</td>
					</tr>
					<tr>
						<td align="right">Retention </td>
						<td align="right">&nbsp;</td>
						<td><select name="retention">
								<option value=""></option>
								<option value="NON GUARANTEE">NON GUARANTEE</option>
								<option value="GUARANTEE">GUARANTEE</option>
						</select></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="checkbox" name="extent"
							id="extent" value="EXTENT MANAGEMENT LOCAL"
							onClick="affCache('div1')">
EXTENT MANAGEMENT LOCAL</td>
					</tr>
					<tr>
						<td colspan="3">
							<table id="div1" style="display: none">
								<tr>
									<td colspan="2"><input type="radio" name="extent_allocate"
										value="AUTOALLOCATE"> AUTOALLOCATE</td>
								</tr>
								<tr>
									<td><input type="radio" name="extent_allocate"
										value="UNIFORM"> UNIFORM</td>
									<td>size<input type="text" name="uniform_size" size="4">
										<select name="uniform_int">
											<option value="K">K</option>
											<option value="M">M</option>
											<option value="G">G</option>
											<option value="T">T</option>
									</select>
									</td>
							</table>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="checkbox" name="segment"
							value="SEGMENT SPACE MANAGEMENT"
							onClick="affCache('segment_init')">
SEGMENT SPACE
							MANAGEMENT
  <select name="segment_int" id="segment_init"
							style="display: none">
    <option value="AUTO">AUTO</option>
    <option value="MANUAL">MANUAL</option>
  </select></td>
					</tr>
					<tr>
						<td align="right">Logging</td>
						<td align="right">&nbsp;</td>
						<td><select name="log">
								<option value=""></option>
								<option value="LOGGING">LOGGING</option>
								<option value="NOLOGGING">NOLOGGING</option>
						</select></td>
					</tr>
					<tr>
						<td align="right">Status</td>
						<td align="right">&nbsp;</td>
						<td><select name="accesibilite">
								<option value=""></option>
								<option value="ONLINE">ONLINE</option>
								<option value="OFFLINE">OFFLINE</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="3" align="right" valign="middle"><input type="submit" value="Save changes">&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="reset" value="Cancel"></td>
					</tr>
				</table>
			</form>

		</div>

	</div>
	<div style="width: 958px; margin-left: auto; margin-right: auto;">

		<br> <br> <br>Copyright � 2013 Ali Ben Messaoud - Oracle Lite DBMS Project. All rights reserved. Hosted by (mt) Home.
	</div>

</body>
</html>



