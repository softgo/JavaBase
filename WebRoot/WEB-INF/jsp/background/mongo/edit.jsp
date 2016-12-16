<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file="../../common/taglib.jsp"%>
<%@include file="../../common/common-css.jsp"%>
<%@include file="../../common/common-js.jsp"%>
</head>
 <script type="text/javascript">    
     //防止重复提交.  
	  function saveData(){
	     
	     /*
		 var propsName1 = $("#propsName1").val();
    	 var propsName2 = $("#propsName2").val();		  
    	 if(propsName1=="" || propsName1==null){
    	 	$("#propsName1Tag").html("请输入XXX!");
    	 	return false;
    	 }else{
    	 	$("#propsName1Tag").html("");
    	 }
    	 if( propsName2=="" || propsName2==null ){
    	 	$("#propsName2Tag").html("请输入XXX！");
    	 	return false;
    	 }else{
    	 	$("#propsName2Tag").html("");
    	 }
    	*/
    	 
    	 //提交.
    	 document.userForm.submit();
   	  	 return true;
	  }
	  
	  //查找是否已经存在.
	  $(function (){
	  		$("#propsName1").change(function(){
				var propsName1 = $("#propsName1").val();
				if(propsName1 != null && propsName1 != ''){
					$.ajax({
						url:'<%=request.getContextPath()%>/background/sysUsers/findByName.html',
						data:{"objName":propsName1},
						type : "POST",
						success:function(msg){
							var obj = eval(msg);
							if (obj.msg == "Y"){
								$("#propsName1Tag").html(obj.content);
								$("#propsName1").val("");
							}else{
								$("#propsName1Tag").html("");
							}
							return ;
						}
					});
				}
	  		});
	  });
</script>
<body>

<div style="height: 100%;overflow-y: auto;">
<div id="forms" class="mt10">
   <div class="box">
     <div class="box_border">
       <div class="box_top" ><b class="pl15" >系统管理——>修改信息</b></div>
        <div class="box_center" style="overflow-y:scroll;align:center; height:75%;">
		<form action="<%=request.getContextPath()%>/background/mongo/updateById.html" method="post" name="userForm" id="userForm">

			<input type="hidden" name="_id" id="_id" value="${objId}"><!-- 修改时候自动添加 -->
			<input type="hidden" name="propsName" id="propsName"  value="${ojbect.propsName}"><!-- 修改时候检查用的,根据实际情况添加 -->
			
			<table class="form_table pt15 pb15 list_table" width="100%" border="1" cellpadding="0" cellspacing="0">
                 <!-- 修改的信息 -->
                			<tr>
					<td class="td_right">
						_id:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="_id" id="_id" value="${object._id}"></input>
					<font color="red"> <span id="_idTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						title:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="title" id="title" value="${object.title}"></input>
					<font color="red"> <span id="titleTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						description:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="description" id="description" value="${object.description}"></input>
					<font color="red"> <span id="descriptionTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						by:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="by" id="by" value="${object.by}"></input>
					<font color="red"> <span id="byTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						url:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="url" id="url" value="${object.url}"></input>
					<font color="red"> <span id="urlTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						tags:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="tags" id="tags" value="${object.tags}"></input>
					<font color="red"> <span id="tagsTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						likes:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="likes" id="likes" value="${object.likes}"></input>
					<font color="red"> <span id="likesTag" /></font>
					</td>
				</tr>
	     
                                   
				<tr>
					<td class="td_right">
                    </td>
                    <td class="td_left">
                       <sec:authorize ifAnyGranted="ROLE_mongo_edit">
								<input type="button" name="button" class="btn btn82 btn_save2" value="保存" onclick="return saveData()" > 
				       </sec:authorize>
                      <input type="button" name="button" class="btn btn82 btn_res" value="重置" onclick="clearText()">
                      <input type="button"  class="btn btn82 btn_nochecked" value="返回" onclick="location.href='javascript:history.go(-1)'">
                    </td>
				</tr>
			</table>
		  </form>
		  </div>
          </div>
        </div>
     </div>
	</div>
</body>
</html>
