(async() => {
  // json を読み込む
  console.log("json axios start!")
  const res = await axios.get('/touring_routes/4.json').catch(() => {
    console.error('データの取得に失敗')
    return null
  })
  // 使いやすいように変数に代入
  console.log("res: ",res)
  const lat = res.data.start_lat
  // 取得した情報を表示する
  console.log("lat: ",res.data.start_lat)
  //マップの初期化表示
  initMap(res)
})()

function initMap(routes) {
    console.table(routes)
    // ルート検索の条件
    var request = {
        origin: new google.maps.LatLng(routes.data.start_lat,routes.data.start_lon), // 出発地
        destination: new google.maps.LatLng(routes.data.end_lat,routes.data.end_lon), // 目的地
        waypoints: [ // 経由地点(指定なしでも可)
            { location: new google.maps.LatLng(routes.data.wp1_lat,routes.data.wp1_lon) },
            { location: new google.maps.LatLng(routes.data.wp2_lat,routes.data.wp2_lon) },
            { location: new google.maps.LatLng(routes.data.wp3_lat,routes.data.wp3_lon) },
        ],
        travelMode: google.maps.DirectionsTravelMode.WALKING, // 交通手段(歩行。DRIVINGの場合は車)
    };

    // マップの中心計算
    let view_center_lat = (routes.data.start_lat + routes.data.end_lat) / 2
    let view_center_lon = (routes.data.start_lon + routes.data.end_lon) / 2

    // マップの生成
    var map = new google.maps.Map(document.getElementById("map"), {
        center: new google.maps.LatLng(view_center_lat,view_center_lon), // マップの中心
        zoom: 9 // ズームレベル
    });

    var d = new google.maps.DirectionsService(); // ルート検索オブジェクト
    var r = new google.maps.DirectionsRenderer({ // ルート描画オブジェクト
        map: map, // 描画先の地図
        preserveViewport: true, // 描画後に中心点をずらさない
    });
    // ルート検索
    d.route(request, function(result, status){
        // OKの場合ルート描画
        if (status == google.maps.DirectionsStatus.OK) {
            r.setDirections(result);
        }
    });
}