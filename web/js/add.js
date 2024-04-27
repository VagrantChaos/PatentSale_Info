window.onload = function() {
    document.getElementById("ID").focus();
};
// function validateForm() {
//     var id = document.forms["dataForm"]["id"];
//     var number = document.forms["dataForm"]["number"];
//     var name = document.forms["dataForm"]["name"];
//
//     var idRegex = /^[a-zA-Z0-9_-]{3,16}$/;
//     var numberRegex = /^[0-9]{1,10}$/;
//     var nameRegex = /^[a-zA-Z\s]+$/;
//
//     if (!idRegex.test(id.value)) {
//         alert("Please enter a valid ID (3-16 characters, letters, numbers, - or _)");
//         return false;
//     }
//
//     if (!numberRegex.test(number.value)) {
//         alert("Please enter a valid Number (1-10 digits)");
//         return false;
//     }
//
//     if (!nameRegex.test(name.value)) {
//         alert("Please enter a valid Name (letters and spaces only)");
//         return false;
//     }
// }

function calculateDollar() {
    var rmb = parseFloat(document.getElementById("rmb").value);
    var dollar = rmb / 7.25;
    document.getElementById("dollar").value = dollar.toFixed(2);
}

// function replaceBlank() {
// // 获取表单
//     var form = document.getElementById("dataForm");
//
// // 遍历表单中的所有元素
//     for (var i = 0; i < form.elements.length; i++) {
//         var element = form.elements[i];
//
//         // 根据元素的名称属性判断是否需要处理
//         switch(element.name) {
//             case "id":
//             case "number":
//             case "name":
//             case "cDate":
//             case "belOrganization":
//             case "contactPerson":
//             case "phone":
//             case "organization":
//             case "nation":
//             case "delegate":
//             case "contactMan":
//             case "inSpectOrg":
//             case "inspector":
//                 // 使用正则表达式替换所有空格
//                 var trimmedValue = element.value.replace(/\s/g, '');
//                 // 将去除空格后的值重新赋给输入框
//                 element.value = trimmedValue;
//                 break;
//             // 如果是数字类型的属性，则不需要去除空格
//             case "rmb":
//             case "dollar":
//             case "years":
//                 break;
//             // 如果是日期类型的属性，需要根据实际情况处理，这里假设不需要去除空格
//             case "saleDate":
//             case "dateInspect":
//                 break;
//             // 如果是布尔类型的属性，这里假设不需要处理
//             case "conclusion":
//                 break;
//             // 默认情况下，不做处理
//             default:
//                 break;
//         }
//     }
//
// }

function confirmSubmit() {
    // 弹出确认提示框
    const confirmed = confirm("确定要更改吗？");

    // 如果用户点击了确认按钮，则返回 true 继续提交表单；否则返回 false 阻止表单提交
    return confirmed;
}