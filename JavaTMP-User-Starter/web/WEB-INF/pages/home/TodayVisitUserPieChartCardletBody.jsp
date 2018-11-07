<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row d-flex align-items-center">
    <div class="col-6 text-center">
        <span class="d-block display-4 counter" id="todayVisitUserPieChartCard_totalCount">0</span>
    </div>
    <div class="col-6 text-left">
        <div id="todayVisitUserPieChart" style="min-height: 100px"></div>
    </div>
</div>
<script type="text/javascript">
    // get cardletId from request parameter:
    jQuery(function ($) {
        var currentCardletId = '<c:out value="${param.cardletId}"/>';
        var cardletElement = $("#" + currentCardletId);
        cardletElement.on(javatmp.settings.javaTmpAjaxContainerReady, function (event) {
            var todayVisitUserPieChart = echarts.init(document.getElementById('todayVisitUserPieChart'));
            var todayVisitUserPieChartOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)",
                    textStyle: {
                        fontFamily: $("body").css("font-family"),
                        fontSize: $("body").css("font-size"),
                        align: javatmp.settings.floatDefault
                    }
                },
                hover: true,
                color: ['#007bff', '#dae0e5'],
                series: [
                    {
                        clockwise: !javatmp.settings.isRTL,
                        name: '${labels['page.home.VisitorsToday']}',
                        type: 'pie',
                        radius: '85%',
                        avoidLabelOverlap: false,
                        hoverOffset: 4,
                        label: {
                            normal: {show: false},
                            textStyle: {
                                fontFamily: $("body").css("font-family"),
                                fontSize: $("body").css("font-size"),
                                align: javatmp.settings.floatDefault
                            }
                        },
                        data: [
                            {value: 0, name: '${labels['page.home.VisitorsToday.VisitToday']}'},
                            {value: 0, name: '${labels['page.home.VisitorsToday.NotVisitingToday']}'}
                        ]
                    }
                ]
            };
            todayVisitUserPieChart.setOption(todayVisitUserPieChartOption);

            cardletElement.block({message: javatmp.settings.labels["global.loadingText"],
                overlayCSS: {
                    backgroundColor: '#000',
                    opacity: 0.7
                }});

            $.ajax({
                "type": "POST",
                cache: false,
                url: javatmp.settings.contextPath + "/stats/GetVisitingUsersCountController",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: null,
                success: function (remoteContent) {
                    var visitingToday = remoteContent.data[0];
                    var notVisitingTodayOrLoginYet = remoteContent.data[1];

                    todayVisitUserPieChartOption.series[0].data[0].value = visitingToday;
                    todayVisitUserPieChartOption.series[0].data[1].value = notVisitingTodayOrLoginYet;
                    $("#todayVisitUserPieChartCard_totalCount").html(visitingToday).counterUp({
                        delay: 10,
                        time: 1000
                    });
                    todayVisitUserPieChart.setOption(todayVisitUserPieChartOption);

                    $(cardletElement).unblock();
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
        cardletElement.on(javatmp.settings.javaTmpContainerRemoveEventName, function (event) {
            return true;
        });
    });
</script>