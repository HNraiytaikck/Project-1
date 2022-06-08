<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Add New Service</h5>
					</div>
					<div class="card-body">
						<form method="post" action="editservice">
							<input type="hidden" name="id" value="${c.id }">
							<input type="hidden" name="userid" value="${sessionScope.userid }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Service Name</label>
								<div class="col-sm-8">
									<input type="text" name="sname" value="${c.sname }" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Price</label>
								<div class="col-sm-8">
									<input type="text" name="price" value="${c.price }" class="form-control" />
								</div>
							</div>
							
							<input type="submit" value="Save Service"
								class="btn btn-primary float-right px-4">
						</form>
						<c:if test="${c.active }">
						<a onclick="return confirm('Are you sure to deactivate your account ?')" 
						href="/deactivateservice?id=${c.id }" class="btn btn-danger">Deactivate Service</a>
						</c:if>
						<c:if test="${not c.active }">
						<a onclick="return confirm('Are you sure to activate your account ?')" 
						href="/activateservice?id=${c.id }" class="btn btn-success">Activate Service</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>