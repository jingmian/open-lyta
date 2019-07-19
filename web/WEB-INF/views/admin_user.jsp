<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/8
  Time: 2:55
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
<table id="messageManage" title="用户管理" style="width:100%;height:100%"
       toolbar="#toolbar" pagination="true" idField="id"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="id" width="50" editor="{type:'validatebox',options:{required:true}}">用户id</th>
        <th field="username" width="50" editor="{type:'validatebox',options:{required:true}}">用户名</th>
        <th field="password" width="50" editor="{type:'validatebox',options:{required:true}}">密码</th>
        <th field="realName" width="50" editor="{type:'validatebox',options:{required:true}}">姓名</th>
        <th field="phone" width="50" editor="{type:'validatebox',options:{required:true}}">手机号</th>
        <th field="address" width="50" editor="{type:'validatebox',options:{required:true}}">地址</th>
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
            url: '/admin/qryUserJson',
            saveUrl: '/admin/insertUserJson',
            updateUrl: '/admin/updateUserJson',
            destroyUrl: '/admin/deleteUserJson'
        });
    });
</script>