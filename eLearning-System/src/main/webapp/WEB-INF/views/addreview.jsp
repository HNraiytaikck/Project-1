<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		
		<h4 class="p-2" style="border-bottom:2px solid green;">Course and Services Purchased</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<div class="row">
			<div class="col-sm-8">
				<h5>Course Review</h5>
				<table class="table table-bordered table-sm">
					<thead>
						<tr>
							<th>Id</th>
							<th>Course Name</th>
							<th>Review</th>
							<th>User Name</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ rlist}" var="cl">
							<tr>
								<td>${cl.id }</td>
								<td>${cl.cname }</td>
								<td>${cl.reviews }</td>
								<td>${cl.uname }</td>
							</tr>
						</c:forEach>	
					</tbody>
				</table>
			</div>
			<div class="col-sm-4">
				<h5>Add Review</h5>
				<form method="post">
				<input type="hidden" name="userid" value="${sessionScope.userid }">
				<input type="hidden" name="uname" value="${sessionScope.uname }">
					<div class="form-group">
						<label>Select Course</label>
						<select name="cid" required class="form-control">
							<option value="">Select Course</option>
							<c:forEach var="c" items="${clist }">
								<option value="${c.itemid }">${c.itemname }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label>Review</label>
						<textarea name="reviews" class="form-control" rows="3"></textarea>
					</div>
					
					<button class="btn btn-primary">Save Review</button>
				</form>
			</div>
		</div>
			
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>