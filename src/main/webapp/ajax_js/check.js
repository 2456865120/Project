
function tocheckLoginname() {
		//先用js代码做校验,如果校验通过再进行ajax想服务器发送数据
		var loginname=document.getElementById("loginname").value;
			 $.ajax({
	             url:"checkLoginname",
	             type:"post",
	             data:{"loginname":loginname},
	             dataType:"text",
	             beforeSend:function(){
	             },
	             success:function(message){
	            	 document.getElementById("test").value = message;
	            	if(message!=""){
	            		 document.getElementById("loginname").focus();
	            		 $('#loginname')[0].style.border="1px solid rgb(229,58,49)";
	            	}else{
	            		 $('#loginname')[0].style.border="1px solid #ccc";
	            	}
	             }
	          });
	}

function checkLoginnameAndPassword() {
	$("#toLoginForm").submit();

		
	}

function toregistCode() {
	
	var registCode=document.getElementById("registCode").value;
	var params = {
            "registCode":registCode
        }
	  $.ajax({
         url:"toregistCode",
         type:"post",
         data:params,
         dataType:"text",
         beforeSend:function(){
         },
         success:function(message){
        	 alert(message)
        	 document.getElementById("span_id").value = message;
             	if(message!=""){
             		  document.getElementById("registCode").focus();
             		  $('#registCode')[0].style.border="1px solid rgb(229,58,49)";
             	}else{
             		 $('#registCode')[0].style.border="1px solid #ccc";
             		 $("#toLoginForm").submit();
             	}
         }
      });
	}
	



















