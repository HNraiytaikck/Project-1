<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<a href="/allcourses" class="btn btn-primary btn-sm float-right">Courses</a>		
		<h4 class="p-2" style="border-bottom:2px solid green;">All Services List</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Service Name</th>
					<th>Price</th>
					<th>User ID</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${list }">
					<tr>
						<td>${u.id }</td>
						<td>${u.sname }</td>
						<td>&#8377; ${u.price }</td>
						<td>${u.userid }</td>
						<td><a href="/buyservice?id=${u.id }" class="btn btn-primary btn-sm">Buy Now</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>
<script>
$(function(){
	$("#role").change(function(){
		let role=$(this).val();
		location.href="services?role="+role;
	});
	
});
</script>

<jsp:include page="footer.jsp"></jsp:include>