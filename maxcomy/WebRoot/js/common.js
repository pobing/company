function showTime() { 
  var now = new Date(); 
  var nowTime = now.toLocaleString(); 
  var date = nowTime.substring(0,10);//��ȡ���� 
  var time = nowTime.substring(10,20); //��ȡʱ�� 
  var week = now.getDay(); //���� 
  var hour = now.getHours(); //Сʱ 
  //�ж����ڼ� 
  var weeks = ["��","һ","��","��","��","��","��"]; 
  var getWeek = "����" + weeks[week]; 
  var sc; 
  //�ж���AM or PM 
  if(hour >= 0 && hour < 5){ 
   sc = '�賿'; 
  } 
  else if(hour > 5 && hour <= 7){ 
   sc = '����'; 
  } 
  else if(hour > 7 && hour <= 11){ 
   sc = '����'; 
  } 
  else if(hour > 11 && hour <= 13){ 
   sc = '����'; 
  } 
  else if(hour> 13 && hour <= 18){ 
   sc = '����'; 
  } 
  else if(hour > 18 && hour <= 23){ 
   sc = '����'; 
  } 
  document.getElementById('time').innerHTML ="��ǰʱ�䣺" + date+" " + getWeek +"&nbsp;"+"   "+sc+"  "+time; 
  setTimeout('showTime()',1000); 
} 


