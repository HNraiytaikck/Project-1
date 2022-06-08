<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Add New Course</h5>
					</div>
					<div class="card-body">
						<form method="post">
							<input type="hidden" name="userid" value="${sessionScope.userid }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Course Name</label>
								<div class="col-sm-8">
									<input type="text" required name="cname" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Price</label>
								<div class="col-sm-8">
									<input type="number" required min="1" name="amount" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Duration(hrs)</label>
								<div class="col-sm-8">
									<input type="number" min="1" required name="duration" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Category</label>
								<div class="col-sm-8">
									<select name="category" required class="form-control">
										<option>Instructor Led</option>
										<option>Self Learning</option>
										<option>Assessment</option>
									</select>
								</div>
							</div>
							<input type="submit" value="Save Course"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>