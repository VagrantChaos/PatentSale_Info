document.addEventListener('DOMContentLoaded', function() {
    var showDetailLinks = document.querySelectorAll('.showDetail');

    showDetailLinks.forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault(); // 阻止默认行为，即不跳转页面

            var detail = this.parentElement.querySelector('.detail');

            // 切换详细信息的显示状态
            if (detail.style.display === 'none') {
                detail.style.display = 'block';
            } else {
                detail.style.display = 'none';
            }
        });
    });
});
