function initArray(){for(i=0;i<initArray.arguments.length;i++)
this[i]=initArray.arguments[i];}var isnMonths=new initArray("Jan.","Feb.","Mar.","Apr.","May.","Jun.","Jul.","Aug.","Sept.","Oct.","Nov.","Dec.");var isnDays=new initArray("Sun","Mon","Tues","Wed","Thur","Fri","Sat","Sun");today=new Date();hrs=today.getHours();min=today.getMinutes();sec=today.getSeconds();clckh=""+((hrs>12)?hrs-12:hrs);
clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;clck=(hrs>=12)?"AM":"PM";var stnr="";var ns="0123456789";var a="";

function getFullYear(d){//d is a date object
yr=d.getYear();if(yr<1000)
yr+=1900;return yr;}


