

$(document).ready(function(){
var th_today = document.querySelector('.th_today');
var th_tmr = document.querySelector('.th_tmr');
var th_dat = document.querySelector('.th_dat');
const API_KEY = 'lJLXEcwqEBG1Kbh3xMoGGPco7ahaBD515wFS1YO7kN%2BwjN0hU%2FdkPLBG4N1Sq01%2F5t3S8f2h6xQyBaxaZ%2BZELQ%3D%3D';

var tmpArr = []; //기온
var popArr = []; // 강수확률
var rehArr = []; // 습도
var skyArr = []; // 1.맑음, 2.구름조금, 3.구름많음, 4.흐림
var fcstTimeArr = [];
var fcstDateArr = [];
var hourlyWeather = [];
var todayWeather = [];
var tmrWeather = [];
var datWeather = [];
var getMinMaxTmp = [];
var avgPop = [];
var avgReh = [];


const url = 'https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?serviceKey='+API_KEY+'&pageNo=1&numOfRows=1000&dataType=json&base_date='+getToday(0)+'&base_time=0500&nx=33&ny=127';





function getTmp(weather,Arr){
  
  for(var i =0; i<weather.length; i++){
          
          Arr.push(weather[i][2]);
         
        }
        var min  = Math.min(...getMinMaxTmp);
        var max  = Math.max(...getMinMaxTmp);
        var minMaxTmp = [min, max];
        // 배열 초기화
        Arr.length = 0;
        return minMaxTmp;
       

}



function getAvgPop(weather){
  var sum = 0;

  for(var i =0; i<weather.length; i++){
          sum += parseInt(weather[i][3]); 
        }
        var avgPop = parseInt(sum/weather.length);
        return avgPop;
}

function getAvgReh(weather){
  var sum = 0;

  for(var i =0; i<weather.length; i++){
          sum += parseInt(weather[i][4]); 
        }
        var avgPop = parseInt(sum/weather.length);
        return avgPop;
}



function getToday(num){
    var date = new Date();
    var year = date.getFullYear();
    var month = ("0" + (1 + date.getMonth())).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);

    var todayDate = parseInt(year + month + day)+ parseInt(num);
    return todayDate;
}
function getDate(num){
    var date = new Date();
    var year = date.getFullYear();
    var month = ("0" + (1 + date.getMonth())).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);

    var todayDate =  month+'월 ' + (parseInt(day) +parseInt(num)) +"일";
    
    return todayDate;
}
	th_today.innerHTML = getDate(0) ;
    th_tmr.innerHTML= getDate(1) ;
    th_dat.innerHTML = getDate(2) ;




function yoyil(){
  let now = new Date().getDay();
  console.log('now = '+now);
  if(now == 0){
    return '일요일';
  }
  if(now == 1){
    return '월요일';
  }
  if(now == 2){
    return '화요일';
  }
  if(now == 3){
    return '수요일';
  }
  if(now == 4){
    return '목요일';
  }
  if(now == 5){
    return '금요일';
  }
  if(now == 6){
    return '토요일';
  }
}

function getAvgCloud(weather) {
   sArr = [];
    for(var i =0; i<weather.length; i++){
          sArr.push(parseInt(weather[i][5])); 
        }
    let m = new Map();
    for (let n of sArr) m.set(n, (m.get(n) || 0)+1);
    m = [...m].sort((a,b)=>b[1]-a[1]);
    return m.length === 1 || m[0][1] > m[1][1] ? m[0][0] : 1;
}

function getCloud(num){
      if(num == 1){
        return '맑음';
      }
      if(num == 2){
        return '구름조금';
      }
      if(num == 3){
        return '구름많음';
      }
      if(num == 4){
        return '흐림';
      }

}

function getWeather(){
  fetch(url)
    .then((response) => {
      return response.json();
    })
    .then((json) => {
        
        const totalCnt = json.response.body.totalCount;
        

        
        for(var i =0; i<totalCnt; i++){

          const fcstList = json.response.body.items.item[i];  
          if(fcstList.category == 'TMP'){
              tmpArr.push(fcstList.fcstValue);
              fcstTimeArr.push(fcstList.fcstTime);
              fcstDateArr.push(fcstList.fcstDate);
            }

            if(fcstList.category == 'POP'){
              popArr.push(fcstList.fcstValue);
              
            }
            
            if(fcstList.category == 'REH'){
              rehArr.push(fcstList.fcstValue);
            }
            if(fcstList.category == 'SKY'){
              skyArr.push(fcstList.fcstValue);
        
            }
        }
         
       
        // 기온 ,강수확률,습도 맑음
        for(var i =0; i<popArr.length; i++){
          if(fcstDateArr[i]== getToday(0)){
            todayWeather.push([fcstDateArr[i],fcstTimeArr[i],tmpArr[i],popArr[i],rehArr[i],skyArr[i]]);
          }
          if(fcstDateArr[i]== getToday(1)){
            tmrWeather.push([fcstDateArr[i],fcstTimeArr[i],tmpArr[i],popArr[i],rehArr[i],skyArr[i]]);
          }
          if(fcstDateArr[i]== getToday(2)){
            datWeather.push([fcstDateArr[i],fcstTimeArr[i],tmpArr[i],popArr[i],rehArr[i],skyArr[i]]);
          }
        }
         
      
       
        const td_today_tmp = document.querySelector('.td_today_tmp');
        const td_tmr_tmp = document.querySelector('.td_tmr_tmp');
        const td_dat_tmp = document.querySelector('.td_dat_tmp');
        
        const td_today_pop = document.querySelector('.td_today_pop');
        const td_tmr_pop = document.querySelector('.td_tmr_pop');
        const td_dat_pop = document.querySelector('.td_dat_pop');
        
        const td_today_reh = document.querySelector('.td_today_reh');
        const td_tmr_reh = document.querySelector('.td_tmr_reh');
        const td_dat_reh = document.querySelector('.td_dat_reh');
        
        const td_today_sky = document.querySelector('.td_today_sky');
        const td_tmr_sky = document.querySelector('.td_tmr_sky');
        const td_dat_sky = document.querySelector('.td_dat_sky');
        
        
       td_today_tmp.innerHTML =  getTmp(todayWeather,getMinMaxTmp);
       td_tmr_tmp.innerHTML =  getTmp(tmrWeather,getMinMaxTmp);
       td_dat_tmp.innerHTML =  getTmp(datWeather,getMinMaxTmp);
       
       td_today_pop.innerHTML =  getAvgPop(todayWeather)+'%';
       td_tmr_pop.innerHTML =  getAvgPop(tmrWeather)+'%';
       td_dat_pop.innerHTML =  getAvgPop(datWeather)+'%';
       
       td_today_reh.innerHTML =  getAvgReh(todayWeather)+'%';
       td_tmr_reh.innerHTML =  getAvgReh(tmrWeather)+'%';
       td_dat_reh.innerHTML =  getAvgReh(datWeather)+'%';
       
       td_today_sky.innerHTML =  getCloud(getAvgCloud(todayWeather)) ;
       td_tmr_sky.innerHTML = getCloud(getAvgCloud(tmrWeather));
       td_dat_sky.innerHTML =  getCloud(getAvgCloud(datWeather));
       
        // todayW.innerHTML = '<br>  '+getDate(0)+'<br> 오늘 <br> 최소,최대 온도 ='+ getTmp(todayWeather,getMinMaxTmp)+'<br>'+
        //                   ' 강수 확률 = ' + getAvgPop(todayWeather)+'<br>'+
        //                   ' 습도 = ' + getAvgReh(todayWeather)+'<br>'
        //                   +' 날씨 = ' + getCloud(getAvgCloud(todayWeather))+'<br>';


        // tmrW.innerHTML = '<br> 내일  <br>'+getDate(1)+'<br>최소,최대 온도 ='+ getTmp(tmrWeather,getMinMaxTmp)+'<br>'+
        //                    ' 평균 비 올 확률 = ' + getAvgPop(tmrWeather)+'<br>'+
        //                    ' 오늘 평균 습도 = ' + getAvgReh(tmrWeather)+'<br>'+
        //                    '  평균 날씨 = ' + getCloud(getAvgCloud(tmrWeather))+'<br>';

        // datW.innerHTML = '<br> 모레 <br>'+getDate(2)+'<br> 최소,최대 온도 ='+ getTmp(datWeather,getMinMaxTmp)+'<br>'+
        //                    ' 평균 비 올 확률 = ' + getAvgPop(datWeather)+'<br>'+
        //                    ' 오늘 평균 습도 = ' + getAvgReh(datWeather)+'<br>'+
        //                    ' 평균 날씨 = ' + getCloud(getAvgCloud(datWeather))+'<br>';
    }) 
    .catch((error) => {
      console.log(error);
    });

}


let today = new Date();  
let year = today.getFullYear(); // 년도
let month = today.getMonth() + 1;  // 월
let date = today.getDate();  // 날짜
let day = yoyil();  // 요일


getWeather();

})