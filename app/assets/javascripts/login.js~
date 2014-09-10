$(function () {
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$/;
    $("#validation").click(function(event){	
        if($('#mail').attr("value")==""){
            alert("邮箱为空！");
        }
        else if($('#password').attr("value")==""){
            alert("密码为空！");
        }
        else if(!myreg.test($('#mail').attr("value"))){
            alert("邮箱格式不正确！");
        }
        else{
            $.get("/user/login",{user_email:$("#mail").attr("value"),password:$("#password").attr("value")},function(data){
                //alert(data);
                if(data=="f"){
                    location.href="/user/signup";//用户不存在，请注册
                }
                else if(data=="yqm"){
                    location.href="/user/signup";//邮箱和邀请码相同，请注册
                }
                else if(data=="pf"){
                    alert("密码错误");//密码错误
                }
                else{
                    location.href="/user/personal";//登陆成功，进入个人首页
                }
            })
        }
    });
});
