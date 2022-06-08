<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		
		<h4 class="p-2" style="border-bottom:2px solid green;">Course and Services Orders</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<div class="row">
			<div class="col-sm-6">
				<h5>Courses</h5>
				<table class="table table-bordered table-sm">
					<thead>
						<tr>
							<th>Id</th>
							<th>Course Name</th>
							<th>Price</th>
							<th>User ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ clist}" var="cl">
							<tr>
								<td>${cl.id }</td>
								<td>${cl.itemname }</td>
								<td>${cl.price }</td>
								<td>${cl.vendorid }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-6">
				<h5>Services</h5>
				<table class="table table-bordered table-sm">
					<thead>
						<tr>
							<th>Id</th>
							<th>Service Name</th>
							<th>Price</th>
							<th>User ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ slist}" var="cl">
							<tr>
								<td>${cl.id }</td>
								<td>${cl.itemname }</td>
								<td>${cl.price }</td>
								<td>${cl.vendorid }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
			
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>