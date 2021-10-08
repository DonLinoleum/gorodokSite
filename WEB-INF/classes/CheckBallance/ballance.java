package CheckBallance;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;

public class ballance {

    public String[] Connect(long IP) throws IOException,MalformedURLException {

            String url = "http://10.0.0.17:1444/api.php?cmd=execute&proc=CLN_AUTH_LOGIN&arg1=dude&arg2=dude&arg3=0";
            URL urlOpen = new URL(url);
            URLConnection conn = urlOpen.openConnection();

            BufferedReader bf = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            

            StringBuilder data = new StringBuilder();
            String line;
            while ((line = bf.readLine()) != null) 
            {
                data.append(line);
            }

            int suidIndex = data.indexOf("<suid>");
            int suidLastIndex = data.indexOf("</suid>");
            String suid = data.substring(suidIndex + 6, suidLastIndex);
            bf.close();


            String url2 = "http://10.0.0.17:1444/api.php?cmd=execute&proc=CLN_USR_FIND_2&arg1=" + suid + "&arg2=null&arg3=null&arg4=null&arg5=null&arg6="+IP+"&arg7=null&arg8=null&arg9=null&arg10=null&arg11=null&arg12=null&arg13=null&arg14&arg15=null&arg16=null&arg17=null&arg18=null&arg19=null&arg20=null&arg21=null&arg22=null&arg23=null&arg24=null";
            URL urlOpen2 = new URL(url2);
            URLConnection conn2 = urlOpen2.openConnection();
            BufferedReader bf2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
            StringBuilder data2 = new StringBuilder();
            String line2;
            while ((line2 = bf2.readLine()) != null) {

                data2.append(line2);
            }

            int IdIndex = data2.indexOf("<id>");
            int IdLastIndex = data2.indexOf("</id>");
            String id = data2.substring(IdIndex + 4, IdLastIndex);
            bf2.close();


            String url3 = "http://10.0.0.17:1444/api.php?login=dude&password=dude&cmd=execute&proc=CLN_USR_GET&arg1=" + suid + "&arg2=" + id;
            URL urlOpen3 = new URL(url3);
            URLConnection conn3 = urlOpen3.openConnection();
            BufferedReader bf3 = new BufferedReader(new InputStreamReader(conn3.getInputStream(), "windows-1251"));
            StringBuilder data3 = new StringBuilder();
            String line3;

            while ((line3 = bf3.readLine()) != null)
            {
                data3.append(line3);
            }
    
            // Балланс
            int BallanceIndex = data3.indexOf("<balance>");
            int BallanceIndexLast = data3.indexOf("</balance>");
            String Ballance = data3.substring(BallanceIndex + 9, BallanceIndexLast);

            // Номер договора
            int ContractNumberIndex = data3.indexOf("<contract_number>");
            int ContractNumberIndexLast = data3.indexOf("</contract_number>");
            String Dogovor = data3.substring(ContractNumberIndex + 17, ContractNumberIndexLast);

            // Тариф
            int TarifIndex = data3.indexOf("<tarif_txt>");
            int TarifIndexLast = data3.indexOf("</tarif_txt>");
            String Tarif = data3.substring(TarifIndex + 11, TarifIndexLast);
            
			// Ежемесячный платеж
				int PayIndex = data3.indexOf("<abonent_pay>");
				int PayIndexLast = data3.indexOf("</abonent_pay>");
				String Pay = data3.substring(PayIndex + 13, PayIndexLast);
			
			bf3.close();

            String result[] = {Ballance, Dogovor, Tarif, Pay};

           return result;

    }
}