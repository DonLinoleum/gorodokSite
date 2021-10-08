<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="CheckBallance.ballance" %>
<%
String IP = request.getRemoteAddr();
String IPArray[] = IP.split("\\.");
long LongIP = 0;

for (int i = 0;i<IPArray.length;i++)
{
	int power = 3 - i;
	LongIP += ((Integer.parseInt(IPArray[i]) % 256) * Math.pow(256,power));
}

 
if ((LongIP < 167772160) || (LongIP > 184483582)) {}

else {
try{
	String tarif = "";
	ballance b = new ballance();
	String results[] = b.Connect(LongIP);
			
	out.println("<div id='Ballance'>" +
	"<div id='ballance_wrapper'>" +
	"<ul class='nav_ballance'>" +
		"<li>Лицевой счет <br><b>"+ results[1] +  "</b></li>" +
		"<li>Баланс <br><b>" + results[0]  + "</b></li>" +
		"<li>Тариф <br><b>" + results[2] +  "</b></li>" +
	"</ul>" +
	"</div>" +
	"<div class='ostatok'>" +
			"<div class='back'></div>" +
			"<div class='polosi'></div>" +	
	"</div>" +
	"<div>" +
		"<p id='ostatok_dney'></p>" +
	"</div>" +
"</div>" +

"<script>"+
"let Main = document.getElementsByClassName ('ostatok');"+
"let Zap = document.getElementsByClassName('back');"+
"let Ost = document.getElementById('ostatok_dney');"+


"let date = new Date();"+
"let month = date.getMonth() + 1;"+
"let days_in_month = '';"+
"switch (month){"+
"case 1:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 2:"+
	"Main[0].style.width = '670px';"+
	"days_in_month = 28;"+
	"break;"+
"case 3:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 4:"+
	"Main[0].style.width = '743px';"+
	"days_in_month = 31;"+
	"break;"+
"case 5:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 6:"+
	"Main[0].style.width = '743px';"+
	"days_in_month = 31;"+
	"break;"+
"case 7:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 8:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 9:"	+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 10:"+
	"Main[0].style.width = '743px';"+
	"days_in_month = 31;"+
	"break;"+
"case 11:"+
	"Main[0].style.width = '719px';"+
	"days_in_month = 30;"+
	"break;"+
"case 12:"+
	"Main[0].style.width = '743px';"+
	"days_in_month = 31;"+
	"break;"+
"default:"+
	"break;"+
"}"+

"function Calculate()"+
"{ " +
	"let days='';"+
	"let res = Math.round(" + results[0] + "/ " + results[3] + " * 100);"+
	"let Val = Zap[0];"	+
	"Val.style.left= res + '%';"+
	"let pay = Math.round(("+ results[3] + " / days_in_month)*100)/100;"+
	"let Otk = Math.ceil (" +results[0] + " / pay);"+	
	"let OtkInt = String(Otk);"+
	
	"if (OtkInt.endsWith (1) && (OtkInt<10 || OtkInt>20))"+
	"{days = 'день';}"+
	
	"else if (OtkInt>9 && OtkInt<21)"+
	"{days = 'дней';}"+
    
	"else if ((OtkInt.endsWith(2)||OtkInt.endsWith(3)||OtkInt.endsWith(4))&&(OtkInt<10 || OtkInt>20))"+
	"{days = 'дня';}"+
	
	"else if ((OtkInt.endsWith(5)||OtkInt.endsWith(6)||OtkInt.endsWith(7)||OtkInt.endsWith(8)||OtkInt.endsWith(9)||OtkInt.endsWith(0))"+
	"&&(OtkInt<10 || OtkInt>=20))"+
	"{days = 'дней' } "+
	
	"if (Otk === 'Infinity' || Otk === '-Infinity' || Otk>90)"+
	"{Otk = 'более 90 дней'}"+
	"Ost.innerHTML = 'Денежных средств хватит на - <span id=kr>' + Otk + '</span> ' + days;"+
	 "} "+	
	
	"Calculate();"+
	
"</script>"

);}
catch (Exception ex)
{
	
	out.println(ex.getMessage());
}
}
%>









		

			