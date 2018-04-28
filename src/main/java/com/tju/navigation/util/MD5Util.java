package com.tju.navigation.util;

import java.security.MessageDigest;


/**
 * MD5加密工具类
 */
public class MD5Util {
    /**
     * 16个字符加密
     * @param inStr
     * @return
     */
    public static String digest16(String inStr) {
        return digest(inStr, 16);
    }

    /**
     * 32个字符加密
     * @param inStr
     * @return
     */
    public static String digest(String inStr) {
        return digest(inStr, 32);
    }

    private static String digest(String inStr, int rang) {
        MessageDigest md5 = null;
        if (StringUtil.isEmpty(inStr)) {
            return "";
        }
        try {
            // 取得算法
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }

        char[] charArray = inStr.toCharArray();
        byte[] byteArray = new byte[charArray.length];

        for (int i = 0; i < charArray.length; i++) {
            byteArray[i] = (byte) charArray[i];
        }

        // 加密
        byte[] md5Bytes = md5.digest(byteArray);

        StringBuilder hexValue = new StringBuilder();

        for (int i = 0; i < md5Bytes.length; i++) {
            int val = ((int) md5Bytes[i]) & 0xff;
            if (val < 16) {
                hexValue.append("0");
            }
            hexValue.append(Integer.toHexString(val));
        }
        if (rang == 32) {
            return hexValue.toString();
        } else {
            // 转换为32位字符串
            return hexValue.toString().substring(8, 24);
        }
    }

    public static void main(String args[]) {
        String s = new String("123");
        System.out.println(digest(s));
    }
}
