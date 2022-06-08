<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<a href="/adduser" class="btn btn-primary btn-sm float-right mt-1">Add User</a>
		<div style="width:200px" class="float-right py-2 mr-2">
			<select id="role" class="form-control form-control-sm">
				<option ${param.role=='all' ? 'selected':'' } value="all">-- All Users --</option>
				<option ${param.role=='Learner' ? 'selected':'' }>Learner</option>
				<option ${param.role=='Vendor' ? 'selected':'' }>Vendor</option>
			</select>
		</div>
		
		<h4 class="p-2" style="border-bottom:2px solid green;">Users List</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>User Id</th>
					<th>User Name</th>
					<th>Password</th>
					<th>Date of Birth</th>
					<th>Address</th>
					<th>Role</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${users }">
					<tr>
						<td>${u.userid }</td>
						<td>${u.name }</td>
						<td>${u.pwd }</td>
						<td>${u.dob }</td>
						<td>${u.address }</td>
						<td>${u.role }</td>
						<td>${u.active ? 'Active':'Inactive' }</td>
						<td><a href="/edituser?id=${u.userid }" class="btn btn-primary btn-sm">Edit</a></td>
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
		location.href="users?role="+role;
	});
	
});
</script>

<jsp:include page="footer.jsp"></jsp:include>