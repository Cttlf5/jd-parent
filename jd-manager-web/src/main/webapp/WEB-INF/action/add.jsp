<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>列表</title>
</head>
<body>
<div class="easyui-panel" title="新增商品"
     style="height:100%;width:100%;max-width:1920px;padding:30px 60px;">
    <form id="addItemForm" method="post">
        <table cellpadding="10">
            <tr>
                <td>
                    商品类目：
                </td>
                <td>
                    <a class="easyui-linkbutton" href="javascript:openItemCat();">选择类目</a>
                </td>
            </tr>
            <tr>
                <td>
                    商品名称：
                </td>
                <td>
                    <input class="easyui-textbox" style="width: 200px;" required
                           name="itemName">
                </td>
            </tr>
            <tr>
                <td>
                    商品卖点：
                </td>
                <td>
                    <input class="easyui-textbox" multiline="true" style="height:50px;width: 200px;"
                           name="itemName">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="javascript:submitForm()" class="easyui-linkbutton"
                       style="width:80px">提交</a>
                    <a href="javascript:clearForm()" class="easyui-linkbutton"
                       style="width:80px">重置</a>
                </td>
            </tr>
        </table>
    </form>

    <div id="itemCatWindow" class="easyui-window" title="选择类目"
         modal="true" closed="true"
         style="width:500px;height:200px;padding:10px;">
        <ul id="itemCatTree" class="easyui-tree" data-options="url:''">
            <li>
                <span>Folder</span>
                <ul>
                    <li>
                        <span>Sub Folder 1</span>
                        <ul>
                            <li>
                                <span><a href="#">File 11</a></span>
                            </li>
                            <li>
                                <span>File 12</span>
                            </li>
                            <li>
                                <span>File 13</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>File 2</span>
                    </li>
                    <li>
                        <span>File 3</span>
                    </li>
                </ul>
            </li>
            <li>
                <span>File21</span>
            </li>

        </ul>
    </div>
</div>
<script>
    function submitForm() {
        $('#addItemForm').form('submit');
    }

    function clearForm() {
        $('#addItemForm').form('clear');
    }
    function openItemCat(){
        $('#itemCatWindow').window('open');
    }

</script>
</body>
</html>