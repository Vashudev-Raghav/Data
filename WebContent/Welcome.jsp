<html>
<head>
</head>
<body>
 <% 
 HttpSession hs=request.getSession();
 String name=(String)hs.getAttribute("name");
String a="vashu";
if(name.equals("vashu"))
{
	out.println("Welcome"+name);	
}
%>
<!--  <marquee></marquee>--> 
</body>
</html>