<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/7
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/demo.css">
    <script type="text/javascript" src="../../easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../../easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.edatagrid.js"></script>
</head>
<table id="messageManage" title="游记管理" style="width:100%;height:100%"
       toolbar="#toolbar" pagination="true" idField="id"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="user_id" width="50" editor="{type:'validatebox',options:{required:true}}">用户id号</th>
        <th field="username" width="50" editor="{type:'validatebox',options:{required:true}}">用户名</th>
        <th field="title" width="50" editor="{type:'validatebox',options:{required:true}}">标题</th>
        <th field="content" width="50" editor="{type:'validatebox',options:{required:true}}">内容</th>
        <!--<th field="creat_time" width="50" editor="{type:'validatebox',options:{required:true}}">创建时间</th>-->
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#messageManage').edatagrid('addRow')">新建</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#messageManage').edatagrid('destroyRow')">删除</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#messageManage').edatagrid('saveRow')">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#messageManage').edatagrid('cancelRow')">取消</a>
</div>
<script type="text/javascript">
    $(function(){
        $('#messageManage').edatagrid({
            url: '/admin/qryMessageJson',
            saveUrl: '/admin/insertMessageJson',
            updateUrl: '/admin/updateMessageJson',
            destroyUrl: '/admin/deleteMessageJson'
        });
    });
</script>