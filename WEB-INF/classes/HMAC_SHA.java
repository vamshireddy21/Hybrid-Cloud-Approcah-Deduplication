package Hash;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.io.*;
public class HMAC_SHA
{  
private static String HMAC(String message, String algorithm)
        {byte[] hashedBytes=null;
 
    try {
        MessageDigest digest = MessageDigest.getInstance(algorithm);
       hashedBytes = digest.digest(message.getBytes("UTF-8"));
 
       
    } catch (Exception ex) {
       System.out.println(ex);
    }
	 return convertByteArrayToHexString(hashedBytes);
}
 static String convertByteArrayToHexString(byte[] arrayBytes) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayBytes.length; i++) {
            stringBuffer.append(Integer.toString((arrayBytes[i] & 0xff) + 0x100, 16)
                    .substring(1));
        }
        return stringBuffer.toString();
  }
}
