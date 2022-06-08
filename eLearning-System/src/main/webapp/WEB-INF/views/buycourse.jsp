<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Course Details</h5>
					</div>
					<div class="card-body">
							<div class="form-group form-row">
								<label class="col-sm-4">Course Name</label>
								<div class="col-sm-8">
									${c.cname }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Price</label>
								<div class="col-sm-8">
									&#8377; ${c.amount }
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4">Duration</label>
								<div class="col-sm-8">
									${c.duration } hours
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4">Category</label>
								<div class="col-sm-8">
									${c.category }
								</div>
							</div>
							
							<h4 class="p-2">Reviews</h4>
							<ul>
							<c:forEach var="r" items="${rlist }">
								<li>${r.reviews } - ${r.uname }</li>
							</c:forEach>
							</ul>
					</div>
				</div>
			</div>
			
			<div class="col-sm-4 mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Payment Details</h5>
					</div>
					<div class="card-body">
						<form method="post" onsubmit="return confirm('Are you sure to make the payment?')">
							<input type="hidden" name="itemid" value="${param.id }">
							<input type="hidden" name="userid" value="${sessionScope.userid }">
							<input type="hidden" name="vendorid" value="${c.userid }">
							<input type="hidden" name="itemname" value="${c.cname }">
							<input type="hidden" name="itemtype" value="Course">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Amount</label>
								<div class="col-sm-8">
									<input type="text" readonly name="price" value="${c.amount }" class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Card No</label>
								<div class="col-sm-8">
									<input type="text" name="cardno" pattern="[0-9]{16,16}" required maxlength="16" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Name on Card</label>
								<div class="col-sm-8">
									<input type="text" name="nameoncard" required class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">CVV</label>
								<div class="col-sm-8">
									<input type="text" maxlength="3"pattern="[0-9]{3,3}" required name="cvv" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Expiry</label>
								<div class="col-sm-8">
									<input type="month" placeholder="MM/YYYY" required name="expiry" class="form-control" />
								</div>
							</div>
							<input type="submit" value="Make Payment"
								class="btn btn-primary float-right px-4">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>