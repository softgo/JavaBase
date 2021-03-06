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
       <div class="box_top" ><b class="pl15" >系统管理——>添加信息</b></div>
        <div class="box_center" style="overflow-y:scroll;align:center; height:75%;">
		<form action="<%=request.getContextPath()%>/background/customerUsers/updateById.html" method="post" name="userForm" id="userForm">
			<input type="hidden" name="user_id" value="${objId}"><!-- 修改时候自动添加 -->
			<table class="form_table pt15 pb15 list_table" width="100%" border="1" cellpadding="0" cellspacing="0">
                 <!-- 修改的信息 -->
                			<tr>
					<td class="td_right">
						用户id:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userId" id="userId" value="${object.userId}"></input>
					<font color="red"> <span id="userIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户名:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userName" id="userName" value="${object.userName}"></input>
					<font color="red"> <span id="userNameTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户密码:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userPass" id="userPass" value="${object.userPass}"></input>
					<font color="red"> <span id="userPassTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户手机号:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userPhone" id="userPhone" value="${object.userPhone}"></input>
					<font color="red"> <span id="userPhoneTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户邮箱:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userMail" id="userMail" value="${object.userMail}"></input>
					<font color="red"> <span id="userMailTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户QQ:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userQq" id="userQq" value="${object.userQq}"></input>
					<font color="red"> <span id="userQqTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户性别;1:男,0:女:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userGender" id="userGender" value="${object.userGender}"></input>
					<font color="red"> <span id="userGenderTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户地址:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userAddress" id="userAddress" value="${object.userAddress}"></input>
					<font color="red"> <span id="userAddressTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户微信号:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userWechat" id="userWechat" value="${object.userWechat}"></input>
					<font color="red"> <span id="userWechatTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						微信公众号ID:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="publicWechatId" id="publicWechatId" value="${object.publicWechatId}"></input>
					<font color="red"> <span id="publicWechatIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						微信公众号key:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="publicWechatKey" id="publicWechatKey" value="${object.publicWechatKey}"></input>
					<font color="red"> <span id="publicWechatKeyTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						微信公众号token:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="publicWechatToken" id="publicWechatToken" value="${object.publicWechatToken}"></input>
					<font color="red"> <span id="publicWechatTokenTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						微信公众号秘钥:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="publicWechatSkey" id="publicWechatSkey" value="${object.publicWechatSkey}"></input>
					<font color="red"> <span id="publicWechatSkeyTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户主页url地址:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userUrl" id="userUrl" value="${object.userUrl}"></input>
					<font color="red"> <span id="userUrlTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户头像:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userImage" id="userImage" value="${object.userImage}"></input>
					<font color="red"> <span id="userImageTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户所属行业ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userIndustryId" id="userIndustryId" value="${object.userIndustryId}"></input>
					<font color="red"> <span id="userIndustryIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户所属套餐ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userPackageId" id="userPackageId" value="${object.userPackageId}"></input>
					<font color="red"> <span id="userPackageIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户所属平台ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userPlatformId" id="userPlatformId" value="${object.userPlatformId}"></input>
					<font color="red"> <span id="userPlatformIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户应用ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userAppId" id="userAppId" value="${object.userAppId}"></input>
					<font color="red"> <span id="userAppIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户频道ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userChannelId" id="userChannelId" value="${object.userChannelId}"></input>
					<font color="red"> <span id="userChannelIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户商铺ids:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userShopId" id="userShopId" value="${object.userShopId}"></input>
					<font color="red"> <span id="userShopIdTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						用户状态;1:启用,0:弃用:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="userStatus" id="userStatus" value="${object.userStatus}"></input>
					<font color="red"> <span id="userStatusTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						注册时间:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="registerTime" id="registerTime" value="${fn:substring(object.registerTime,0,19)}"></input>
					<font color="red"> <span id="registerTimeTag" /></font>
					</td>
				</tr>
				<tr>
					<td class="td_right">
						修改时间:
					</td>
					<td class="td_left" >
					<input class="input-text lh30" size="40" name="lastUpdateTime" id="lastUpdateTime" value="${fn:substring(object.lastUpdateTime,0,19)}"></input>
					<font color="red"> <span id="lastUpdateTimeTag" /></font>
					</td>
				</tr>
	     
                                   
				<tr>
					<td class="td_right">
                    </td>
                    <td class="td_left">
                       <sec:authorize ifAnyGranted="ROLE_customer_users_edit">
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
