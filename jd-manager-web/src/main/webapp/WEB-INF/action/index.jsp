<%@ page language="java" pageEncoding="utf-8"  %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>列表</title>
    <%----%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/easyui/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/easyui/themes/icon.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body id="cc" class="easyui-layout">
    <%--<div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>--%>
    <%--<div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>--%>
    <%--<div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>--%>
    <div data-options="region:'west',title:'菜单',split:false,href:''" style="width:180px;">
        <div  class="easyui-accordion" style="">
            <div title="商品管理" data-options="iconCls:'icon-cut',selected:true" style="overflow:auto;padding:10px;">
                <ul id="main_tree"  class="easyui-tree">
                    <li>
                        <span><a href="javascript:openTab('新增商品','${pageContext.request.contextPath}/add')">新增商品</a></span>
                    </li>
                    <li>
                        <span><a href="javascript:openTab('查询商品','${pageContext.request.contextPath}/list')">查询商品</a></span>
                    </li>
                </ul>
            </div>
            <div title="内容管理" data-options="iconCls:'icon-reload',selected:false" style="padding:10px;">

            </div>
            <div title="其他">

            </div>
        </div>
    </div>
    <div id="main_tab" class="easyui-tabs" data-options="region:'center',collapse:false" style="background:#eee;">
        <div title="首页" style="padding:20px;display:none;">
            欢迎页面
        </div>
    </div>



</body>
<script>
//打开选项卡
function openTab(title_name,url){
    var exists = $("#main_tab").tabs('exists',title_name);
    if(exists){
        $("#main_tab").tabs('select',title_name);
        var $datagrid = $("#item_datagrid");
        if($datagrid!=null){
            $datagrid.datagrid('reload');
        }
    }else{
        $("#main_tab").tabs(
            'add',{
                title:title_name
                ,href:url
                ,closable:true
            }
        );
    }
}

</script>
</html>
