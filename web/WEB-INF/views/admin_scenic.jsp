<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/16
  Time: 12:30
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
<table id="messageManage" title="景点管理" style="width:100%;height:100%"
       toolbar="#toolbar" pagination="true" idField="id"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="scenicName" width="50" editor="{type:'validatebox',options:{required:true}}">景点名</th>
        <th field="scenicType" width="50" editor="{type:'validatebox',options:{required:true}}">景点类型</th>
        <th field="scenicImgPath" width="50" editor="{type:'validatebox',options:{required:true}}">景点主图名称</th>
        <th field="scenicContent" width="50" editor="{type:'validatebox',options:{required:true}}">景点介绍</th>
        <th field="price" width="50" editor="{type:'validatebox',options:{required:true}}">门票价格</th>
        <th field="openTime" width="50" editor="{type:'validatebox',options:{required:true}}">开放时间</th>
        <th field="scenicAddress" width="50" editor="{type:'validatebox',options:{required:true}}">景点地址</th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#messageManage').edatagrid('addRow')">新建</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除[不可用]</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#messageManage').edatagrid('saveRow')">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#messageManage').edatagrid('cancelRow')">取消</a>
</div>
<script type="text/javascript">
    $(function(){
        $('#messageManage').edatagrid({
            url: '/scenic/qryScenicJson',
            saveUrl: '/scenic/insertScenicJson',
            updateUrl: '/scenic/updateScenicJson',
            destroyUrl: '/scenic/deleteScenicJson'
        });
    });

</script>