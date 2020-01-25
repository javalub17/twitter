package com.sda.twitter.utils;

public class EnvironmentVariableUtil {

    public static String getVariable(String key) {
        //    hibernate.connection.username
        //    hibernate_connection_username
        return System.getenv(key.replace('.', '_'));
    }
}
