<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${2+3-5} <br/>
${1==1?"haha":"xixi"}<br/>
${"AA"=="AA"}  <!--true-->  <br/>
${"AA" eq "AA"}  <!--true--> <br/>
<%
    pageContext.setAttribute("src", new String("AA"));
%>
${str=="AA"}  <!--false--> <br/>

<hr/>
${pageContext.request.contextPath} <!--<Context path="" docBase="D:\workspace\javabean-el\web"/>-->
${pageContext.getRequest().getContextPath()}<!--Tomcate7才支持-->

<hr/>
<!-判断集合是否为空-->
<%
    pageContext.setAttribute("list", null);
%>
${empty list}
${!empty list}
${not empty list}
</body>
</html>
