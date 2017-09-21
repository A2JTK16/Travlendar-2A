<%-- 
    Document   : index
    Created on : Sep 21, 2017, 1:17:03 PM
    Author     : Agit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Assets2/css/styledistance.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="jarak-atas">

</div> <!--jarak-atas-->

<div class="menu-atas">
	<div class="header">
		<h1> LOGO </h1>
	</div> <!--header-->
</div> <!--menu-atas-->

<div class="wadah">
	
	<div class="main">
		
		<div class="left">
			<h3>Sidebar KIRI</h3>
			
			<div class="hides">
			
				<button onclick="javascript:show()">
				|||
				</button>
			
			</div>

			
			<div id="hidden-mobile">
			
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
				<h2><a href="../Traveller/index.jsp">Traveller</a></h2>
	
			</div> <!--menu-manage-->
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
                                <h2><a href="../Location/index.jsp">Location </a></h2>
			</div>
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
                                <h2><a href="../TransportationMode/index.jsp">Transportation Mode </a></h2>
			</div> <!--menu-manage-->
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
				<h2> <a href="../DistanceMatrix/index.jsp">Distance Matrix </a></h2>
			</div>
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
                                <h2><a href="../EstimationTime/index.jsp">Estimation Time</a></h2>
			</div> <!--menu-manage-->
			
			<div class="menu-manage">
				<div class="icon-setting">
					<img src="${pageContext.request.contextPath}/Assets2/icon/setting.png">
				</div> <!--icon-setting-->
                                <h2><a href="../CalendarEvent/index.jsp">Calendar Event</a></h2>
			</div>
			
			</div>
			
		</div> <!--/ .header -->

		<div class="middle">
				<div class="judul-manage"> DISTANCE MATRIX </div>
				<button id="myBtn"> + Add New Distance Matrix </button>
				<!-- The Modal -->
				<div id="myModal" class="modal">

				  <!-- Modal content -->
				  <div class="modal-content">
				    	
							  <div class="form">
							  	<div class="modal-header">
							      <span class="close">&times;</span>
							      <h5>Add New Distance Matrix</h5>
							    </div>

							    <form class="distance-form">
                                                                <select class="dropdown-location">
                                                                     <option value="StartingLocation">Starting Location ...</option>
                                                                     <option value="SLocation1">Universitas Kristen Maranatha</option>
                                                                     <option value="SLocation2">Politeknik Negeri Bandung</option>
                                                                     <option value="SLocation3">Bosscha Observatory</option>
                                                                     <option value="SLocation4">Maribaya Waterfall</option>
                                                                     <option value="SLocation5">Saung Angklung Udjo</option>
                                                                     <option value="SLocation6">Paris Van Java</option>
                                                                </select>
							        <select class="dropdown-location">
                                                                     <option value="Destination">Destination ...</option>
                                                                     <option value="DLocation1">Universitas Kristen Maranatha</option>
                                                                     <option value="DLocation2">Politeknik Negeri Bandung</option>
                                                                     <option value="DLocation3">Bosscha Observatory</option>
                                                                     <option value="DLocation4">Maribaya Waterfall</option>
                                                                     <option value="DLocation5">Saung Angklung Udjo</option>
                                                                     <option value="DLocation6">Paris Van Java</option>
                                                                </select>
							      <input style="margin-top: 5px; color: #535559" type="text" placeholder="Distance (km)    ..."/>
							      <button> Save </button>
							    </form>
							  </div>
							
				  </div> <!--modal content-->

				</div>

		</div> <!--middle-->
		
		<div class="middle">
		
			<div class="kotak-distance">
				<h4> Distance Matrix </h4>
                                
			</div> <!--kotak-distance-->
	
			<div class="kotak-distance">
					<table>
						<thead>
						<tr>
							<th>Starting Location</th>
							<th>Destination</th>
							<th>Distance (km)</th>
							<th style="width: 125px">Action</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>Universitas Kristen Maranatha</td>
							<td>Politeknik Negeri Bandung</td>
							<td>2.6</td>
							<td> <a class="action" href="edit.html">Edit </a> <a class="action2" href="delete.html"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Politeknik Negeri Bandung</td>
							<td>Bosscha Observatory</td>
							<td>11.4</td>
							<td> <a class="action" href="edit.html">Edit </a> <a class="action2" href="delete.html"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Bosscha Observatory</td>
							<td>Maribaya Waterfall</td>
							<td>9.1</td>
							<td> <a class="action" href="edit.html">Edit </a> <a class="action2" href="delete.html"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Maribaya Waterfall</td>
							<td>Saung Angklung Udjo</td>
							<td>16.1</td>
							<td> <a class="action" href="edit.html">Edit </a> <a class="action2" href="delete.html"> Delete </a> </td>
						</tr>
						
						
						<tr>
							<td>Saung Angklung Udjo</td>
							<td>Paris Van Java</td>
							<td>8.1</td>
							<td> <a class="action" href="edit.html">Edit </a> <a class="action2" href="delete.html"> Delete </a> </td>
						</tr>
	
						
						</tbody>
					</table>
			</div> <!--kotak-distance-->
			
			
		</div> <!--/ .middle -->

		
	</div> <!--/ .main -->

	<div class="footer">
		<h1>Footer</h1>
		<p>Copyright &copy; 2017 TravlendarA2.com</p>
	</div> <!--/ .footer -->
 
 			<script>
			
				function show()
				{
					if(document.getElementById("hidden-mobile").style.display == 'none')
						document.getElementById("hidden-mobile").style.display = 'block';
					else
						document.getElementById("hidden-mobile").style.display = 'none';
				}
				
				// Get the modal
				var modal = document.getElementById('myModal');

				// Get the button that opens the modal
				var btn = document.getElementById("myBtn");

				// Get the <span> element that closes the modal
				var span = document.getElementsByClassName("close")[0];

				// When the user clicks the button, open the modal 
				btn.onclick = function() {
				    modal.style.display = "block";
				}

				// When the user clicks on <span> (x), close the modal
				span.onclick = function() {
				    modal.style.display = "none";
				}

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				    if (event.target == modal) {
				        modal.style.display = "none";
				    }
				}
			</script>
 
</div> <!--wadah-->
    </body>
</html>