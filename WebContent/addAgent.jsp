<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- get session -->
<% String suppliername = (String) session.getAttribute("sessioname");%>
<% String supplierposition = (String) session.getAttribute("sessionPosition"); %>
<% String sessionid = (String)session.getAttribute("sessionId"); %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- JavaScript Bundle with Popper -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<style>
.bg-dark {
	background-color: #212529 !important;
}

.breadcrumb {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	padding: 0 !important;
	margin-bottom: 1rem;
	list-style: none;
	background-color: transparent !important;
	border-radius: .25rem;
}
</style>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-2 me-5" href="index.html">Agent
			Management System</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="
          d-none d-md-inline-block
          form-inline
          ms-auto
          me-0 me-md-3
          my-2 my-md-0
        "></form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<%
             if (supplierposition.equals("Admin"))
             {
             %>
					<div hidden="hidden">
						<li><a class="dropdown-item"
							href="viewSupplierInformation?id=<%=sessionid%>">Profile</a></li>
						<li><hr class="dropdown-divider" /></li>

					</div>
					<%
             }
             else
             {
             %>
					<li><a class="dropdown-item"
						href="viewSupplierInformation?id=<%=sessionid%>">Profile</a></li>
					<li><hr class="dropdown-divider" /></li>
					<%
             }
             %>
					<li><a class="dropdown-item" href="LogoutController">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Supplier</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-truck"></i>
							</div> Order
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="ListOrderController">View Order</a>
								<a class="nav-link" href="ListPaymentController">View
									Payment</a> <a class="nav-link" href="ViewReturnOrder">View
									Return Order</a>
							</nav>
						</div>
					</div>
					<div class="nav">
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts2" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-cubes"></i>
							</div> Product
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts2"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="viewProductSupplier">List Product</a>
								<a class="nav-link" href="addProduct.jsp">Add Product</a>
							</nav>
						</div>
					</div>
					<div class="nav">
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts3" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-users"></i>
							</div> Agent
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts3"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="ListAgentController">List Agent</a> <a
									class="nav-link" href="addAgent.jsp">Add Agent</a>
								<%
				//Remove '@' 
			               if (supplierposition.equals("supplier")) {
			                  %>
								<div hidden="hidden">
									<a class="nav-link" href="addSupplier.jsp">Add Supplier</a>

								</div>
								<% 
			               }
			               else
			               {
			            	 %>
								<a class="nav-link" href="addSupplier.jsp">Add Supplier</a>
								<%
			               }
			              %>
								<%
				//Remove '@' 
			               if (supplierposition.equals("supplier")) {
			                  %>
								<div hidden="hidden">
									<a class="nav-link" href="ListSupplierController">List
										Supplier</a>

								</div>
								<% 
			               }
			               else
			               {
			            	 %>
								<a class="nav-link" href="ListSupplierController">List
									Supplier</a>
								<%
			               }
			              %>

							</nav>
						</div>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					<%= sessionid %>
					<%= suppliername %>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Add Agent</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Dashboard</li>
					</ol>
					<form action="AddAgentController" method="post">
						<input type="hidden" name="adminID" value="<%=sessionid %>" />
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Agent
								ID:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="inputPassword"
									placeholder="Enter Agent ID" name="agentID" required>
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Full
								Name:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="inputPassword"
									placeholder="Enter Agent Name" name="agentName" required>

							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">
								Password:</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="password"
									name="agentPassword" placeholder="Enter Password" required>

							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">
							</label>
							<div class="col-sm-4">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										onclick="myFunction()"> <label
										class="form-check-label" for="defaultCheck1"> Show
										Password </label>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Gender</label>
							<div class="col-sm-2">
								<select class="form-control" name="agentGender" id="productType"
									required>
									<option value="" selected disabled>Select Gender</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
							</div>
						</div>

						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Phone
								Number:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="inputPassword"
									name="agentPhoneNo" placeholder="Enter Phone Number" maxlength="11" pattern="\d{10}" required>


							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Address</label>
							<div class="col-sm-4">
								<textarea class="form-control" id="rm_input" name="agentAddress"
									rows="3" required></textarea>


							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Email
								Address</label>
							<div class="col-sm-4">
								<input type="email" class="form-control" id="rm_input"
									name="agentEmail" placeholder="Enter Email Address" required>


							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label label">Date
								Assigned</label>
							<div class="col-sm-2">
								<input type="date" class="form-control" id="rm_input"
									name="agentDateAssign" required>


							</div>
						</div>

						<button type="submit" class="btn btn-outline-dark mt-2 ">Submit</button>
						<div
							class="alert alert-success alert-dismissible fade show mt-3 col-sm-4"
							id="notice" style="display: none;">
							<strong>Success!</strong> Your information has been successfully
							submit.
							<button type="button" class="close" data-dismiss="alert">&times;</button>
						</div>
					</form>
					<c:choose>
						<c:when test="${success.equals('Update success')}">
							<script>
       $("#notice").show();
       setTimeout(function(){ 
    	      $("#notice").fadeOut();
    	}, 5000);</script>
						</c:when>
					</c:choose>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Agent Management
							System</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"
		integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw=="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
