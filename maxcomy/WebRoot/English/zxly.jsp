<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Maxcom ��������</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function fun_check_form(){
			if(document.form1.name.value==""){
				alert("�����������ǳƣ�");
				return false;
			}else if(document.form1.content.value==""){
				alert("�����������������ݣ�");
				return false;
			}else{
				return true;
			}
		}
</script>
</head>
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>�������ԣ�</h1>
            <div class="content">
<form id="form1" name="form1" method="post" action="../addMsg" onsubmit="return fun_check_form();">
  <table width="100%" border="0">
    <tr>
      <td width="20%" height="30" align="right"><span class="STYLE5">�ǳƣ�</span></td>
      <td width="50%" height="30"><label>
        <input name="name" type="text" id="name" size="40" />
      </label></td>
      <td width="30%" height="30"></td>
    </tr>
    <tr>
      <td width="20%" height="30" align="right"><span class="STYLE5">�绰��</span></td>
      <td width="50%" height="30"><label>
        <input name="phone" type="text" id="phone" size="40" />
      </label></td>
      <td width="30%" height="30"></td>
    </tr>
    <tr>
      <td width="20%" height="30" align="right"><span class="STYLE5">���䣺</span></td>
      <td width="50%" height="30"><label>
        <input name="email" type="text" id="email" size="40" />
      </label></td>
      <td width="30%" height="30"></td>
    </tr>
    <tr>
      <td width="20%" height="30" align="right" valign="top"><span class="STYLE5">�������ݣ�</span></td>
      <td width="50%" height="30"><label>
        <textarea name="content" cols="40" rows="5" id="content"></textarea>
      </label></td>
      <td width="30%" height="30"></td>
    </tr>
    <tr>
      <td width="20%" height="30" align="right"><span class="STYLE5">��֤�룺</span></td>
      <td height="30" colspan="2">&nbsp;<script language="javascript">
	
  function loadimage(){ 
    document.getElementById("randImage").src = "<%=basePath%>/common/enimg.jsp?"+Math.random(); 
  } 
	  </script>
							<input name="rand" id="rand" size="21" />
							&nbsp;&nbsp;&nbsp;
							<img src="<%=basePath%>/common/enimg.jsp" alt="code..."
								name="randImage" width="55" height="16" border="1"
								align="absmiddle" class="box" id="randImage" />
							<a href="javascript:loadimage();"><font color="#808080">������,��һ��</font>
							</a></td>
    </tr>
    <tr>
      <td width="20%" height="30">&nbsp;</td>
      <td width="50%" height="30"><label>
           <div align="center">
          <input type="submit" name="Submit" class="tuichu" value="�ύ"/>&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" name="Submit2" class="tuichu" value="����" />
          </div>
      </label></td>
      <td width="30%" height="30">&nbsp;</td>
    </tr>
  </table>
</form>
            	</div>
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
