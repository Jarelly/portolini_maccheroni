<?php include "header.php"; ?> 
<body>
	
	<!-- Start All Pages -->
	<center> <img src="opinion.png" style="background-color: red"> </center>
	<!-- End All Pages -->
	
	<!-- Start Contact -->
	
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						
						<p>Nuestro principal objetivo es la satisfacción del cliente</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<form  action="" method="post">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name" placeholder="Tu nombre" required data-error="Por favor, escriba su nombre">
									<div class="help-block with-errors"></div>
								</div>                                 
							</div>
							<!-- <div class="col-md-12">
								<div class="form-group">
									<input type="text" placeholder="Your Email" id="email" class="form-control" name="name" required data-error="Please enter your email">
									<div class="help-block with-errors"></div>
								</div> 
							</div> -->
							<div class="col-md-12">
								<div class="form-group">
									<select class="custom-select d-block form-control" id="guest" name="rev" required data-error="Please Select Person">
									  <option value="Exellent">Excelente</option>
									  <option value="Good">Bueno</option>
									  <option value="Poor">Bajo</option>
									  <option value="Very Poor">Muy Bajo</option>
									  
									</select>
									<div class="help-block with-errors"></div>
								</div> 
							</div>
							<div class="col-md-12">
								<div class="form-group"> 
									<textarea class="form-control" id="message" placeholder="Tu mensaje" rows="4" name="desc" data-error="Escribe tu mensaje" required></textarea>
									<div class="help-block with-errors"></div>
								</div>
								<div class="submit-button text-center">
									<button name="sb" class="btn btn-common" id="submit" type="submit">Enviar Mensaje</button>
									<div id="msgSubmit" class="h3 text-center hidden"></div> 
									<div class="clearfix"></div> 
								</div>
							</div>
						</div>            
					</form>
					<?php
					if(isset($_POST['sb']))
					{
						$nm = $_POST['name'];
						$rev = $_POST['rev'];
						$des = $_POST['desc'];
						include "connect.php";
						mysqli_query($con,"insert into review(name, review, description) values('$nm','$rev','$des')");
						echo "<h2 style='color:tomato; text-align:center;'>Datos agregados con éxito Completamente</h2>";
					}	

					?>





				</div>
			</div>
		
		</div>
	</div>
	<!-- End Contact -->
<?php include "footer.php"; ?>