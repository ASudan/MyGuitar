<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MyguitarSystem</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main1.css"/>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
</head>


<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <ul class="navbar-list clearfix">
                <li><a class="on" href="Search.jsp">MyGuitar查询系统</a></li>
            </ul>
        </div>
        
        </div>
    </div>
</div>
    <div class="main-wrap">
       
       <div class="result-wrap">
            <!--  <form name="myform" id="myform" method="post"> -->
                <div class="result-title">
                    <div class="result-list">
                    	<form action="select" method="post">
						请输入型号查询：<input type="text" name="type">
						<input type="submit" value="查询"></p>
						</form> <br>
						<p> 
						<form action="searchall" method="post">
						或点此查询全部&nbsp&nbsp<input type="submit" value="查询全部数据">
						</form>   
						<p>                      
                        
                    </div>
                </div>
        <div class="result-content">
        	查询结果如下：
			<table class="result-tab" width="100%">
			<tr align="center">
            <td width="50">编号</td> 
            <td width="70">生产商</td>
            <td width="50">价格</td>
            <td width="50">型号</td>
            <td width="70">背板材料</td> 
            <td width="70">前板材料</td>
            </tr>
                        
            <!-- foreach循环 -->
            <c:forEach var="guitar" items="${requestScope.list}">
            	<tr align="center">
            	<td>${guitar.serialNumber}</td> 
                <td>${guitar.builder}</td> 
                <td>${guitar.price}</td>
                <td>${guitar.type}</td>
                <td>${guitar.backWood}</td>
                <td>${guitar.topWood}</td>
                </tr>
            </c:forEach>
            <!-- 结束 -->
            </table>
		</div>
</div>
</div>
</div>
</body>
</html>
