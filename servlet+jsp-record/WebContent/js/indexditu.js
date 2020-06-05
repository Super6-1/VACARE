var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;

var data = [
        {name: '上海', value: 50},
        {name: '厦门', value: 50},
        {name: '深圳', value: 60},
        {name: '三亚', value: 54},
        {name: '长崎', value: 60},
        {name: '新加坡', value: 60},
        {name: '马尼拉', value: 60},
        {name: '雅加达', value: 60},
    ];
    var geoCoordMap = {
        '上海':[121.48,31.22],
        '厦门':[118.1,24.46],
        '深圳':[114.07,22.62],
        '珠海':[113.52,22.3],
        '三亚':[109.511909,18.252847],
        '长崎':[130,30],
        '新加坡':[103.51,1.18],
        '马尼拉':[120.984219,14.599512],
        '雅加达':[106.845172,-6.211544],
    };
    
    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };
    
    option = {
        tooltip : {
            trigger: 'item'
        },
        bmap: {
            center: [104.114129, 37.550339],
            zoom: 5,
            roam: false,
            mapStyle: {
                styleJson: [{
                    'featureType': 'water',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'land',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#f3f3f3'
                    }
                }, {
                    'featureType': 'railway',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'highway',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#fdfdfd'
                    }
                }, {
                    'featureType': 'highway',
                    'elementType': 'labels',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'geometry',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'geometry.fill',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'poi',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'green',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'subway',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'manmade',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'local',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'labels',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'boundary',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'building',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'label',
                    'elementType': 'labels.text.fill',
                    'stylers': {
                        'color': '#999999'
                    }
                }]
            }
        },
        series : [
            {
                    name: '航运起点',
                    type: 'graph',
                    coordinateSystem: 'bmap',
                    layout: 'none',
                    animation: false,
                    data: convertData(data),
                    links: [{
                        source: '深圳',
                        target: '长崎'
                    }, {
                        source: '深圳',
                        target: '新加坡'
                    },{
                        source: '深圳',
                        target: '马尼拉'
                    }, {
                        source: '深圳',
                        target: '雅加达'
                    },{
                        source: '三亚',
                        target: '雅加达'
                    },
                    {
                        source: '上海',
                        target: '长崎'
                    },
                    {
                        source: '上海',
                        target: '马尼拉'
                    },{
                        source: '上海',
                        target: '新加坡'
                    },{
                        source: '上海',
                        target: '深圳'
                    },{
                        source: '上海',
                        target: '三亚'
                    },{
                        source: '厦门',
                        target: '马尼拉',
                    },{
                        source: '马尼拉',
                        target: '厦门'
                    }
                    ],
                    roam: true,
                    focusNodeAdjacency: true,
                    itemStyle: {
                        normal: {
                            borderColor: '#fff',
                            borderWidth: 1,
                            shadowBlur: 10,
                            shadowColor: 'rgba(0, 0, 0, 0.3)'
                        }
                    },
                    hoverAnimation: true,
                    label: {
                        normal: {
                            formatter: '{b}',
                            position: 'right',
                            show: true
                        }
                    },
                    lineStyle: {
                        color: 'source',
                        curveness: 0.3
                    },
                    emphasis: {
                        lineStyle: {
                            width: 2
                        }
                    }
                }
        ]
    };

    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
    