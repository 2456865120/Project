package nuc.ss.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class ShiroMd5 {

    public static String getMd5(String password,String loginname){

        String algorithmName = "MD5";
        Object source = password;
        Object salt = ByteSource.Util.bytes(loginname);
        int hashIterations = 1024;
        /*	algorithmName 算法名称
         * 	source需要加密的资源
         * 	salt  盐值增加加密的难度
         * 	hashIterations 对source进行盐值加密 算法要执行多少次
         */
        Object resultPwd = new SimpleHash(algorithmName, source, salt, hashIterations);
        return resultPwd.toString();

    }
}
