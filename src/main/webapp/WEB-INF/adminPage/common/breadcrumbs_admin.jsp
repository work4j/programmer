<!--/*******面包屑*******/-->
<div th:fragment="breadcrumbs(parent,current)" class="row">
	<div class="col-lg-12">
		<ol class="breadcrumb">
			<li><a th:href="@{/adminTG/index.gsp}">管理系统</a></li>
			<li class="active"><span th:text="${parent}">面包屑</span></li>
		</ol>
		<h1 th:text="${current}" style="margin-top: 8px; margin-bottom: 8px;">面包屑</h1>
	</div>
</div>