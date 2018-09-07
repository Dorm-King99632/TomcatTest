<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JspLife</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%! //注意感叹号不要忽略
    	private int InitVar = 0;
    	private int DestroyVar = 0;
    	private int ServiceVar = 0;
     %>
     <%! //同理感叹号
     	public void jspInit(){
     		InitVar++;
     		System.out.println("JspInit():JSP被初始化了 " + InitVar + "次");
     	}
      %>
      <%! //同理感叹号
      	public void jspDestroy(){
      		DestroyVar++;
      		System.out.println("JspDestroy(): JSP被销毁了" + DestroyVar + "次");     		
      	}
       %>
       <% //注意这里没有感叹号
       	ServiceVar++;
       	System.out.println("_jspService():JSP响应了"+ "ServiceVar" + "次请求");
       	
       	String content1 = "初始化次数:" + InitVar;
       	String content2 = "响应客户端次数:" + ServiceVar;
       	String content3 = "销毁次数:" + DestroyVar; 
        %>
        <h1><font face = "楷体">不吃辣椒的鲨鱼辣椒 JSP生命周期测试实例</font></h1>
        <p><%=content1 %></p>  <!-- 注意等号 -->
        <p><%=content2 %></p>  <%--JSP注释，注释内容不会被发送到浏览器，甚至不会被编译 --%>
        <p><%=content3 %></p>  <!-- HTML注释，查看网站源码的时候会被看见 -->
        
       
  </body>
</html>
