define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'cases/lists/index',
                    add_url: 'cases/lists/add',
                    edit_url: 'cases/lists/edit',
                    del_url: 'cases/lists/del',
                    multi_url: '',
                    table: 'case_lists',
                }
            });

            var table = $("#table");
            var tableOptions = {
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                escape: false,
                pk: 'id',
                sortName: 'a.id',
                pagination: true,
                commonSearch: false,
                search: false,
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('id')},
                        {field: 'name', title: __('类型名称'), align: 'left'},
                        {field: 'img', title: __('图片'), align: 'center',formatter: Controller.api.formatter.thumb, operate: false},
                        {field: 'title', title: __('封面标题'), align: 'center'},
                        {field: 'create_time', title: __('发布时间'), align: 'center',  formatter: Table.api.formatter.datetime,
                            operate: 'RANGE',addclass: 'datetimerange',sortable: true},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            };
            // 初始化表格
            table.bootstrapTable(tableOptions);

            // 为表格绑定事件
            Table.api.bindevent(table);

            //绑定TAB事件
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                // var options = table.bootstrapTable(tableOptions);
                var typeStr = $(this).attr("href").replace('#', '');
                var options = table.bootstrapTable('getOptions');
                options.pageNumber = 1;
                options.queryParams = function (params) {
                    // params.filter = JSON.stringify({type: typeStr});
                    params.type = typeStr;

                    return params;
                };
                table.bootstrapTable('refresh', {});
                return false;

            });

            //必须默认触发shown.bs.tab事件
            // $('ul.nav-tabs li.active a[data-toggle="tab"]').trigger("shown.bs.tab");

        },
        add: function () {
            Controller.api.bindevent();
            setTimeout(function () {
                $("#c-type").trigger("change");
            }, 100);
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                $(document).on("change", "#c-type", function () {
                    $("#c-pid option[data-type='all']").prop("selected", true);
                    $("#c-pid option").removeClass("hide");
                    $("#c-pid option[data-type!='" + $(this).val() + "'][data-type!='all']").addClass("hide");
                    $("#c-pid").data("selectpicker") && $("#c-pid").selectpicker("refresh");
                });
                Form.api.bindevent($("form[role=form]"));
            },
            formatter: {
                thumb: function (value, row, index) {
                    if (row.mimetype.indexOf("image") > -1) {
                        var style = row.storage == 'upyun' ? '!/fwfh/120x90' : '';
                        return '<a href="' + row.img + '" target="_blank"><img src="' + row.img + style + '" alt="" style="max-height:90px;max-width:120px"></a>';
                    } else {
                        return '<a href="' + row.img + '" target="_blank"><img src="https://tool.fastadmin.net/icon/' + row.imagetype + '.png" alt=""></a>';
                    }
                },
                url: function (value, row, index) {
                    return '<a href="' + row.img + '" target="_blank" class="label bg-green">' + value + '</a>';
                },
            }
        }
    };
    return Controller;
});