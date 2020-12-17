<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>聊天室</title>
        <link rel="stylesheet" href="../../CSS/semantic.css" media="screen" title="no title" charset="utf-8">
        <link rel="stylesheet" href="../../CSS/list_custom.css" media="screen" title="no title" charset="utf-8">
        <style type="text/css">
            body {
                background: url(../../images/bg1.jpg);
                background-size: cover;
            }

            .ui.grid.divided.segment.container{
                min-height: 400px;
                width:600px !important;
                border:rgba(255, 0, 0, 0);
                position: absolute;
                left: 50%;
                top:40%;
                transform: translate(-50%,-50%);
            }

            .five.wide.column {
            	
               	background: url(../../images/bg2.jpg);
                background-size: cover;
                background-position: 60% 0%;
            }

            form {
                margin-top: 60px;
            }
            h1,h3,h4{
                font-family: 'Play', sans-serif !important;

            }
            .b{
            width:80px;
            height:40px;
            background-color:#FFFFFF;
            border-color:#DEB887;
            border-radius:2em;
           	color:#DEB887;
            position: absolute;
            left:80%;
            }
        </style>


        <script>
            function a() {
                var password1 = document.getElementById("p1").value;
                var password2 = document.getElementById("p2").value;

                if(password1!=password2){
                    alert("密码错误");
                    return false;
                }
            }
        </script>
    </head>
    <body>
    	
        <div class="ui grid divided segment container">
            <div class="five wide  column">

                <h4 class="ui inverted header">

                   <a href="${pageContext.request.contextPath }/main.jsp" style="color:#ffffff">HFUU</a>
                </h4>

                <h1 class="ui inverted center aligned header" style="font-size: 28px;margin-top:55px">
                    <p class="sub header">
                        Welcome to
                    </p>
                    	收货郎
                </h1>

            </div>

            <div class="eleven wide column">
                <h4 class="ui inverted right aligned header">
                    <a href="${pageContext.request.contextPath }/user/toLogin" style="color:#DEB887;">前往登录</a>
                </h4>
			<h3 align="center" style="color:red;">${error}</h3>
                <form class="ui form error" method="post" onsubmit="a()"
                		action="${pageContext.request.contextPath}/user/addUser">
	    		<input type="hidden" name="method" value="login">
	    		用户名
	    		<input type="text" name="username" required><br><br><%--这里name里的名称必须和实体类里的名称一致，否则会报错--%>
	    		密码
	    		<input type="text" name="password" id="p1" required><br><br>
	    		确认密码
	    		<input type="text" name="password1" id="p2" onblur="a()" required><br><br>
<%--                    <button class="b" onclick="a()">注册</button>--%>
                    <input type="submit" value="提交" onclick="return a()">
                </form>
            </div>
        </div>
    </body>
</html>