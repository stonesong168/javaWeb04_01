<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    //向jsp中的四大作用域对象设置了共享数据
    pageContext.setAttribute("msg", "pageContextValue");
    request.setAttribute("msg", "requestValue");
    session.setAttribute("msg", "settionValue");
    application.setAttribute("msg", "applicationValue");
%>
<%=pageContext.getAttribute("msg")%><br/>
<%=request.getAttribute("msg")%><br/>
<%=session.getAttribute("msg")%><br/>
<%=application.getAttribute("msg")%><br/>
<hr/>

<%=pageContext.findAttribute("msg")%><br/>

<!--如果找不到就不要显示null-->
<%=pageContext.findAttribute("msg1")%><br/>
<%=pageContext.findAttribute("msg1") != null ? pageContext.findAttribute("msg1") : ""%>
<hr/>

${msg}等价于<%=pageContext.findAttribute("msg") != null ? pageContext.findAttribute("msg") : ""%><br/>
<hr/>
<!--如何通过EL获取不同作用域中的属性-->
${pageScope.msg}<br/>
${requestScope.msg}<br/>
${sessionScope.msg}<br/>
${applicationScope.msg}<br/>


</body>
</html>
