package Hash;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.io.*;
public class HashValue 
{
	public static String hashFile(File file, String algorithm)
         {
		byte[] hashedBytes=null;
    try {
		FileInputStream inputStream = new FileInputStream(file); 
        MessageDigest digest = MessageDigest.getInstance(algorithm);
 
        byte[] bytesBuffer = new byte[1024];
        int bytesRead = -1;
 
        while ((bytesRead = inputStream.read(bytesBuffer)) != -1) {
            digest.update(bytesBuffer, 0, bytesRead);
        }
 
        hashedBytes = digest.digest();
 
       
    } catch (Exception ex) {
        ex.printStackTrace();
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
