<%@ page language="java" pageEncoding="utf-8"  %>

列表页
<table id="item_datagrid"
       class="easyui-datagrid"
       url='${pageContext.request.contextPath}/item_list'
       singleSelect="true" pagination="true" method='get'
       data-options="sortName:'id',pageNumber:1,pageSize:10,rownumbers:true,">
    <thead>
    <tr>
        <th data-options="field:'id',width:80">Item ID</th>
        <th data-options="field:'itemName',width:60,align:'center'">名称</th>
    </tr>
    </thead>
</table>

<script>
$(function(){

    //初始化datagrid，并获取分页栏
    var datagrid = $('#item_datagrid').datagrid();
    var pager = datagrid.datagrid('getPager');	// get the pager of datagrid
    //增加分页栏按钮
    pager.pagination({
        buttons:[{
            iconCls:'icon-search',
            text:'查询',
            handler:function(){
                alert('search');
            }
        },{
            iconCls:'icon-add',
            handler:function(){
                alert('add');
            }
        },{
            iconCls:'icon-edit',
            handler:function(){
                alert('edit');
            }
        }],
        onSelectPage:function(page_num){
            page_num-=1;
            datagrid.datagrid({
                data:"${pageContext.request.contextPath}/item_list/"+page_num+"/10"
            });
        }
    });


});

</script>