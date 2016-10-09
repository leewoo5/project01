<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>btn.jsp</title>
	
	<!-- Bootstrap 3.3.4 -->
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	
	
	<!-- jQuery 2.1.4 -->
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	
	<!-- Font Awesome Icons -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	$(document).ready(function() {
		$('.btn.btn-default').on('click', function() {
			$('#result').html($(this).html());
			
			event.preventDefault();
		});
	});
</script>
</head>
<body>

	<ol>
		<li><button class="btn btn-default">default</button></li>
		<li><button class="btn btn-primary">primary</button></li>
		<li><button class="btn btn-success">success</button></li>
		<li><button class="btn btn-link">link</button></li>
		<li><button class="btn btn-warning">warning</button></li>
		<li><button class="btn btn-danger">danger</button></li>
		<li><a href="/user/login" class="btn btn-link">info</a></li>
	</ol>
	
</body>
</html>