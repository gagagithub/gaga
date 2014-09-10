$(function () {
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$/;
    $("#validation").click(function(event){	
        if($('#mail').attr("value")==""){
            alert("邮箱为空！");
        }
        else if($('#username').attr("value")==""){
            alert("姓名为空！");
        }
        else if($('#password').attr("value")==""){
            alert("密码为空！");
        }
        else if(!myreg.test($('#mail').attr("value"))){
            alert("邮箱格式不正确！");
        }
        else{
            $.get("/user/sign_up",{user_email:$("#mail").attr("value"),user_name:$("#username").attr("value"),password:$("#password").attr("value")},function(data){
                if(data!="s"){
                    alert("邮箱已注册！");
                }
                else if(data=="s"){
                    alert("注册成功！");
                    location.href="/";//注册成功，进入登陆页
                }
            })
        }
    });
});
