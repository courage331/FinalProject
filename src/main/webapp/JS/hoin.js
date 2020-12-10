function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function setUpbitData(){
  $.ajax({
    url: "https://api.upbit.com/v1/market/all",
    dataType: "json"
  }).done(function(markets){
    let arr_krw_markets = ""; // 파라미터에 들어갈 코인이름들 ex) KRW-BTC
    let arr_korean_name = []; // 
    for(var i = 0; i < markets.length;i++){
      if( markets[i].market.indexOf("KRW") > -1 ){ // KRW가 있으면 -1이 안나옴
        arr_krw_markets += markets[i].market+(",");
        arr_korean_name.push(markets[i].korean_name); // korean_name 을 다
														// 가져옴
      }
    }
// alert(arr_korean_name); 코인 한글명
    arr_krw_markets = arr_krw_markets.substring(0, arr_krw_markets.length-1);
    $.ajax({
      url: "https://api.upbit.com/v1/ticker?markets=" +arr_krw_markets, // markets으로
																		// 검색
      dataType: "json"
    }).done(function(tickers){
      $("#table_ticker > tbody > tr").remove();
      // alert($("#table_ticker > tbody > tr").length);
      $("#table_ticker").fadeOut("slow");
      var test = $("#plus1").val();
      for(let i = 0;i < tickers.length;i++){
        let rowHtml = "<tr><td>"+(i+1)+"</td>";
        rowHtml += "<td>" + arr_korean_name[i] +"</td>"
        rowHtml += "<td>" + comma(tickers[i].trade_price)+"</td>"
        rowHtml += "<td>" + comma((tickers[i].signed_change_rate*100).toFixed(2))+"</td>"
        rowHtml += "<td>" + comma((     tickers[i].acc_trade_price_24h>1000000 ? ( tickers[i].acc_trade_price_24h / 1000000 ) : tickers[i].acc_trade_price_24h ).toFixed(0)) + (tickers[i].acc_trade_price_24h>1000000 ? "백만" : "") + "</td>"
        rowHtml += "</tr>";
        $("#table_ticker > tbody:last").append(rowHtml);
        if(test == 1 && i == 9){
        	break;
        }
        // markets[i].korean_name
      } // end for...
      
      
      
      $("#table_ticker").fadeIn("slow");
    })  // done(function(tickers){
  }) // end done(function(markets){
  .fail(function(){
    // alert("업비트 API 접근 중 에러.")}
    $("#tmp").text( "API 접근 중 에러." );
  })
  setTimeout(setUpbitData, 10000); // 10초마다 out
}



$(function() {
	setUpbitData();
});


$( document ).ready( function() {
	$( '#plus1' ).click( function() {
		$("#plus1").css("display", "none" );
		$("#plus2").css("display", "block" );
		$("#plus1").val('2');
		$("#plus2").val('1');
		setUpbitData();
	} );
	$( '#plus2' ).click( function() {
		$("#plus2").css("display", "none" );
		$("#plus1").css("display", "block" );
		$("#plus2").val('2');
		$("#plus1").val('1');
		setUpbitData();
	} );
} );

