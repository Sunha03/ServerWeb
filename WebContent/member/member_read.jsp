<%@page import="member.MemberDTO"%>
<%@page import="dept.DeptDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
			<form role="form" class="form-horizontal"
		action="/serverweb/action?deptno=<%= "001" %>&state=UPDATE" 
		method="get">
				<fieldset>
					<div id="legend">
						<legend>아래 양식을 작성해주세요.</legend>
					</div>
					<%
						MemberDTO member = (MemberDTO)request.getAttribute("member");
					%>
					
					<div class="form-group">
						<!-- 부서코드 -->
						<label class="control-label col-sm-2" for="orgcode">부서코드</label>
						<div class="col-sm-3">
							<!-- 부서코드를 이곳에 출력하세요 -->
							<%= member.getDeptno() %>
						</div>
					</div>

					<div class="form-group">
						<!-- 성명-->
						<label class="control-label col-sm-2" for="orgname">성명</label>
						<div class="col-sm-3">
							<!-- 성명을 이곳에 출력하세요 -->
							<%= member.getName() %>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 사번-->
						<label class="control-label col-sm-2" for="orgloc">사번</label>
						<div class="col-sm-3">
							<!-- 사번를 이곳에 출력하세요 -->
							<%= member.getId() %>
						</div>
					</div>
					<div class="form-group">
						<!-- 패스워드-->
						<label class="control-label col-sm-2" for="orgtel">패스워드</label>
						<div class="col-sm-3">
							<!-- 패스워드를 이곳에 출력하세요 -->
							<%= member.getPass() %>
						</div>
					</div>

					<div class="form-group">
						<!-- 주소-->
						<label class="control-label col-sm-2" for="orgtel">주소</label>
						<div class="col-sm-3">
							<!-- 주소를 이곳에 출력하세요 -->
							<%= member.getAddr() %>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 포인트-->
						<label class="control-label col-sm-2" for="orgtel">포인트</label>
						<div class="col-sm-3">
							<!-- 포인트를 이곳에 출력하세요 -->
							<%= member.getPoint() %>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 등급-->
						<label class="control-label col-sm-2" for="orgtel">등급</label>
						<div class="col-sm-3">
							<!-- 등급을 이곳에 출력하세요 -->
							<%= member.getGrade() %>
						</div>
					</div>
					
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-2">
							<input type="submit" value="수정" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>
	</div>
</body>
</html>