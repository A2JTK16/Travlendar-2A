<%-- 
    Document   : add_event
    Created on : Nov 17, 2017, 4:55:25 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="UTF-8">
	<title>Welcome Travlendar</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/style.css">
        <!-- Google Maps JS API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s"></script>
        
        <!-- JQuery Library -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
        
        <!-- GMaps Library -->
        <script src="js/gmaps.js"></script>
        
        <!-- GMaps Custom Setting for This Page -->
        <script src="js/mapsdefault.js"></script>
        
    </head>
<body>
	
    <div class="jarak-atas">

    </div> <!--jarak-atas-->

    <div class="menu-atas">
	<div class="header">
             <div class="logonya">
                <img src="images/travelendar2.png">
                
            </div>
            <div class="logo">
                <img src="images/logo.png">
            </div> <!--logo-->
            
            <div class="dropdown" style="float:right;">
                <button class="dropbtn">
                    <a class="icon-account">
                            <img src="icon/akun1.png">
                    </a>
                </button>
                <div class="dropdown-content">
                  <a href="#">My Account</a>
                  <a href="#">Add Account</a>
                  <a href="index.jsp">Sign Out</a>
                </div>
            </div>
            
            <div class="dropdown" style="float:right;">
                <button class="dropbtn">
                    <a class="icon-account">
                            <img src="icon/notif2.png">
                    </a>
                </button>
                <div class="dropdown-content">
                  <a href="#">Notif 1</a>
                  <a href="#">Notif 2</a>
                  <a href="#">Notif 3</a>
                </div>
            </div>
                  
            <div class="kotak-cari">
                <div class="icon-cari">
                    <img src="icon/search.png">
                </div>
                <input class="cari" type="text" placeholder="Find Event ..."/>
            </div> <!--kotak-cari-->
          
	</div> <!--header-->
     
    </div> <!--menu-atas-->

    <div class="wadah-gamb">
        <div class="slogan">
        <div class="sukses">
        <h2> Make Your Plan Be Batter ! </h2>
        </div>
        </div>
    </div>
    
    <div class="induk1">

	<div class="container-t">
	<div class="tab">
			  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Add New Event</button>
			  <button class="tablinks" onclick="openCity(event, 'Paris')">View List Event</button>
			  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Calendar Event</button>
			  
			  <!--<input class="search-ev" type="text" placeholder="Search Event ... "/>-->
	</div>
	</div> <!--container-t-->

    </div> <!--induk1-->

        <div class="induk2">

            <div class="container">

		<div id="London" class="tabcontent">
		  <input class="ev-name" id="desc" type="text" placeholder="What Your Event ??.. "/>

			<div class="main">
				<div class="left">
					<input class="ev" id="orig" type="text" placeholder="Origin ...">
					<div class="text-ev"> Start Event </div>
					<input class="tgl-ev" id="date" type="date" value="2017-09-08">
					<input class="time-ev" id="time" type="time" value="00:00"/>
				</div>
				
				
				<div class="right">
					<input class="ev" id="dest" type="text" placeholder="Destination ...">
					<div class="text-ev"> End Event </div>
					<input class="tgl-ev" id="date" type="date" value="2017-09-08">
                                        <input class="time-ev" id="time" type="time" value="00:00"/>
                                        <div class="text-ev"> Distance </div>
                                        <input class="time-ev" id="dist" type="text" placeholder="Km ..."/>
				</div>
                            
                                 <div class="i-save" >
                <button class="save-ev" id="myBtn">Submit</button>
				<!-- The Modal -->
				<div id="myModal" class="modal">

				  <!-- Modal content -->
				  <div class="modal-content">
				    	
							  <div class="form">
							    <div class="modal-header">
							      <span class="close">&times;</span>
							      <h4>Select Your Transportation Mode</h4>
                                                              
							    </div>
                                                              <div class="k-popup">
                                                                  <div class="k-transport">
                                                                      <div class="trans"> <img src="icon/air2.png"> </div>
                                                                      <br> ⭙
                                                                  </div>
                                                                   <div class="k-transport">
                                                                      <div class="trans"> <img src="icon/train.png"> </div>
                                                                      <br> ⭙
                                                                  </div>
                                                                   <div class="k-transport">
                                                                      <div class="trans"> <img src="icon/car.png"> </div>
                                                                      <div class="radiona"><input type="radio" name="transtime" value="cartime"> 40m</div> 
                                                                  </div>
                                                                   <div class="k-transport">
                                                                      <div class="trans"> <img src="icon/motor3.png"> </div>
                                                                      <div class="radiona"><input type="radio" name="transtime" value="motortime"> 25m</div>
                                                                  </div>
                                                                   <div class="k-transport">
                                                                      <div class="trans"> <img src="icon/walk.png"> </div>
                                                                      <div class="radiona"><input type="radio" name="transtime" value="walktime"> 4h 15m</div>
                                                                  </div>                                                                  
                                                                  <button id="myBtnsave">Save</button>
                                                              </div>
							    
							  </div>
							
				  </div> <!--modal content-->
				</div>
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
            </div> <!--i-save-->

				
			</div> <!--/ .main -->
		</div>
                
		<div id="Paris" class="tabcontent">
                                        <table>
						<thead>
						<tr>
							<th>Event Name</th>
                                                        <th>Date & Time</th>
							<th>Use</th>
                                                        <th>At</th>
                                                        <th>Location</th>
                                                        <th>Action</th>
						</tr>
						</thead>
						<tbody>
                                                 
                                                <c:forEach items="${travellerList}" var="traveller">
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>                                                        
                                                </c:forEach>
                                                    
                                                    
						
                                                 <script type="text/javascript" language="JavaScript">
                                                function konfirmasi()
                                                {
                                                tanya = confirm("Anda Yakin Akan Menghapus Data ?");
                                                if (tanya == true) return true;
                                                else return false;
                                                }</script>
									
						
						</tbody>
					</table>
		</div>

		<div id="Tokyo" class="tabcontent">
                  
		  <h3>Tokyo</h3>
                  
                      <p> huuhhh </p>
	          
		</div>

            </div> <!--container-->

           	
        </div> <!--induk2-->

        <div class="container">
            <div class="main">
                <div id="map">Maps Event</div>
            </div> <!--/ .main -->
        </div> <!--container-->


        <div class="footer-atas">
	
        </div> <!--footer-atas-->

	<div class="footer-bawah">
            <div class="footer">
                <div class="copyright">
                    Travelendar
                </div> <!--copyright-->

                <div class="copyright2">
                    Copyright &copy; 2017 travlendar | Designed by A2 JTK Polban
                </div>
            </div>
        </div> <!--footer-bawah-->
        
    </body>
</html>