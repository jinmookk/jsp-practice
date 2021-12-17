<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<title>뉴스 관리 앱</title>
</head>
   <body>
   <div class="container w-75 mt-5 mx-auto">
    <h2>${news.title}</h2>
    <hr>
    <div class="card w-75 mx-auto">
	    <img class="card-img-top" src="${news.img}"> 
	    <div class="card-body">
	    	<h4 class="card-title">Date: ${news.date}</h4>
	    	<p class="card-text">Content: ${news.content}</p>
	    </div>
    </div>
    <hr>
    <a href="javascript:history.back()" class="btn btn-secondary"><< Back</a>
    <button class="btn btn-warning" type="button" data-bs-toggle="collapse" data-bs-target="#updateForm" aria-expanded="false" aria-controls="updateForm">수정</button>
	<div class="collapse mt-3" id="updateForm">
	  <div class="card card-body">
		<form method="post" action="/news/update" enctype="multipart/form-data">
			<input type="hidden" name="aid" class="form-control" value="${news.aid }">
			<label class="form-label">제목</label>
			<input type="text" name="title" class="form-control" value="${news.title}">
			<label class="form-label">이미지</label>
			<input type="file" name="file" class="form-control">
			<label class="form-label">기사내용</label>
			<textarea cols="50" rows="5" name="content" class="form-control">${news.content}</textarea>
			<button type="submit" class="btn btn-success mt-3">저장</button>
		</form>
	  </div>
	</div>
    </div>
    </body>
</html>