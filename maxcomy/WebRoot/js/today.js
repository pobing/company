function initArray(){for(i=0;i<initArray.arguments.length;i++)
this[i]=initArray.arguments[i];}var isnMonths=new initArray("1��","2��","3��","4��","5��","6��","7��","8��","9��","10��","11��","12��");var isnDays=new initArray("������","����һ","���ڶ�","������","������","������","������","������");today=new Date();hrs=today.getHours();min=today.getMinutes();sec=today.getSeconds();clckh=""+((hrs>12)?hrs-12:hrs);
clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;clck=(hrs>=12)?"����":"����";var stnr="";var ns="0123456789";var a="";

function getFullYear(d){//d is a date object
yr=d.getYear();if(yr<1000)
yr+=1900;return yr;}

