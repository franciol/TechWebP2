<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<input name="searchTag" type="text" id="strSearch" onclick="search();">

<script type="text/javascript">
function search() {
	var str = document.getElementById("strSearch");
	var url_string = "https://api.deezer.com/search?q="+str;
	//window.location.href
	const Http = new XMLHttpRequest();
	Http.open("GET",url_string);
	Http.send();

	Http.onreadystatechange=(e)=> {
		document.getElementById("hiddenField").value=Http.responseText
	}
}
</script>

</body>
</html>