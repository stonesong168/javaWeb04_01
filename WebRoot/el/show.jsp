<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${p}<br/>
<!--
如果没有给id提供getter方法
root cause
javax.el.PropertyNotFoundException:
        Property 'id' not found on type xiaosu._02_el.Person-->
id:${p.id}----${p["id"]}<br/>

name:${p.name}          <br/>

数组: ${p.arr}          <br/>
数组: ${p.arr[0]}          <br/>
数组: ${p.arr[1]}          <br/>
List集合:${p.list}          <br/>
List集合:${p.list[0]}          <br/>
List集合:${p.list[1]}          <br/>
Map集合:${p.map}          <br/>
Map集合:${p.map.company}          <br/>
Map集合:${p.map["www.xiaosukeji"]}  注:这里要使用方括号的形式       <br/>
</body>
</html>
