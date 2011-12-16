function showTime() { 
  var now = new Date(); 
  var nowTime = now.toLocaleString(); 
  var date = nowTime.substring(0,10);//截取日期 
  var time = nowTime.substring(10,20); //截取时间 
  var week = now.getDay(); //星期 
  var hour = now.getHours(); //小时 
  //判断星期几 
  var weeks = ["日","一","二","三","四","五","六"]; 
  var getWeek = "星期" + weeks[week]; 
  var sc; 
  //判断是AM or PM 
  if(hour >= 0 && hour < 5){ 
   sc = '凌晨'; 
  } 
  else if(hour > 5 && hour <= 7){ 
   sc = '早上'; 
  } 
  else if(hour > 7 && hour <= 11){ 
   sc = '上午'; 
  } 
  else if(hour > 11 && hour <= 13){ 
   sc = '中午'; 
  } 
  else if(hour> 13 && hour <= 18){ 
   sc = '下午'; 
  } 
  else if(hour > 18 && hour <= 23){ 
   sc = '晚上'; 
  } 
  document.getElementById('time').innerHTML ="当前时间：" + date+" " + getWeek +"&nbsp;"+"   "+sc+"  "+time; 
  setTimeout('showTime()',1000); 
} 


