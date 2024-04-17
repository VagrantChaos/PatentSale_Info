function getData() {
    console.log("getdata")
}
function is_submit(value) {
    console.log(value)
}
function close_c() {
    // 只能关闭由js创建的页面，所以这个在welcome界面是没用的
    if (confirm("您确定要关闭本页吗？")){
        window.opener = null;
        window.open('', '_self');
        window.close();
    }
}