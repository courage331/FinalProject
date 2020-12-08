<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/JS/hoin.js"></script>

<body>
	<div id='tmp' style="color: pink;"></div>
	<br />
	<br />
	<table id="table_ticker" class="table table-hover text-center">
		<thead>
			<tr>
				<td>NO</td>
				<td>한글명</td>
				<td>현재가</td>
				<td>전일대비</td>
				<td>거래대금</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<br />
	<br />
	<br />
	<div id='tmp2'></div>

	<!-- TradingView Widget BEGIN -->
	<div class="tradingview-widget-container">
		<div id="tradingview_986e3"></div>
		<div class="tradingview-widget-copyright">
			트레이딩뷰 제공 <a
				href="https://kr.tradingview.com/symbols/BTCKRW/?exchange=BITHUMB"
				rel="noopener" target="_blank"><span class="blue-text">BTC</span></a>
		</div>
		<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
		<script type="text/javascript">
			new TradingView.MediumWidget({
				"symbols" : [ [ "BTC(비트코인)", "BITHUMB:BTCKRW|12M" ],
						[ "ETHKRW(이더리움)", "KORBIT:ETHKRW|12M" ],
						[ "BCH(비트코인캐쉬)", "BITHUMB:BCHKRW|12M" ],
						[ "BSV(비트코인에스브이)", "BITHUMB:BSVKRW|12M" ],
						[ "LTC(라이트코인)", "BITHUMB:LTCKRW|12M" ] ],
				"chartOnly" : false,
				"width" : 1000,
				"height" : 400,
				"locale" : "kr",
				"colorTheme" : "light",
				"gridLineColor" : "#F0F3FA",
				"trendLineColor" : "#2196F3",
				"fontColor" : "#787B86",
				"underLineColor" : "#E3F2FD",
				"isTransparent" : false,
				"autosize" : false,
				"container_id" : "tradingview_986e3"
			});
		</script>
	</div>
	<!-- TradingView Widget END -->
</body>
</html>