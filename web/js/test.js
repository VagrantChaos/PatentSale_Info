function doAction(value) {
    const form1 = document.getElementById("form1");
    if (value == 1){
        console.log("ok1")
        form1.action = "/Wed/SearchData?type=all";
    }
    if (value ==2){
        form1.action = "/Wed/AddData";
    }
    if (value==3){
        form1.action = "/Wed/SearchData?type=byId"
    }
    if (value==4){
        form1.action = "/Wed/SearchData?type=byName"
    }

    form1.submit();
}
function close_c() {
    // 只能关闭由js创建的页面，所以这个在welcome界面是没用的
    if (confirm("您确定要关闭本页吗？")){
        window.opener = null;
        window.open('', '_self');
        window.close();
    }
}