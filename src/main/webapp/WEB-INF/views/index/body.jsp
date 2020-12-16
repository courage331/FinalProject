<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
table {width: 100%;}
table, th, td {
	border : 1px solid black;
	border-collapse: collapse;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/JS/hoin.js"></script>

<body>
	<!-- TradingView Widget BEGIN -->
	<div class="container">
		<div class="row">
			<div id="tradingview_986e3" class="col-sm-9"></div>
			<script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
			<script type="text/javascript">
				new TradingView.MediumWidget({
					"symbols" : [ [ "BTC(비트코인)", "BITHUMB:BTCKRW|12M" ],
							[ "ETHKRW(이더리움)", "KORBIT:ETHKRW|12M" ],
							[ "BCH(비트코인캐쉬)", "BITHUMB:BCHKRW|12M" ],
							[ "BSV(비트코인에스브이)", "BITHUMB:BSVKRW|12M" ],
							[ "LTC(라이트코인)", "BITHUMB:LTCKRW|12M" ] ],
					"chartOnly" : false,
					"width" : "100%",
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
			<div class="col-sm-3">
				<div class="text-center bg-dark">
					<a href="#" class="col-sm-12 p-5 bg-dark text-warning">로그인</a>
				</div>
				
				<div>공지사항</div>
			</div>
		</div>
		<br> <br> <br>
		<br>
		<div class="col-sm-9">
			<div class="col-sm-6">
				<div class="col-sm-8">수익게시판</div><a class="col-sm-4" href="#" style="text-align: right">더보기+</a>
				<br>
				<div  class="col-sm-12 p-4" >
				<table>
					<tbody>
						<tr>
							<td class="col-sm-10">테스트 제목입니다.<img src="https://coinpan.com/modules/document/tpl/icons/default/new.gif" style="margin-right:2px;"></td>
							<td class="col-sm-2">2020.12.11</td>
						</tr>
						<tr>
							<td class="col-sm-10">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<img src="https://coinpan.com/modules/document/tpl/icons/default/new.gif" style="margin-right:2px;"></td>
							<td class="col-sm-2">2020.12.11</td>
						</tr>
						<tr>
							<td class="col-sm-10">테스트 제목입니다.222222222222<img src="https://coinpan.com/modules/document/tpl/icons/default/new.gif" style="margin-right:2px;"></td>
							<td class="col-sm-2">2020.12.11</td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
			
			<div class="col-sm-6">
				<div class="col-sm-8">자유게시판</div><a class="col-sm-4" href="#" style="text-align: right">더보기+</a>
			</div>	
		</div>
		<br>
	</div>
	<br>
	<!-- TradingView Widget END -->

