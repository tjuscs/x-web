<#include "core/_layout.ftl"/>
<@layout>

<div class="am-cf admin-main">

<#--渲染左侧菜单-->
    <#include "/admin/core/_sidebar.ftl"/>

    <!-- content start -->
<div class="admin-content">
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">老师管理</strong> /
            <small>总览</small>
        </div>
    </div>

    <hr/>

    <div class="am-g">
    <#--table内容-->
        <div class="am-u-sm-8">
            <table id="dt" class="am-table am-table-striped am-table-bordered am-table-compact am-text-nowrap display">
                <thead>
                <tr>
                    <th class="table-check">编号</th>
                    <th class="table-id">账号</th>
                    <th class="table-title">标题</th>
                    <th class="table-type">职称</th>
                    <th class="table-type">操作</th>
                </tr>
                </thead>
            </table>
        </div>

        <div class="am-u-sm-4" id="data-form">
            <form class="am-form am-form-inline">
                <fieldset>
                    <legend>教师详情</legend>
                    <div class="am-form-group" style="display: none">
                        <input type="text" v-model="currentItem.id">
                    </div>

                    <div class="am-form-group am-form-icon am-form-feedback"
                         :class="{'am-form-error':!currentItem.account, 'am-form-success':!!currentItem.account}">
                        <label>账号</label>
                        <input class="am-form-field am-input-sm" type="text" v-model="currentItem.account"
                               placeholder="输入账号" :disabled="currentItem.id">
                        <span :class="{'am-icon-check':!!currentItem.account, 'am-icon-times':!currentItem.account}"></span>
                    </div>

                    <div class="am-form-group am-form-icon am-form-feedback">
                        <label>密码</label>
                        <input class="am-form-field am-input-sm" type="password" v-model="currentItem.password"
                               placeholder="输入密码">
                    </div>

                    <div class="am-form-group am-form-icon am-form-feedback"
                         :class="{'am-form-error':!currentItem.name, 'am-form-success':!!currentItem.name}">
                        <label>教师姓名</label>
                        <input class="am-form-field am-input-sm" type="text" v-model="currentItem.name"
                               placeholder="教师姓名">
                        <span :class="{'am-icon-check':!!currentItem.name, 'am-icon-times':!currentItem.name}"></span>
                    </div>

                    <div style="margin-top: 0.8rem">
                        <label for="">职称</label>
                        <select v-model="currentItem.jobTitle">
                            <option :value="0">无</option>
                            <option :value="1">讲师</option>
                            <option :value="2">副教授</option>
                            <option :value="3">教授</option>
                            <option :value="4">讲座教授</option>
                            <option :value="5">工程师</option>
                            <option :value="6">高级工程师</option>
                            <option :value="7">副研究员</option>
                            <option :value="8">研究员</option>
                            <option :value="9">特聘研究员</option>
                        </select>
                    </div>


                    <div style="margin-top: 0.8rem">
                        <label for="">实验室</label>
                        <select v-model="currentItem.laboratory">
                            <option :value="1">新能源材料研究所</option>
                            <option :value="2">TJU-NIMS</option>
                            <option :value="3">焊接与先进制造研究所</option>
                            <option :value="4">先进高分子研究所</option>
                            <option :value="5">金属材料研究所</option>
                            <option :value="6">先进陶瓷研究所</option>
                            <option :value="7">其他</option>

                        </select>
                    </div>

                    <p>
                        <button type="button" class="am-btn am-btn-primary" @click="saveItem">保存</button>
                        <button type="button" class="am-btn am-btn-danger" @click="deleteItem"
                                :disabled="!currentItem.id">删除
                        </button>
                    </p>
                </fieldset>
            </form>
        </div>
    </div>

    <link rel="stylesheet" type="text/css" href="/assets/dataTables/amazeui.datatables.min.css">
    <script type="text/javascript" charset="utf8" src="/assets/dataTables/amazeui.datatables.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="/assets/js/vue.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="/assets/js/vue-resource.min.js"></script>

    <script type="text/javascript">
        $(function () {
            var teacherData = {
                currentItem: {
                    account: "",
                    name: "",
                    password: "",
                    jobTitle: 1
                }
            };
            var table = $('#dt').DataTable({
                "ajax": {
                    "url": "/admin/teacher/list",
                    "dataSrc": function (json) {
                        json.data = json.list
                        json.recordsTotal = json.totalRow
                        json.recordsFiltered = json.totalRow
                        return json.data;
                    }
                },
                searchDelay: 350,
                processing: true,
                serverSide: true,
                "dom": '<"am-g am-datatable-hd" <"am-u-sm-6" <"am-btn-toolbar">> <"am-u-sm-6"f>>lrt<"am-g am-datatable-footer" <"am-u-sm-5"i> <"am-u-sm-7"p>>',
                "autoWidth": true,
                "columns": [
                    {"data": "id"},
                    {"data": "account"},
                    {"data": "name"},
                    {"data": "jobTitle"},
                    {"data": ""}
                ],
                "columnDefs": [{
                    "targets": -1,
                    "data": null,
                    "defaultContent": '<div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑 </button></div>'
                }, {
                    targets: 3,
                    render: function (data) {
                        switch (data) {
                            case 0:
                                return '讲师';
                            case 1:
                                return '讲师';
                            case 2:
                                return '副教授';
                            case 3:
                                return '教授';
                            case 4:
                                return '讲座教授';
                            case 5:
                                return '工程师';
                            case 6:
                                return '高级工程师';
                            case 7:
                                return '副研究员';
                            case 8:
                                return '研究员';
                            case 9:
                                return '特聘研究员';
                        }
                        return '异常数据';
                    }
                }]
            });
            $('#dt tbody').on('click', 'tr', function () {
                teacherData.currentItem = table.row($(this)).data();
                if ($(this).hasClass('selected')) {
                    teacherData.currentItem = {};
                    $(this).removeClass('selected');
                }
                else {
                    table.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                }
            });

            $('#dt tbody').on('click', 'button', function (event) {
                event.stopPropagation();
                event.preventDefault();
                var data = table.row($(this).parents('tr')).data();
                teacherData.currentItem = data;
                console.log(data)
            });

            $("div.am-btn-toolbar").html('<div class="am-btn-group am-btn-group-xs"><button id="btn-add" type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span>新增 </button></div>');

            $("#btn-add").on('click', function () {
                teacherData.currentItem = {};
            })

            new Vue({
                http: {
                    root: '/admin/teacher',
                },
                el: "#data-form",
                data: teacherData,
                methods: {
                    "saveItem": function () {
                        this.$http.post('save', this.currentItem).then(function (json) {
                            table.draw();
                            layer.alert('操作成功');
                        }, function (json) {
                            layer.alert('操作失败，请重试');
                        });

                    },
                    "deleteItem": function () {
                        this.$http.get('delete', {
                            params: {id: this.currentItem.id}
                        }).then(function (json) {
                            this.currentItem = null;
                            table.draw();
                            layer.alert('操作成功');
                        }, function (json) {
                            layer.alert('操作失败，请重试');
                        });

                    },
                    "clearItem": function () {
                        this.currentItem = null;
                    }
                },
                computed: {
                    show: function () {
                        return !this.currentItem ? 'none' : 'block';
                    }
                }
            });
        });
    </script>
</@layout>
