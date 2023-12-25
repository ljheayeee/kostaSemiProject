<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.border-button a,
.border-button input {
  font-size: 15px;
  color: #00bdfe;
  background-color: transparent;
  border: 1px solid #00bdfe;
  padding: 10px 30px;
  display: inline-block;
  border-radius: 10px;
  font-weight: 500;
  text-transform: capitalize;
  letter-spacing: 0.5px;
  transition: all .3s;
}

.border-button a:hover,
.border-button input:hover {
  background-color: #00bdfe;
  color: #fff;
}
.index{
  display: flex;
  justify-content: center;
  align-items: center;
flex-direction: column;
}
.header{
	height:200px;
}
</style>

</head>
<body>
<div class="header"></div>
<div class="index">
<div class="border-button">
<h1><label for="link">세미프로젝트 바로가기</label></h1>
<a id="link" href="${pageContext.request.contextPath }/home">세미프로젝트 바로가기</a>
</div>
</div>

<article id="f9564485-86aa-4105-b37b-2a992ca5d9aa" class="page sans"><header><h1 class="page-title">세미 프로젝트</h1><p class="page-description"></p></header><div class="page-body"><p id="ad2c5ade-09b5-43a8-9eac-336c0c3bc97f" class="">날씨 제공 해주는 쇼핑몰 사이트</p><hr id="f0cd4221-8a5a-48c8-b383-829a0d367bc5"/><p id="333bc569-5bc6-4189-9a10-d0b7c51a81e5" class="">
</p><p id="f499b309-891a-4103-b940-4609c3da8278" class="">시작페이지 index.jsp</p><p id="630a6cdf-95a2-4ec5-8592-72646833d8e8" class="">
</p><hr id="07da1523-cb11-4076-8006-252e207b0baf"/><p id="37a5e306-fecd-47af-a033-642676cc3ce2" class="">
</p><p id="5b9f92dc-3055-45a4-aced-84073483a25e" class="">
</p><h2 id="18c479ec-9216-4b95-8c17-9897a604640d" class="">** 윈도우 환경 </h2><p id="5c4fd209-0aa6-44b7-b9f7-fccf4322dc6b" class="">
</p><ol type="1" id="4484bab3-721f-4c03-9b3d-06c799afc691" class="numbered-list" start="1"><li>uploadPath 와 p.setImg변경 필요(윈도우 환경에 맞게 이미지 경로 변경)<p id="fee9e4a2-0469-4cc6-9894-dccf88d6318b" class="">**uploadPath, p.setImg 위치</p></li></ol><p id="90709700-9513-4af4-82f8-38fb093d2d76" class=""><div class="indented"><p id="088000f4-7652-421b-bcd2-ec919778ca22" class="">product.controller.AddController.java</p><p id="93e96c76-d538-43b9-9c50-135bb633f9ad" class="">product.controller.ProdDelController.java</p></div></p><p id="3a4fa52a-bcdb-4dd3-b364-85100de7e654" class="">
</p><ol type="1" id="37fbd02b-4dc2-4932-b524-3df7a8aef435" class="numbered-list" start="2"><li>프로젝트 build Path의 jar파일 변경 필요<p id="d6e007cd-94d0-4bea-8675-e0afee03f2fd" class="">build path → Libraries</p><p id="210bab4e-1dfa-483d-93eb-fc7c10dc0889" class="">
</p><ol type="1" id="d1a687c8-8637-48ac-b214-b5461c774e60" class="numbered-list" start="1"><li>ojdbc11.jar</li></ol><ol type="1" id="be832d85-0964-49f4-ae69-ca8956584e17" class="numbered-list" start="2"><li>javax.servlet.jsp.jstl-api-1.2.1.jar</li></ol><p id="ad21c512-863b-4449-b0d6-1d0ec53f7edc" class="">
</p><p id="313d7b02-0253-4c6b-ab3d-260ec3767578" class="">jar 변경</p></li></ol><p id="d11c1426-96d5-4dc1-9221-311bbe10d769" class="">
</p><hr id="82ba40b8-7415-4dcc-93ef-27fedcbbf864"/><p id="42d264f7-5478-4954-a587-d2bfd664c1f6" class="">
</p><pre id="00d14e4b-4813-41e8-b611-ccfaf2af588a" class="code"><code>RequestDispatcher rd = request.getRequestDispatcher(path);
rd.forward(request, response);</code></pre><p id="92a937a8-c213-41f4-ac42-d548c732e0a0" class="">**rd.forward 할 때 css와 js가 따라오지 않을 때 →톰캣 web.xml에서 servlet-mapping 수정</p><pre id="af51c8c9-db40-44df-9d8f-c178456ac35c" class="code"><code>
&lt;servlet-mapping&gt;
        &lt;servlet-name&gt;default&lt;/servlet-name&gt;
         &lt;url-pattern&gt;/&lt;/url-pattern&gt;
        &lt;url-pattern&gt;*.js&lt;/url-pattern&gt;
        &lt;url-pattern&gt;*.css&lt;/url-pattern&gt;
        &lt;url-pattern&gt;*.jpg&lt;/url-pattern&gt;
    &lt;/servlet-mapping&gt;</code></pre><p id="c97b51f9-643e-448e-bb57-1ff8ec85235c" class="">
</p><hr id="86b313b9-d564-4c98-89d0-47f06273248e"/><p id="cd51a50b-df12-462f-874f-12d45ce39d04" class="">
</p><h2 id="c37dd55b-805a-453e-a34a-95045877c734" class="">기능</h2><p id="0748a119-ffb4-4280-bc1b-167887b05867" class="">
</p><h3 id="0013d5b6-814f-4b7f-8bd4-0c42ba2ae371" class="">헤더</h3><ul id="27f8ca04-6440-4b46-b673-549e9e129907" class="bulleted-list"><li style="list-style-type:disc">홈으로 돌아가기</li></ul><ul id="562a1440-2ea1-438c-a9e0-e26698cdeb53" class="bulleted-list"><li style="list-style-type:disc">로그인/회원가입</li></ul><ul id="263469bd-3b6c-47e9-8036-c0bc762097f2" class="bulleted-list"><li style="list-style-type:disc">로그인시 내정보</li></ul><p id="77b7540c-eaea-4d13-8b32-4add9243dd3c" class="">
</p><hr id="887fc371-b8ac-48a0-ae9e-3f5be463be57"/><p id="f0417ae6-b188-4692-b65c-1f09ded0a1c8" class="">
</p><h3 id="16ca6816-0282-4183-b519-dc2786161c21" class="">로그인 /회원가입</h3><ul id="4340200d-1b0a-4876-b1ff-c9c95b827f30" class="bulleted-list"><li style="list-style-type:disc">구현기능<ul id="02971187-db89-45b3-981d-0f1d53e11c1c" class="bulleted-list"><li style="list-style-type:circle">로그인<ul id="6d6e1956-85af-46ff-ac4e-0b0e0a0f9a55" class="bulleted-list"><li style="list-style-type:square">로그인시 가입한 이메일 보여주기</li></ul><p id="a4497cc3-a25f-4e20-b6f6-e783ebce791d" class="">
</p></li></ul><ul id="fe92bbc5-3cca-433e-81e7-7c5da1476ce1" class="bulleted-list"><li style="list-style-type:circle">회원가입<ul id="6d79fe42-c133-4031-b783-db6664a25c82" class="bulleted-list"><li style="list-style-type:square">admin~으로 시작하면 판매자 권한으로 회원가입</li></ul><ul id="c42e74d2-1c1c-428d-b2e0-088c57dc3805" class="bulleted-list"><li style="list-style-type:square">ex) asd@gmail.com → 구매자</li></ul><ul id="979f0aec-af13-432d-94f8-35c045dc3d92" class="bulleted-list"><li style="list-style-type:square">ex) admin@gmail.com → 판매자</li></ul><ul id="1b791e04-2219-4155-a0fc-b2ef0db67c72" class="bulleted-list"><li style="list-style-type:square">ex) admin1234@gmail.com → 판매자</li></ul><ul id="436b54fd-068c-45ab-8636-20e5c3d561ea" class="bulleted-list"><li style="list-style-type:square">다음 주소 api 활용 주소 기입</li></ul><p id="b4fd4cbf-7415-44e8-bca5-d8e1bb458843" class="">
</p></li></ul><ul id="b345b617-1156-4871-a5e7-20baa56b43fe" class="bulleted-list"><li style="list-style-type:circle">내 정보 수정<ul id="d63861d3-72c1-4522-99ae-f1a119bd35f5" class="bulleted-list"><li style="list-style-type:square">비밀번호와 주소만 변경 가능</li></ul><p id="98071248-a2a1-4912-aa83-8e2bbdc3a487" class="">
</p></li></ul><ul id="0356df4e-9816-4fe7-ac37-7f43fc723f24" class="bulleted-list"><li style="list-style-type:circle">회원 탈퇴<ul id="1fce3579-e088-4e98-b286-cc0e9a2aefa9" class="bulleted-list"><li style="list-style-type:square">내 정보 수정에서 가능</li></ul></li></ul><p id="9aee7131-48cc-45d7-a696-f7aa3ce2a31a" class="">
</p><hr id="edb0ab28-b488-420f-b790-5a43c84648c4"/><p id="d5d35e3f-ac0b-4800-8268-c7c11a1b7943" class="">
</p></li></ul><h3 id="faa1088c-b623-49a4-a392-c80fad562939" class="">내 정보화면</h3><ul id="6a9997a2-dfa4-413c-a66a-7e22df9dcb84" class="bulleted-list"><li style="list-style-type:disc">판매자일 때<ul id="36460dd5-7b2c-4162-8285-46c337b472f1" class="bulleted-list"><li style="list-style-type:circle">상품 등록과 등록된 상품 목록</li></ul></li></ul><p id="9c8e20bc-7eee-4a78-8200-64569b0fb0fb" class="">
</p><ul id="aca2f685-d651-42d0-88fb-5aa5c9cc562b" class="bulleted-list"><li style="list-style-type:disc">구매자일 때<ul id="5f470e4d-4385-4bfe-883d-db72bb655f25" class="bulleted-list"><li style="list-style-type:circle">내 주문 목록과 장바구니 확인</li></ul><ul id="432ccba9-9616-479d-bb6b-b235995aa5d6" class="bulleted-list"><li style="list-style-type:circle">장바구니에 담은 아이템 삭제 기능</li></ul><ul id="33c442c4-07b1-44bd-aa44-56283096c1ab" class="bulleted-list"><li style="list-style-type:circle">장바구니에 담은 아이템 주문 기능</li></ul><p id="376eb9c8-63db-456c-afa8-7620e02188a0" class="">
</p></li></ul><hr id="753f553b-ea1b-4302-8f98-487dc980bfbb"/><p id="ef9198b9-22bd-41cf-9e3c-4a291005c1a2" class="">
</p><h3 id="44e3d800-55bd-4c95-aff5-e4755e9c42a6" class="">홈 화면</h3><ul id="86d6da79-0f1e-43f4-88c8-9b8780c2d2ea" class="bulleted-list"><li style="list-style-type:disc">구현 기능<ul id="2901a883-ef88-44d6-b574-dc5449b3b3e2" class="bulleted-list"><li style="list-style-type:circle">openWeatherMap api를 통한 현재 날씨 구현</li></ul><ul id="216c28d0-c835-4d7d-9ca1-ca89b6a501ea" class="bulleted-list"><li style="list-style-type:circle">공공 데이터 api를 통한 3일간의 날씨 구현(용산구 기준)</li></ul><ul id="524d618b-e8e3-41e0-8201-2e492b3c68de" class="bulleted-list"><li style="list-style-type:circle">등록된 전체 상품 보여주기</li></ul><ul id="baded0a9-7f5f-4198-8ae8-5d8c61c3c247" class="bulleted-list"><li style="list-style-type:circle">조회수가 가장 높은 6개의 품목 보여주기</li></ul></li></ul><p id="141d6d45-bb39-46f0-b108-4d68b7658658" class="">
</p><hr id="7abc4800-c1db-4f41-b42f-e355a4cad956"/><p id="a21415cf-60fa-4456-87ed-8b923fcb4118" class="">
</p><h3 id="2f7487f0-af5e-4aad-8709-8596ad3b4c21" class="">상품 화면</h3><ul id="0ccc26c7-be96-456e-8c95-ddd513d1295a" class="bulleted-list"><li style="list-style-type:disc">검색기능 이름과 카테고리</li></ul><ul id="443954a7-3482-401c-8912-49bcd5b25134" class="bulleted-list"><li style="list-style-type:disc">검색할 제품의 이름과 카테고리 선택 후 검색</li></ul><ul id="186791f6-4e94-4e1b-9ae9-0c825780316e" class="bulleted-list"><li style="list-style-type:disc">검색할 제품의 일부 이름만 검색해도 결과가 나오도록 함</li></ul><ul id="d4495898-15cf-4cfa-bda0-8cf6f913e6d0" class="bulleted-list"><li style="list-style-type:disc">ex) 제품이름: 검정색 데님 바지 → 검색: 검정색 or 데님 or 바지</li></ul><p id="d676572a-6b08-4349-8407-4b3a7fbc569e" class="">
</p><p id="65f3ef2b-98f9-4d43-a8ca-6567321b75ce" class="">
</p></div></article>

</body>
 <style>
/* cspell:disable-file */
/* webkit printing magic: print all background colors */
html {
	-webkit-print-color-adjust: exact;
}
* {
	box-sizing: border-box;
	-webkit-print-color-adjust: exact;
}

html,
body {
	margin: 0;
	padding: 0;
}
@media only screen {
	body {
		margin: 2em auto;
		max-width: 900px;
		color: rgb(55, 53, 47);
	}
}

body {
	line-height: 1.5;
	white-space: pre-wrap;
}

a,
a.visited {
	color: inherit;
	text-decoration: underline;
}

.pdf-relative-link-path {
	font-size: 80%;
	color: #444;
}

h1,
h2,
h3 {
	letter-spacing: -0.01em;
	line-height: 1.2;
	font-weight: 600;
	margin-bottom: 0;
}

.page-title {
	font-size: 2.5rem;
	font-weight: 700;
	margin-top: 0;
	margin-bottom: 0.75em;
}

h1 {
	font-size: 1.875rem;
	margin-top: 1.875rem;
}

h2 {
	font-size: 1.5rem;
	margin-top: 1.5rem;
}

h3 {
	font-size: 1.25rem;
	margin-top: 1.25rem;
}

.source {
	border: 1px solid #ddd;
	border-radius: 3px;
	padding: 1.5em;
	word-break: break-all;
}

.callout {
	border-radius: 3px;
	padding: 1rem;
}

figure {
	margin: 1.25em 0;
	page-break-inside: avoid;
}

figcaption {
	opacity: 0.5;
	font-size: 85%;
	margin-top: 0.5em;
}

mark {
	background-color: transparent;
}

.indented {
	padding-left: 1.5em;
}

hr {
	background: transparent;
	display: block;
	width: 100%;
	height: 1px;
	visibility: visible;
	border: none;
	border-bottom: 1px solid rgba(55, 53, 47, 0.09);
}

img {
	max-width: 100%;
}

@media only print {
	img {
		max-height: 100vh;
		object-fit: contain;
	}
}

@page {
	margin: 1in;
}

.collection-content {
	font-size: 0.875rem;
}

.column-list {
	display: flex;
	justify-content: space-between;
}

.column {
	padding: 0 1em;
}

.column:first-child {
	padding-left: 0;
}

.column:last-child {
	padding-right: 0;
}

.table_of_contents-item {
	display: block;
	font-size: 0.875rem;
	line-height: 1.3;
	padding: 0.125rem;
}

.table_of_contents-indent-1 {
	margin-left: 1.5rem;
}

.table_of_contents-indent-2 {
	margin-left: 3rem;
}

.table_of_contents-indent-3 {
	margin-left: 4.5rem;
}

.table_of_contents-link {
	text-decoration: none;
	opacity: 0.7;
	border-bottom: 1px solid rgba(55, 53, 47, 0.18);
}

table,
th,
td {
	border: 1px solid rgba(55, 53, 47, 0.09);
	border-collapse: collapse;
}

table {
	border-left: none;
	border-right: none;
}

th,
td {
	font-weight: normal;
	padding: 0.25em 0.5em;
	line-height: 1.5;
	min-height: 1.5em;
	text-align: left;
}

th {
	color: rgba(55, 53, 47, 0.6);
}

ol,
ul {
	margin: 0;
	margin-block-start: 0.6em;
	margin-block-end: 0.6em;
}

li > ol:first-child,
li > ul:first-child {
	margin-block-start: 0.6em;
}

ul > li {
	list-style: disc;
}

ul.to-do-list {
	padding-inline-start: 0;
}

ul.to-do-list > li {
	list-style: none;
}

.to-do-children-checked {
	text-decoration: line-through;
	opacity: 0.375;
}

ul.toggle > li {
	list-style: none;
}

ul {
	padding-inline-start: 1.7em;
}

ul > li {
	padding-left: 0.1em;
}

ol {
	padding-inline-start: 1.6em;
}

ol > li {
	padding-left: 0.2em;
}

.mono ol {
	padding-inline-start: 2em;
}

.mono ol > li {
	text-indent: -0.4em;
}

.toggle {
	padding-inline-start: 0em;
	list-style-type: none;
}

/* Indent toggle children */
.toggle > li > details {
	padding-left: 1.7em;
}

.toggle > li > details > summary {
	margin-left: -1.1em;
}

.selected-value {
	display: inline-block;
	padding: 0 0.5em;
	background: rgba(206, 205, 202, 0.5);
	border-radius: 3px;
	margin-right: 0.5em;
	margin-top: 0.3em;
	margin-bottom: 0.3em;
	white-space: nowrap;
}

.collection-title {
	display: inline-block;
	margin-right: 1em;
}

.page-description {
    margin-bottom: 2em;
}

.simple-table {
	margin-top: 1em;
	font-size: 0.875rem;
	empty-cells: show;
}
.simple-table td {
	height: 29px;
	min-width: 120px;
}

.simple-table th {
	height: 29px;
	min-width: 120px;
}

.simple-table-header-color {
	background: rgb(247, 246, 243);
	color: black;
}
.simple-table-header {
	font-weight: 500;
}

time {
	opacity: 0.5;
}

.icon {
	display: inline-block;
	max-width: 1.2em;
	max-height: 1.2em;
	text-decoration: none;
	vertical-align: text-bottom;
	margin-right: 0.5em;
}

img.icon {
	border-radius: 3px;
}

.user-icon {
	width: 1.5em;
	height: 1.5em;
	border-radius: 100%;
	margin-right: 0.5rem;
}

.user-icon-inner {
	font-size: 0.8em;
}

.text-icon {
	border: 1px solid #000;
	text-align: center;
}

.page-cover-image {
	display: block;
	object-fit: cover;
	width: 100%;
	max-height: 30vh;
}

.page-header-icon {
	font-size: 3rem;
	margin-bottom: 1rem;
}

.page-header-icon-with-cover {
	margin-top: -0.72em;
	margin-left: 0.07em;
}

.page-header-icon img {
	border-radius: 3px;
}

.link-to-page {
	margin: 1em 0;
	padding: 0;
	border: none;
	font-weight: 500;
}

p > .user {
	opacity: 0.5;
}

td > .user,
td > time {
	white-space: nowrap;
}

input[type="checkbox"] {
	transform: scale(1.5);
	margin-right: 0.6em;
	vertical-align: middle;
}

p {
	margin-top: 0.5em;
	margin-bottom: 0.5em;
}

.image {
	border: none;
	margin: 1.5em 0;
	padding: 0;
	border-radius: 0;
	text-align: center;
}

.code,
code {
	background: rgba(135, 131, 120, 0.15);
	border-radius: 3px;
	padding: 0.2em 0.4em;
	border-radius: 3px;
	font-size: 85%;
	tab-size: 2;
}

code {
	color: #eb5757;
}

.code {
	padding: 1.5em 1em;
}

.code-wrap {
	white-space: pre-wrap;
	word-break: break-all;
}

.code > code {
	background: none;
	padding: 0;
	font-size: 100%;
	color: inherit;
}

blockquote {
	font-size: 1.25em;
	margin: 1em 0;
	padding-left: 1em;
	border-left: 3px solid rgb(55, 53, 47);
}

.bookmark {
	text-decoration: none;
	max-height: 8em;
	padding: 0;
	display: flex;
	width: 100%;
	align-items: stretch;
}

.bookmark-title {
	font-size: 0.85em;
	overflow: hidden;
	text-overflow: ellipsis;
	height: 1.75em;
	white-space: nowrap;
}

.bookmark-text {
	display: flex;
	flex-direction: column;
}

.bookmark-info {
	flex: 4 1 180px;
	padding: 12px 14px 14px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.bookmark-image {
	width: 33%;
	flex: 1 1 180px;
	display: block;
	position: relative;
	object-fit: cover;
	border-radius: 1px;
}

.bookmark-description {
	color: rgba(55, 53, 47, 0.6);
	font-size: 0.75em;
	overflow: hidden;
	max-height: 4.5em;
	word-break: break-word;
}

.bookmark-href {
	font-size: 0.75em;
	margin-top: 0.25em;
}

.sans { font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol"; }
.code { font-family: "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace; }
.serif { font-family: Lyon-Text, Georgia, ui-serif, serif; }
.mono { font-family: iawriter-mono, Nitti, Menlo, Courier, monospace; }
.pdf .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK JP'; }
.pdf:lang(zh-CN) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK SC'; }
.pdf:lang(zh-TW) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK TC'; }
.pdf:lang(ko-KR) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK KR'; }
.pdf .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; }
.pdf:lang(zh-CN) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; }
.pdf:lang(zh-TW) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; }
.pdf:lang(ko-KR) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; }
.pdf .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK JP'; }
.pdf:lang(zh-CN) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK SC'; }
.pdf:lang(zh-TW) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK TC'; }
.pdf:lang(ko-KR) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK KR'; }
.pdf .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; }
.pdf:lang(zh-CN) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; }
.pdf:lang(zh-TW) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; }
.pdf:lang(ko-KR) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; }
.highlight-default {
	color: rgba(55, 53, 47, 1);
}
.highlight-gray {
	color: rgba(120, 119, 116, 1);
	fill: rgba(120, 119, 116, 1);
}
.highlight-brown {
	color: rgba(159, 107, 83, 1);
	fill: rgba(159, 107, 83, 1);
}
.highlight-orange {
	color: rgba(217, 115, 13, 1);
	fill: rgba(217, 115, 13, 1);
}
.highlight-yellow {
	color: rgba(203, 145, 47, 1);
	fill: rgba(203, 145, 47, 1);
}
.highlight-teal {
	color: rgba(68, 131, 97, 1);
	fill: rgba(68, 131, 97, 1);
}
.highlight-blue {
	color: rgba(51, 126, 169, 1);
	fill: rgba(51, 126, 169, 1);
}
.highlight-purple {
	color: rgba(144, 101, 176, 1);
	fill: rgba(144, 101, 176, 1);
}
.highlight-pink {
	color: rgba(193, 76, 138, 1);
	fill: rgba(193, 76, 138, 1);
}
.highlight-red {
	color: rgba(212, 76, 71, 1);
	fill: rgba(212, 76, 71, 1);
}
.highlight-gray_background {
	background: rgba(241, 241, 239, 1);
}
.highlight-brown_background {
	background: rgba(244, 238, 238, 1);
}
.highlight-orange_background {
	background: rgba(251, 236, 221, 1);
}
.highlight-yellow_background {
	background: rgba(251, 243, 219, 1);
}
.highlight-teal_background {
	background: rgba(237, 243, 236, 1);
}
.highlight-blue_background {
	background: rgba(231, 243, 248, 1);
}
.highlight-purple_background {
	background: rgba(244, 240, 247, 0.8);
}
.highlight-pink_background {
	background: rgba(249, 238, 243, 0.8);
}
.highlight-red_background {
	background: rgba(253, 235, 236, 1);
}
.block-color-default {
	color: inherit;
	fill: inherit;
}
.block-color-gray {
	color: rgba(120, 119, 116, 1);
	fill: rgba(120, 119, 116, 1);
}
.block-color-brown {
	color: rgba(159, 107, 83, 1);
	fill: rgba(159, 107, 83, 1);
}
.block-color-orange {
	color: rgba(217, 115, 13, 1);
	fill: rgba(217, 115, 13, 1);
}
.block-color-yellow {
	color: rgba(203, 145, 47, 1);
	fill: rgba(203, 145, 47, 1);
}
.block-color-teal {
	color: rgba(68, 131, 97, 1);
	fill: rgba(68, 131, 97, 1);
}
.block-color-blue {
	color: rgba(51, 126, 169, 1);
	fill: rgba(51, 126, 169, 1);
}
.block-color-purple {
	color: rgba(144, 101, 176, 1);
	fill: rgba(144, 101, 176, 1);
}
.block-color-pink {
	color: rgba(193, 76, 138, 1);
	fill: rgba(193, 76, 138, 1);
}
.block-color-red {
	color: rgba(212, 76, 71, 1);
	fill: rgba(212, 76, 71, 1);
}
.block-color-gray_background {
	background: rgba(241, 241, 239, 1);
}
.block-color-brown_background {
	background: rgba(244, 238, 238, 1);
}
.block-color-orange_background {
	background: rgba(251, 236, 221, 1);
}
.block-color-yellow_background {
	background: rgba(251, 243, 219, 1);
}
.block-color-teal_background {
	background: rgba(237, 243, 236, 1);
}
.block-color-blue_background {
	background: rgba(231, 243, 248, 1);
}
.block-color-purple_background {
	background: rgba(244, 240, 247, 0.8);
}
.block-color-pink_background {
	background: rgba(249, 238, 243, 0.8);
}
.block-color-red_background {
	background: rgba(253, 235, 236, 1);
}
.select-value-color-interactiveBlue { background-color: rgba(35, 131, 226, .07); }
.select-value-color-pink { background-color: rgba(245, 224, 233, 1); }
.select-value-color-purple { background-color: rgba(232, 222, 238, 1); }
.select-value-color-green { background-color: rgba(219, 237, 219, 1); }
.select-value-color-gray { background-color: rgba(227, 226, 224, 1); }
.select-value-color-translucentGray { background-color: rgba(255, 255, 255, 0.0375); }
.select-value-color-orange { background-color: rgba(250, 222, 201, 1); }
.select-value-color-brown { background-color: rgba(238, 224, 218, 1); }
.select-value-color-red { background-color: rgba(255, 226, 221, 1); }
.select-value-color-yellow { background-color: rgba(253, 236, 200, 1); }
.select-value-color-blue { background-color: rgba(211, 229, 239, 1); }
.select-value-color-pageGlass { background-color: undefined; }
.select-value-color-washGlass { background-color: undefined; }

.checkbox {
	display: inline-flex;
	vertical-align: text-bottom;
	width: 16;
	height: 16;
	background-size: 16px;
	margin-left: 2px;
	margin-right: 5px;
}

.checkbox-on {
	background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20width%3D%2216%22%20height%3D%2216%22%20fill%3D%22%2358A9D7%22%2F%3E%0A%3Cpath%20d%3D%22M6.71429%2012.2852L14%204.9995L12.7143%203.71436L6.71429%209.71378L3.28571%206.2831L2%207.57092L6.71429%2012.2852Z%22%20fill%3D%22white%22%2F%3E%0A%3C%2Fsvg%3E");
}

.checkbox-off {
	background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20x%3D%220.75%22%20y%3D%220.75%22%20width%3D%2214.5%22%20height%3D%2214.5%22%20fill%3D%22white%22%20stroke%3D%22%2336352F%22%20stroke-width%3D%221.5%22%2F%3E%0A%3C%2Fsvg%3E");
}
	
</style>
</html>