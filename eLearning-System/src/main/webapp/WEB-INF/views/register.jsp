<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Screen</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<div class="jumbotron text-center p-3">
		<h5>E-Learning System</h5>
		<h6>Register Screen</h6>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Register Screen</h5>
					</div>
					<div class="card-body">
						<sf:form method="post" modelAttribute="user">
							<div class="form-group form-row">
								<sf:label path="name" cssClass="col-sm-4 col-form-label">User Name</sf:label>
								<div class="col-sm-8">
									<sf:input type="text" path="name" cssClass="form-control" />
									<sf:errors path="name" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="phone" cssClass="col-sm-4 col-form-label">Contact No</sf:label>
								<div class="col-sm-8">
									<sf:input type="text" path="phone" maxlength="10"
										cssClass="form-control" />
										<sf:errors path="phone" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="address" cssClass="col-sm-4 col-form-label">Address</sf:label>
								<div class="col-sm-8">
									<sf:input type="text" path="address"
										cssClass="form-control" />
									<sf:errors path="address" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="dob" cssClass="col-sm-4 col-form-label">Date of Birth</sf:label>
								<div class="col-sm-8">
									<sf:input type="date" path="dob" cssClass="form-control" />
									<sf:errors path="dob" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="userid" cssClass="col-sm-4 col-form-label">User ID</sf:label>
								<div class="col-sm-8">
									<sf:input type="text" path="userid" cssClass="form-control" />
									<sf:errors path="userid" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="pwd"  cssClass="col-sm-4 col-form-label">Password</sf:label>
								<div class="col-sm-8">
									<sf:input type="password" path="pwd" cssClass="form-control" />
									<sf:errors path="pwd" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="cpwd"  cssClass="col-sm-4 col-form-label">Repeat Password</sf:label>
								<div class="col-sm-8">
									<sf:input type="password" path="cpwd" cssClass="form-control" />
									<sf:errors path="cpwd" cssClass="text-danger text-small" />
								</div>
							</div>
							<div class="form-group form-row">
								<sf:label path="role"  cssClass="col-sm-4 col-form-label">Role</sf:label>
								<div class="col-sm-8">
									<sf:select path="role" cssClass="form-control">
										<sf:option value="">-- select Role --</sf:option>
										<sf:option value="Learner">Learner</sf:option>
										<sf:option value="Vendor">Vendor</sf:option>
									</sf:select>
									<sf:errors path="role" cssClass="text-danger text-small" />
								</div>
							</div>
							<a href="/" class="float-left">Already registered</a> 
							<input type="submit" value="Register"
								class="btn btn-primary float-right px-4">
						</sf:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>