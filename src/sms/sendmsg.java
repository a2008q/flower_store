package sms;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;
import org.json.JSONException;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/29 14:32
 */
public class sendmsg {
    private static final int appid = 1400272649;
    private static final String appkey = "800cf6cdaac1892c547e79cc569aae4a";
    public static  String smsSign = null;

    public static void sendreg(String phoneNumber,String code) throws UnsupportedEncodingException {
//        int captcha = random() ;
//        String num = Integer.toString(captcha);
        SmsSingleSenderResult result = null;
        smsSign = "健康快乐每一天";
        smsSign = new String(smsSign.getBytes("UTF-8"),"UTF-8");
        int templateId = 510539;
        try {
            String[] params = {code,"3"};
            SmsSingleSender sender = new SmsSingleSender(appid, appkey);
            sender.sendWithParam("86", phoneNumber,
                    templateId, params, smsSign, "", "");
        }catch (HTTPException e){
            e.printStackTrace();
        }catch (JSONException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
    private static int random(){
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        int[] temp = new int[4];
        for (int i = 0; i <4 ; i++) {
            temp[i] = random.nextInt(9)+1;
            stringBuffer.append(temp[i]);
        }
        return Integer.parseInt(stringBuffer.toString());
    }


//    public static void main(String[] args) {
//        String send = sendmsg.sendreg("13397536307");
//        System.out.println(send);
//    }
}
