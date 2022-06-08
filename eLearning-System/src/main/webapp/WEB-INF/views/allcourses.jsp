<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		
		<form style="width:700px;" class="float-right">
		<button class="btn btn-success btn-sm float-right mr-2 mt-2">Search</button>
		<div style="width:200px" class="float-right py-2 mr-2">
			<select name="role" class="form-control form-control-sm">
				<option ${param.role=='all' ? 'selected':'' } value="all">-- All Vendors --</option>
				<c:forEach items="${vendors }" var="v">
					<option ${param.role eq v.userid ? 'selected':'' } value="${v.userid }">${v.name }</option>
				</c:forEach>				
			</select>
		</div>
		<div style="width:200px" class="float-right py-2 mr-2">
			<select name="cat" class="form-control form-control-sm">
				<option value="all">-- All Category --</option>
				<option ${param.cat == 'Self Learning'?'selected':'' }>Self Learning</option>
				<option ${param.cat == 'Instructor Led'?'selected':'' }>Instructor Led</option>
				<option ${param.cat == 'Assessment'?'selected':'' }>Assessment</option>
			</select>
		</div>
		</form>
		
		<h4 class="p-2" style="border-bottom:2px solid green;">All Courses List</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Course Name</th>
					<th>Price</th>
					<th>Duration</th>
					<th>Category</th>
					<th>User ID</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${list }">
					<tr>
						<td>${u.id }</td>
						<td>${u.cname }</td>
						<td>&#8377; ${u.amount }</td>
						<td>${u.duration } Hours</td>
						<td>${u.category }</td>
						<td>${u.userid }</td>
						<td><a href="/buycourse?id=${u.id }" class="btn btn-primary btn-sm">Buy Now</a></td>
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