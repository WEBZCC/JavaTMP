<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="dynamic-ajax-content">
    <div class="page-header">
        <h1>Dynamic ECharts Charts</h1>
    </div>
    <div class="form-row">
        <div class="col-lg-6">
            <div class="card" id="BarChart">
                <div class="card-header">
                    Bar Chart
                    <div class="options float-right">
                        <a href="javascript:;" class="settings"><i class="fa fa-cog"></i></a>
                        <a href="javascript:;" class="collapse"><i class="fa fa-chevron-up"></i></a>
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                        <a href="javascript:;" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="bar-1-canvas" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="card" id="LineChart">
                <div class="card-header">
                    ECharts Line Chart
                    <div class="options float-right">
                        <a href="javascript:;" class="settings"><i class="fa fa-cog"></i></a>
                        <a href="javascript:;" class="collapse"><i class="fa fa-chevron-up"></i></a>
                        <a load-on-starup="true"  href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                        <a href="javascript:;" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="line-1-canvas" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-lg-6">
            <div class="card" id="DoughnutChart">
                <div class="card-header">
                    ECharts Doughnut Chart
                    <div class="options float-right">
                        <a href="javascript:;" class="settings"><i class="fa fa-cog"></i></a>
                        <a href="javascript:;" class="collapse"><i class="fa fa-chevron-up"></i></a>
                        <a load-on-starup="true"  href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                        <a href="javascript:;" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="doughnut-1-canvas" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="card" id="PieChart">
                <div class="card-header">
                    Pie Chart
                    <div class="options float-right">
                        <a href="javascript:;" class="settings"><i class="fa fa-cog"></i></a>
                        <a href="javascript:;" class="collapse"><i class="fa fa-chevron-up"></i></a>
                        <a load-on-starup="true"  href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                        <a href="javascript:;" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="pie-1-canvas" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--<link href="components/" rel="stylesheet">-->
    <style type="text/css">

    </style>
    <script type="text/javascript">
        jQuery(function ($) {
            // any code put here will be run after content attach to ajax output container and before
            // controll return to main javascript file.

            var barChartOption = {
                title: {
                    text: "Users Birthday Frequencies",
                    x: 'center',
                    y: 0
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: ['Birthday'],
                    x: 'center',
                    y: '30px'
                },
                calculable: true,
                xAxis: [
                    {
                        data: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                color: ['#007bff', '#dc3545'],
                series: [
                    {
                        name: 'Birthday',
                        type: 'bar',
                        data: [24, 44.6, 81, 11, 32, 41, 27, 5.9, 4.2, 71.8, 51.6, 22.8]
                    }
                ]
            };
            var lineChartOption = {
                title: {
                    text: "Users Birthday Frequencies",
                    x: 'center',
                    y: 0
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: ['Birthday'],
                    x: 'center',
                    y: '30px'
                },
                calculable: true,
                xAxis: [
                    {
                        data: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                color: ['#007bff'],
                series: [
                    {
                        name: 'Birthday',
                        type: 'line',
                        data: [24, 44.6, 81, 11, 32, 41, 27, 5.9, 4.2, 71.8, 51.6, 22.8]
                    }
                ]
            };
            var doughnutChartOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: []
                },
                hover: true,
                color: ['#007bff',
                    '#ffc107',
                    '#dc3545',
                    '#28a745',
                    '#6c757d', '#e38533', '#7d5642'],
                series: [
                    {
                        name: 'Dataset 1',
                        type: 'pie',
                        center: ['50%', '60%'],
                        radius: ['50%', '70%'],
                        avoidLabelOverlap: false,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '30',
                                    fontWeight: 'normal'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: true
                            }
                        },
                        data: [
                            {value: 18, name: 'value 1'},
                            {value: 32, name: 'value 2'},
                            {value: 17, name: 'value 3'},
                            {value: 23, name: 'value 4'},
                            {value: 10, name: 'value 5'}
                        ]
                    }
                ]
            };
            var pieChartOption = {
                title: {
                    text: 'Users Offices Locations',
                    x: 'center',
                    y: 0
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} - {b} : {c} ({d}%)"


                },
                legend: {
                    orient: 'horizontal',
                    x: 'center',
                    y: 30,
                    data: []
                },
                hover: true,
                color: ['#007bff',
                    '#ffc107',
                    '#dc3545',
                    '#28a745',
                    '#6c757d', '#e38533', '#7d5642'],
                series: [
                    {
                        type: 'pie',
                        center: ['50%', '60%'],
                        radius: '60%',
                        data: []
                    }
                ]
            };
            var barChart = echarts.init(document.getElementById('bar-1-canvas'));
            var lineChart = echarts.init(document.getElementById('line-1-canvas'));
            var doughnutChart = echarts.init(document.getElementById('doughnut-1-canvas'));
            var pieChart = echarts.init(document.getElementById('pie-1-canvas'));

            // bar chart:
            $(javatmp.settings.defaultOutputSelector).on("click", "#BarChart a.reload", function (e) {
                e.preventDefault();

                var cardBody = $(this).closest(".card").children(".card-body");
                var href = javatmp.settings.contextPath + "/user/ListAllUsersController";

                $(cardBody).block({message: null,
                    overlayCSS: {
                        backgroundColor: '#000',
                        opacity: 0.3
                    }});

                $.ajax({
                    type: "GET",
                    cache: false,
                    url: href,
                    data: {
                        _ajaxGlobalBlockUI: false,
                        "start": 0,
                        "length": 100,
                        "draw": 1,
                        "order[0][column]": 0
                    },
                    success: function (remoteContent) {
                        $(cardBody).unblock();
                        toastr.success('Bar Chart Data successfully fetched from Server', 'SUCCESS', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });

                        var months = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
                        for (var i = 0; i < remoteContent.data.data.length; i++) {
                            var user = remoteContent.data.data[i];
                            var birthdayDate = moment(user.birthOfDate, "YYYY-MM-DDTHH:mm:ss.SSSZ");
                            var month = birthdayDate.month();
                            months[month]++;
                        }
                        barChartOption = $.extend(true, barChartOption, {
                            series: [
                                {
                                    data: months
                                }
                            ]
                        });
                        barChart.setOption(barChartOption);
                        barChart.on('click', function (params) {
                            console.log(params);
                        });

                        barChart.on('legendselectchanged', function (params) {
                            console.log(params);
                        });
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        $(cardBody).unblock();
                        var msg = 'Error on reloading the card. Please check your remote server url';
                        toastr.error(msg, 'ERROR', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        // clean the bar graph
                    }
                });
            });

            $(javatmp.settings.defaultOutputSelector).on("click", "#LineChart a.reload", function (e) {
                e.preventDefault();
                var cardBody = $(this).closest(".card").children(".card-body");
                var href = javatmp.settings.contextPath + "/user/ListAllUsersController";

                $(cardBody).block({message: null,
                    overlayCSS: {
                        backgroundColor: '#000',
                        opacity: 0.3
                    }});
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: href,
                    data: {
                        _ajaxGlobalBlockUI: false,
                        "start": 0,
                        "length": 100,
                        "draw": 1,
                        "order[0][column]": 0
                    },
                    success: function (remoteContent) {
                        $(cardBody).unblock();
                        toastr.success('Line Chart Data successfully fetched from Server', 'SUCCESS', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });

                        var months = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
                        for (var i = 0; i < remoteContent.data.data.length; i++) {
                            var user = remoteContent.data.data[i];
                            var birthdayDate = moment(user.birthOfDate, "YYYY-MM-DDTHH:mm:ss.SSSZ");
                            var month = birthdayDate.month();
                            months[month]++;
                        }
                        lineChartOption = $.extend(true, lineChartOption, {
                            series: [{
                                    data: months
                                }]
                        });
                        lineChart.setOption(lineChartOption);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        $(cardBody).unblock();
                        var msg = 'Error on reloading the card. Please check your remote server url';
                        toastr.error(msg, 'ERROR', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        // clean the bar graph
                    }
                });
            });

            $(javatmp.settings.defaultOutputSelector).on("click", "#DoughnutChart a.reload", function (e) {
                e.preventDefault();
                var cardBody = $(this).closest(".card").children(".card-body");
                var href = javatmp.settings.contextPath + "/user/ListAllUsersController";

                $(cardBody).block({message: null,
                    overlayCSS: {
                        backgroundColor: '#000',
                        opacity: 0.3
                    }});
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: href,
                    data: {
                        _ajaxGlobalBlockUI: false,
                        "start": 0,
                        "length": 100,
                        "draw": 1,
                        "order[0][column]": 0
                    },
                    success: function (remoteContent) {
                        $(cardBody).unblock();
                        toastr.success('Doughnut Chart Data successfully fetched from Server', 'SUCCESS', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        var offices = {};
                        for (var i = 0; i < remoteContent.data.data.length; i++) {
                            var user = remoteContent.data.data[i];
                            if (user.office in offices) {
                                offices[user.office] = offices[user.office] + 1;
                            } else {
                                offices[user.office] = 0;
                            }
                        }
//                        var officesArray = Object.keys(offices);
//                        var officesCount = Object.values(offices);
//                        var seriesData = [];
                        var officesArray = [];
                        var officesCount = [];
                        var seriesData = [];
                        $.map(offices, function (value, key) {
                            officesArray.push(key);
                            officesCount.push(value);
                            seriesData.push({
                                value: value, name: key
                            });
                        });
                        doughnutChartOption = $.extend(true, doughnutChartOption, {
                            legend: {
                                data: officesArray
                            },
                            series: [
                                {
                                    name: 'Users Location',
                                    data: seriesData
                                }
                            ]
                        });
                        doughnutChart.setOption(doughnutChartOption);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        $(cardBody).unblock();
                        var msg = 'Error on reloading the card. Please check your remote server url';
                        toastr.error(msg, 'ERROR', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        // clean the bar graph
                    }
                });
            });

            $(javatmp.settings.defaultOutputSelector).on("click", "#PieChart a.reload", function (e) {
                e.preventDefault();
                var cardBody = $(this).closest(".card").children(".card-body");
                var href = javatmp.settings.contextPath + "/user/ListAllUsersController";

                $(cardBody).block({message: null,
                    overlayCSS: {
                        backgroundColor: '#000',
                        opacity: 0.3
                    }});
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: href,
                    data: {
                        _ajaxGlobalBlockUI: false,
                        "start": 0,
                        "length": 100,
                        "draw": 1,
                        "order[0][column]": 0
                    },
                    success: function (remoteContent) {
                        $(cardBody).unblock();
                        toastr.success('Pic Chart Data successfully fetched from Server', 'SUCCESS', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        var offices = {};
                        for (var i = 0; i < remoteContent.data.data.length; i++) {
                            var user = remoteContent.data.data[i];
                            if (user.office in offices) {
                                offices[user.office] = offices[user.office] + 1;
                            } else {
                                offices[user.office] = 0;
                            }
                        }
//                        var officesArray = Object.keys(offices);
//                        var officesCount = Object.values(offices);
//                        var seriesData = [];
                        var officesArray = [];
                        var officesCount = [];
                        var seriesData = [];
                        $.map(offices, function (value, key) {
                            officesArray.push(key);
                            officesCount.push(value);
                            seriesData.push({
                                value: value, name: key
                            });
                        });
                        pieChartOption = $.extend(true, pieChartOption, {
                            legend: {
                                data: officesArray
                            },
                            series: [
                                {
                                    name: 'Users Location',
                                    data: seriesData
                                }
                            ]
                        });
                        pieChart.setOption(pieChartOption);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        $(cardBody).unblock();
                        var msg = 'Error on reloading the card. Please check your remote server url';
                        toastr.error(msg, 'ERROR', {
                            timeOut: 2500,
                            progressBar: true,
                            rtl: javatmp.settings.isRTL,
                            positionClass: javatmp.settings.isRTL === true ? "toast-top-left" : "toast-top-right"
                        });
                        // clean the bar graph
                    }
                });
            });

            $(javatmp.settings.defaultOutputSelector).find("[load-on-starup=true]").each(function () {
                $(this).trigger("click");
            });


            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpAjaxContainerReady, function (event) {
                // fire AFTER all transition done and your ajax content is shown to user.
            });

            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerResizeEventName, function (event) {
                // fire when user resize browser window or sidebar hide / show
                javatmp.waitForFinalEvent(function () {
                    barChart.resize();
                    lineChart.resize();
                    doughnutChart.resize();
                    pieChart.resize();
                }, 200, "At-echarts-page-content-resize");
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenCompress, function (event, card) {
                // when card compress by pressing the top right tool button
                var cardId = card.attr("id");
                if (cardId === "BarChart") {
                    $('#bar-1-canvas').css({"minHeight": 300});
                    barChart.resize();
                } else if (cardId === "LineChart") {
                    $('#line-1-canvas').css({"minHeight": 300});
                    lineChart.resize();
                } else if (cardId === "DoughnutChart") {
                    $('#doughnut-1-canvas').css({"minHeight": 300});
                    doughnutChart.resize();
                } else if (cardId === "PieChart") {
                    $('#pie-1-canvas').css({"minHeight": 300});
                    pieChart.resize();
                }
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenExpand, function (event, card) {
                // when card compress by pressing the top right tool button
                var cardId = card.attr("id");
                if (cardId === "BarChart") {
                    $('#bar-1-canvas').css({"minHeight": 500});
                    barChart.resize();
                } else if (cardId === "LineChart") {
                    $('#line-1-canvas').css({"minHeight": 500});
                    lineChart.resize();
                } else if (cardId === "DoughnutChart") {
                    $('#doughnut-1-canvas').css({"minHeight": 500});
                    doughnutChart.resize();
                } else if (cardId === "PieChart") {
                    $('#pie-1-canvas').css({"minHeight": 500});
                    pieChart.resize();
                }
            });

            /**
             * When another sidebar menu item pressed and before container replaced with new ajax content.
             * You can cancel, destroy, or remove any thing here before replace main output ajax container.
             * returning false will cancel the new request and do nothing.
             **/
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerRemoveEventName, function (event) {
                $(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenCompress);
                $(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenExpand);
                $(javatmp.settings.defaultOutputSelector).off();
                return true;
            });
        });
    </script>
</div>