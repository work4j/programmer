var $ = layui.jquery;
var form = layui.form();
function tg_basePage(option) {
    layui.use([ 'laypage', 'layer' ], function() {
        var baseUrl = option.listUrl;
        for ( var item in option.param) {
            if ($("#" + item).val() != '') {
                baseUrl += "&" + item + "=" + $("#" + item).val()
            }
        }
        var laypage = layui.laypage, layer = layui.layer;
        laypage({
            cont : option.pageDiv == null ? 'pageDiv' : option.pageDiv,
            pages : option.totalPages == null ? 10 : option.totalPages,
            groups : option.group == null ? 5 : option.group,
            curr : option.page == null ? 1 : option.page,
            skip : option.skip == null ? true : option.skip,
            jump : function(obj, first) {
                if (option.page > 0 && obj.curr != option.page) {
                    window.location.href = baseUrl + "&page=" + obj.curr;
                }
            }
        });
    });
}
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return decodeURIComponent(r[2]);
    return null;
}
