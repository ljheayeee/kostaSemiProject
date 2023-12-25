$(document).ready(function(){  

const API_KEY = 'ef985143618588c647913ef9128041c6';

const fail = () => {
  alert("좌표를 받아올 수 없음");
  }
  
  function success(position) {
  const latitude = position.coords.latitude;
  const longitude = position.coords.longitude;
  getTodayWeather(latitude, longitude);
  }
  navigator.geolocation.getCurrentPosition(success, fail);


const tempSection = document.querySelector('.tw-temperature');
const placeSection = document.querySelector('.tw-place');
const descSection = document.querySelector('.tw-description');
const iconSection = document.querySelector('.tw-icon');


function getTodayWeather(lat, lon){




fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang=kr`)
.then((response) => {
  return response.json();
})
.then((json) => {
    console.log(json);
    console.log(json.main.temp);
  const temperature = json.main.temp;
  const place = json.name;
  const description = json.weather[0].description;
    
  tempSection.innerHTML = temperature;
  placeSection.innerHTML = place;
 descSection.innerHTML = description;

 const icon = json.weather[0].icon;
  const iconURL = `http://openweathermap.org/img/wn/${icon}@2x.png`;

  iconSection.setAttribute('src', iconURL);

}) 
.catch((error) => {
  console.log(error);
});

}





})