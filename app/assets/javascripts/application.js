    function logout(){
        $.get('/user/userlogout',function(data){
            if(data=="s"){
                alert("退出成功！");
                location.href="/";
            }
        })
    }
