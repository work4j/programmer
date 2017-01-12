<!--/*******底部引入js*******/-->
<!--/* Mainly scripts */-->
<script src="/programer/resources/others/layui/lay/dest/layui.all.js" charset="utf-8"></script>
<script>
    layui.config({
        base : '//res.layui.com/lay/modules/layui/',
        version : '1484130829910'
    }).use('global');

    window.global = {
        preview : function() {
            var preview = document.getElementById('LAY_preview');
            return preview ? preview.innerHTML : '';
        }()
    };
</script>