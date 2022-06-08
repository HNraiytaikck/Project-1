<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<h4 class="p-2" style="border-bottom:2px solid green;">Notifications</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Course ID</th>
					<th>Course Name</th>
					<th>Vendor Id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${nlist }">
					<tr>
						<td>${u.id }</td>
						<td>${u.cid }</td>
						<td>${u.cname }</td>
						<td>${u.vendorid }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>