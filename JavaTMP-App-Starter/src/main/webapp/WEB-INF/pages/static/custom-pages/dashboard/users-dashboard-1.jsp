<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="dynamic-ajax-content grid-gutter-padding">
    <h4 class="my-3">Users Analytics Dashboard 1</h4>
    <hr/>
    <div class="form-row">
        <div class="col-xl-3 col-lg-6 col-md-6">
            <div class="shadow card mb-3" id="userStatusPieChartCard">
                <div class="card-header">
                    Registered Users
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                    </div>
                </div>
                <div class="card-body p-1 bg-white">
                    <div class="row d-flex align-items-center">
                        <div class="col-6 text-center">
                            <span class="d-block display-4 counter">26</span>
                        </div>
                        <div class="col-6 text-left">
                            <div id="userStatusPieChart" style="width: 100%;min-height: 100px"></div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#">
                        View Details
                        <span class="float-right">
                            <i class="fa fa-arrow-circle-next"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-md-6">
            <div class="shadow card mb-3 bg-white" id="todayVisitUserPieChartCard">
                <div class="card-header">
                    Visitors Today
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                    </div>
                </div>
                <div class="card-body p-1 bg-white">
                    <div class="row d-flex align-items-center">
                        <div class="col-6 text-center">
                            <span class="d-block display-4 counter">8</span>
                        </div>
                        <div class="col-6 text-left">
                            <div id="todayVisitUserPieChart" style="width: 100%;min-height: 100px"></div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#">
                        View Details
                        <span class="float-right">
                            <i class="fa fa-arrow-circle-next"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-md-6">
            <div class="shadow card mb-3" id="pageViewActivitesPerHourChartCard">
                <div class="card-header">
                    Page Views Per Hour
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                    </div>
                </div>
                <div class="card-body p-1 bg-white">
                    <div class="row d-flex align-items-center">
                        <div class="col-6 text-center">
                            <span class="d-block display-4 counter">527</span>
                            <span class="d-block muted small">all Page Views</span>
                        </div>
                        <div class="col-6 text-left">
                            <div id="pageViewActivitesPerHourChart" style="width: 100%;min-height: 100px"></div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#">
                        View Details
                        <span class="float-right">
                            <i class="fa fa-arrow-circle-next"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-md-6">
            <div class="shadow card mb-3" id="loadtimePerHourChartCard">
                <div class="card-header">
                    Load Time Per Hour
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                    </div>
                </div>
                <div class="card-body p-1 bg-white">
                    <div class="row d-flex align-items-center">
                        <div class="col-6 text-center">
                            <span class="d-block display-4 counter">211</span>
                            <span class="d-block muted small">Avg Load Time</span>
                        </div>
                        <div class="col-6 text-left">
                            <div id="loadtimePerHourChart" style="width: 100%;min-height: 100px"></div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#">
                        View Details
                        <span class="float-right">
                            <i class="fa fa-arrow-circle-next"></i>
                        </span>
                    </a>
                </div>
                </a>
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-lg-6">
            <div class="shadow card" id="UsersLocationsInTheWorldCard">
                <div class="card-header">
                    Users Locations
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                    </div>
                </div>
                <div class="card-body bg-white p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="UsersLocationsInTheWorld" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="shadow card" id="UsersBirthdayPerMonthsCard">
                <div class="card-header">
                    Users Birthday Per Months
                    <div class="options float-right">
                        <a load-on-starup="true" href="javascript:;" class="reload"><i class="fa fa-sync"></i></a>
                        <a href="javascript:;" class="fullscreen"><i class=" fa fa-expand"></i></a>
                    </div>
                </div>
                <div class="card-body bg-white p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="UsersBirthdayPerMonths" style="width: 100%;min-height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
        .javatmp-btn {
            height: 100px;
            white-space: normal;
            max-width: 215px;
            margin: auto;
        }
        .javatmp-btn:hover {
            cursor: pointer;
        }
        .javatmp-btn > i {
            display: block;
        }
    </style>
    <script type="text/javascript">
        jQuery(function ($) {
            // any code put here will be run after content attach to ajax output container and before
            // controll return to main javascript file.

            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
            var userStatusPieChart = echarts.init(document.getElementById('userStatusPieChart'));
            var todayVisitUserPieChart = echarts.init(document.getElementById('todayVisitUserPieChart'));
            var pageViewActivitesPerHourChart = echarts.init(document.getElementById('pageViewActivitesPerHourChart'));
            var loadtimePerHourChart = echarts.init(document.getElementById('loadtimePerHourChart'));
            var UsersLocationsInTheWorld = echarts.init(document.getElementById('UsersLocationsInTheWorld'));
            var UsersBirthdayPerMonths = echarts.init(document.getElementById('UsersBirthdayPerMonths'));
            var userStatusPieChartOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)",
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                hover: true,
                color: ['#28a745', '#ffc107'],
                series: [
                    {
                        clockwise: !javatmp.settings.isRTL,
                        name: 'Registered User Statuses',
                        type: 'pie',
                        radius: '85%',
                        avoidLabelOverlap: false,
                        hoverOffset: 4,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            textStyle: {
                                fontFamily: "Open Sans",
                                align: javatmp.settings.floatDefault
                            }
                        },
                        data: [
                            {value: 18, name: 'Active'},
                            {value: 32, name: 'Deactive'}
                        ]
                    }
                ]
            };
            userStatusPieChart.setOption(userStatusPieChartOption);
            var todayVisitUserPieChartOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)",
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                hover: true,
                color: ['#007bff', '#dae0e5'],
                series: [
                    {
                        clockwise: !javatmp.settings.isRTL,
                        name: 'Visiting User Today',
                        type: 'pie',
                        radius: '85%',
                        avoidLabelOverlap: false,
                        hoverOffset: 4,
                        label: {
                            normal: {show: false},
                            textStyle: {
                                fontFamily: "Open Sans",
                                align: javatmp.settings.floatDefault
                            }
                        },
                        data: [
                            {value: 8, name: 'Visit'},
                            {value: 18, name: 'Not login yet'}
                        ]
                    }
                ]
            };
            todayVisitUserPieChart.setOption(todayVisitUserPieChartOption);

            var formatTooltipLine = function (color, value) {
                return "<span style='display:inline-block;width:10px;height:10px;border-radius:50%;background-color:" + color + ";margin-" + javatmp.settings.floatReverse + ":5px;'></span><span>" + value + "</span>";
            };

            var formaterFunction = null;
            if (javatmp.settings.isRTL === true) {
                formaterFunction = function (params) {
                    return [
                        '<span>' + params[0].axisValue + '</span>',
                        "<br/>",
                        formatTooltipLine(params[0].color, params[0].seriesName + ':' + params[0].data)
                    ].join('');
                };
            }

            var pageViewActivitesPerHourChartOption = {
                grid: {
                    show: false,
                    top: 5,
                    bottom: 15,
                    left: 0,
                    right: 0
                },
                title: {
                    show: false,
                    text: "Users Page View Frequencies Per Hours",
                    x: 'center',
                    y: 0,
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                tooltip: {
                    trigger: 'axis',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    },
                    formatter: formaterFunction
                },
                legend: {
                    show: false,
                    align: javatmp.settings.floatDefault,
                    data: ['Page View'],
                    x: 'center',
                    y: '30px',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        show: false,
                        inverse: javatmp.settings.isRTL,
                        data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23],
                        //                        axisLabel: {
                        //                            interval: 0
                        //                        },
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                yAxis: [
                    {
                        show: false,
                        position: javatmp.settings.floatDefault,
                        type: 'value',
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                color: ['#007bff'],
                series: [
                    {
                        name: 'Pages Per Hour',
                        type: 'bar',
                        data: []
                    }
                ]
            };
            pageViewActivitesPerHourChartOption = $.extend(true, pageViewActivitesPerHourChartOption, {
                series: [
                    {
                        data: [24, 44, 81, 11, 32, 41, 27, 5, 4, 71, 51, 22, 0, 0, 43, 451, 413, 90, 27, 5, 4, 71, 51, 22]
                    }
                ]
            });
            pageViewActivitesPerHourChart.setOption(pageViewActivitesPerHourChartOption);
            var loadtimePerHourChartOption = {
                grid: {
                    show: false,
                    top: 5,
                    bottom: 15,
                    left: 0,
                    right: 0
                },
                title: {
                    show: false,
                    text: "Users Page View Frequencies Per Hours",
                    x: 'center',
                    y: 0,
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                tooltip: {
                    trigger: 'axis',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    },
                    formatter: formaterFunction
                },
                legend: {
                    show: false,
                    align: javatmp.settings.floatDefault,
                    data: ['Page View'],
                    x: 'center',
                    y: '30px',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        show: false,
                        inverse: javatmp.settings.isRTL,
                        data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23],
                        //                        axisLabel: {
                        //                            interval: 0
                        //                        },
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                yAxis: [
                    {
                        show: false,
                        position: javatmp.settings.floatDefault,
                        type: 'value',
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                color: ['#dc3545'],
                series: [
                    {
                        name: 'Average Load Time Per Hour',
                        type: 'line',
                        data: []
                    }
                ]
            };
            loadtimePerHourChartOption = $.extend(true, loadtimePerHourChartOption, {
                series: [
                    {
                        data: [24, 44, 81, 11, 32, 41, 27, 5, 4, 71, 51, 22, 24, 44, 81, 11, 32, 41, 27, 5, 4, 71, 51, 22]
                    }
                ]
            });
            loadtimePerHourChart.setOption(loadtimePerHourChartOption);
            var UsersLocationsInTheWorldOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: '{b}'
                },
                series: [
                    {
                        type: 'map',
                        roam: true,
                        selectedMode: 'single',
                        label: {
                            normal: {
                                show: false
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        name: '12',
                        map: 'world',
                        data: [
                            {
                                name: "China",
                                value: 10,
                                selected: false,
                                itemStyle: {
                                    normal: {
                                        color: "#FFFFFF"
                                    }
                                }
                            },
                            {name: "Saudi Arabia", value: 15, selected: false,
                                itemStyle: {
                                    normal: {
                                        color: "#FFFFFF"
                                    }
                                }
                            }
                        ]
                    }
                ]
            };
            var itemStyle = {
                normal: {
                    borderWidth: 0.3,
                    borderColor: 'black'
                },
                emphasis: {
                    label: {show: true}
                    // shadowOffsetX: 0,
                    // shadowOffsetY: 0,
                    // shadowBlur: 20,
                    // shadowColor: 'rgba(0, 0, 0, 0.3)'
                }
            };
            UsersLocationsInTheWorldOption = {
                tooltip: {
                    trigger: 'item',
                    formatter: function (params) {
                        var value = (params.value + '').split('.');
                        value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
                        return params.seriesName + '<br/>' + params.name + ' : ' + value;
                    }
                },
                visualMap: {
                    min: 0,
                    max: 100,
                    left: javatmp.settings.floatDefault,
                    top: 'bottom',
                    text: ['High', 'Low'],
                    seriesIndex: [0],
                    inRange: {
                        color: ['#ffffff', '#007bff']
                    },
                    calculable: true
                },
                series: [
                    {
                        name: "Country",
                        type: 'map',
                        map: 'world',
                        roam: true,
                        itemStyle: itemStyle,
                        data: [
                            {name: 'Afghanistan', value: 88},
                            {name: 'Angola', value: 94},
                            {name: 'Albania', value: 31},
                            {name: 'United Arab Emirates', value: 84},
                            {name: 'Argentina', value: 40},
                            {name: 'Armenia', value: 29},
                            {name: 'French Southern and Antarctic Lands', value: 26},
                            {name: 'Australia', value: 22},
                            {name: 'Austria', value: 84},
                            {name: 'Azerbaijan', value: 90},
                            {name: 'Burundi', value: 92},
                            {name: 'Belgium', value: 45},
                            {name: 'Benin', value: 95},
                            {name: 'Burkina Faso', value: 75},
                            {name: 'Bangladesh', value: 66},
                            {name: 'Bulgaria', value: 73},
                            {name: 'The Bahamas', value: 66},
                            {name: 'Bosnia and Herzegovina', value: 38},
                            {name: 'Belarus', value: 94},
                            {name: 'Belize', value: 30},
                            {name: 'Bermuda', value: 64},
                            {name: 'Bolivia', value: 71},
                            {name: 'Brazil', value: 19},
                            {name: 'Brunei', value: 27},
                            {name: 'Bhutan', value: 71},
                            {name: 'Botswana', value: 19},
                            {name: 'Central African Republic', value: 43},
                            {name: 'Canada', value: 34},
                            {name: 'Switzerland', value: 78},
                            {name: 'Chile', value: 96},
                            {name: 'China', value: 88},
                            {name: 'Ivory Coast', value: 60},
                            {name: 'Cameroon', value: 20},
                            {name: 'Democratic Republic of the Congo', value: 62},
                            {name: 'Republic of the Congo', value: 35},
                            {name: 'Colombia', value: 46},
                            {name: 'Costa Rica', value: 46},
                            {name: 'Cuba', value: 11},
                            {name: 'Northern Cyprus', value: 1},
                            {name: 'Cyprus', value: 11},
                            {name: 'Czech Republic', value: 10},
                            {name: 'Germany', value: 83},
                            {name: 'Djibouti', value: 83},
                            {name: 'Denmark', value: 55},
                            {name: 'Dominican Republic', value: 10},
                            {name: 'Algeria', value: 37},
                            {name: 'Ecuador', value: 15},
                            {name: 'Egypt', value: 78},
                            {name: 'Eritrea', value: 57},
                            {name: 'Spain', value: 46},
                            {name: 'Estonia', value: 12},
                            {name: 'Ethiopia', value: 87},
                            {name: 'Finland', value: 53},
                            {name: 'Fiji', value: 86},
                            {name: 'Falkland Islands', value: 49},
                            {name: 'France', value: 63},
                            {name: 'Gabon', value: 15},
                            {name: 'United Kingdom', value: 62},
                            {name: 'Georgia', value: 43},
                            {name: 'Ghana', value: 24},
                            {name: 'Guinea', value: 10},
                            {name: 'Gambia', value: 16},
                            {name: 'Guinea Bissau', value: 10},
                            {name: 'Equatorial Guinea', value: 69},
                            {name: 'Greece', value: 11},
                            {name: 'Greenland', value: 56},
                            {name: 'Guatemala', value: 14},
                            {name: 'French Guiana', value: 23},
                            {name: 'Guyana', value: 78},
                            {name: 'Honduras', value: 76},
                            {name: 'Croatia', value: 43},
                            {name: 'Haiti', value: 98},
                            {name: 'Hungary', value: 10},
                            {name: 'Indonesia', value: 24},
                            {name: 'India', value: 12},
                            {name: 'Ireland', value: 44},
                            {name: 'Iran', value: 24},
                            {name: 'Iraq', value: 30},
                            {name: 'Iceland', value: 31},
                            {name: 'Israel', value: 74},
                            {name: 'Italy', value: 60},
                            {name: 'Jamaica', value: 27},
                            {name: 'Jordan', value: 64},
                            {name: 'Japan', value: 12},
                            {name: 'Kazakhstan', value: 15},
                            {name: 'Kenya', value: 40},
                            {name: 'Kyrgyzstan', value: 53},
                            {name: 'Cambodia', value: 14},
                            {name: 'South Korea', value: 51},
                            {name: 'Kosovo', value: 97},
                            {name: 'Kuwait', value: 29},
                            {name: 'Laos', value: 63},
                            {name: 'Lebanon', value: 43},
                            {name: 'Liberia', value: 39},
                            {name: 'Libya', value: 60},
                            {name: 'Sri Lanka', value: 20},
                            {name: 'Lesotho', value: 20},
                            {name: 'Lithuania', value: 307},
                            {name: 'Luxembourg', value: 50},
                            {name: 'Latvia', value: 20},
                            {name: 'Morocco', value: 31},
                            {name: 'Moldova', value: 10},
                            {name: 'Madagascar', value: 21},
                            {name: 'Mexico', value: 11},
                            {name: 'Macedonia', value: 50},
                            {name: 'Mali', value: 13},
                            {name: 'Myanmar', value: 51},
                            {name: 'Montenegro', value: 62},
                            {name: 'Mongolia', value: 27},
                            {name: 'Mozambique', value: 23},
                            {name: 'Mauritania', value: 36},
                            {name: 'Malawi', value: 15},
                            {name: 'Malaysia', value: 28},
                            {name: 'Namibia', value: 21},
                            {name: 'New Caledonia', value: 24},
                            {name: 'Niger', value: 15},
                            {name: 'Nigeria', value: 15},
                            {name: 'Nicaragua', value: 58},
                            {name: 'Netherlands', value: 16},
                            {name: 'Norway', value: 48},
                            {name: 'Nepal', value: 26},
                            {name: 'New Zealand', value: 43},
                            {name: 'Oman', value: 28},
                            {name: 'Pakistan', value: 17},
                            {name: 'Panama', value: 36},
                            {name: 'Peru', value: 29},
                            {name: 'Philippines', value: 93},
                            {name: 'Papua New Guinea', value: 68},
                            {name: 'Poland', value: 38},
                            {name: 'Puerto Rico', value: 37},
                            {name: 'North Korea', value: 1},
                            {name: 'Portugal', value: 10},
                            {name: 'Paraguay', value: 64},
                            {name: 'Qatar', value: 17},
                            {name: 'Romania', value: 21},
                            {name: 'Russia', value: 21},
                            {name: 'Rwanda', value: 10},
                            {name: 'Western Sahara', value: 51},
                            {name: 'Saudi Arabia', value: 27},
                            {name: 'Sudan', value: 35},
                            {name: 'South Sudan', value: 99},
                            {name: 'Senegal', value: 12},
                            {name: 'Solomon Islands', value: 52},
                            {name: 'Sierra Leone', value: 57},
                            {name: 'El Salvador', value: 62},
                            {name: 'Somaliland', value: 96},
                            {name: 'Somalia', value: 96},
                            {name: 'Republic of Serbia', value: 34},
                            {name: 'Suriname', value: 52},
                            {name: 'Slovakia', value: 54},
                            {name: 'Slovenia', value: 20},
                            {name: 'Sweden', value: 93},
                            {name: 'Swaziland', value: 11},
                            {name: 'Syria', value: 78},
                            {name: 'Chad', value: 11},
                            {name: 'Togo', value: 63},
                            {name: 'Thailand', value: 66},
                            {name: 'Tajikistan', value: 76},
                            {name: 'Turkmenistan', value: 50},
                            {name: 'East Timor', value: 10},
                            {name: 'Trinidad and Tobago', value: 13},
                            {name: 'Tunisia', value: 10},
                            {name: 'Turkey', value: 72},
                            {name: 'United Republic of Tanzania', value: 44},
                            {name: 'Uganda', value: 33},
                            {name: 'Ukraine', value: 46},
                            {name: 'Uruguay', value: 33},
                            {name: 'United States', value: 88},
                            {name: 'Uzbekistan', value: 27},
                            {name: 'Venezuela', value: 23},
                            {name: 'Vietnam', value: 89},
                            {name: 'Vanuatu', value: 23},
                            {name: 'West Bank', value: 13},
                            {name: 'Yemen', value: 22},
                            {name: 'South Africa', value: 51},
                            {name: 'Zambia', value: 13},
                            {name: 'Zimbabwe', value: 13}
                        ]
                    }
                ]
            };
            UsersLocationsInTheWorld.setOption(UsersLocationsInTheWorldOption);
            var monthsName = moment.months();
            var barChartOption = {
                grid: {
                    show: false,
                    top: 25,
                    bottom: 30,
                    left: 45,
                    right: 45
                },
                title: {
                    show: false,
                    text: "Users Birthday Frequencies",
                    x: 'center',
                    y: 0,
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                tooltip: {
                    trigger: 'axis',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    },
                    formatter: formaterFunction
                },
                legend: {
                    show: false,
                    align: javatmp.settings.floatDefault,
                    data: ['Birthday'],
                    x: 'center',
                    y: '30px',
                    textStyle: {
                        fontFamily: "Open Sans",
                        align: javatmp.settings.floatDefault
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        inverse: javatmp.settings.isRTL,
                        data: monthsName,
//                        axisLabel: {
//                            interval: 0
//                        },
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                yAxis: [
                    {
                        position: javatmp.settings.floatDefault,
                        type: 'value',
                        textStyle: {
                            fontFamily: "Open Sans",
                            align: javatmp.settings.floatDefault
                        }
                    }
                ],
                color: ['#007bff'],
                series: [
                    {
                        name: 'Birthday',
                        type: 'bar',
                        data: []
                    }
                ]
            };
            barChartOption = $.extend(true, barChartOption, {
                series: [
                    {
                        data: [24, 44.6, 81, 11, 32, 41, 27, 5.9, 4.2, 71.8, 51.6, 22.8]
                    }
                ]
            });
            UsersBirthdayPerMonths.setOption(barChartOption);
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpAjaxContainerReady, function (event) {
                // fire AFTER all transition done and your ajax content is shown to user.
                $(".logout-home-btn-id").on("click", function () {
                    window.location.replace($(this).attr("action-ref-by-href"));
                });
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerResizeEventName, function (event) {
                // fire when user resize browser window or sidebar hide / show
                // we resize the current charts:
                javatmp.util.waitForFinalEvent(function () {
                    userStatusPieChart.resize();
                    todayVisitUserPieChart.resize();
                    pageViewActivitesPerHourChart.resize();
                    loadtimePerHourChart.resize();
                    UsersLocationsInTheWorld.resize();
                    UsersBirthdayPerMonths.resize();
                }, 100, "@users-dashboard-page-resize");
            });

            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenCompress, function (event, card) {
                // when card compress by pressing the top right tool button
                var cardId = card.attr("id");
                if (cardId === "UsersLocationsInTheWorldCard") {
                    $('#UsersLocationsInTheWorld').css({"minHeight": 300});
                    UsersLocationsInTheWorld.resize();
                } else if (cardId === "UsersBirthdayPerMonthsCard") {
                    $('#UsersBirthdayPerMonths').css({"minHeight": 300});
                    UsersBirthdayPerMonths.resize();
                }
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenExpand, function (event, card) {
                // when card compress by pressing the top right tool button
                var cardId = card.attr("id");
                if (cardId === "UsersLocationsInTheWorldCard") {
                    $('#UsersLocationsInTheWorld').css({"minHeight": 600});
                    UsersLocationsInTheWorld.resize();
                } else if (cardId === "UsersBirthdayPerMonthsCard") {
                    $('#UsersBirthdayPerMonths').css({"minHeight": 500});
                    UsersBirthdayPerMonths.resize();
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
                return true;
            });
        });
    </script>
</div>