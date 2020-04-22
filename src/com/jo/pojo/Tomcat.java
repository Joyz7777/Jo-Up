package com.jo.pojo;

public class Tomcat {



    private static String version = "8.5";

    public Tomcat(String version){

        this.version = version;

    }

    public static String getVersion() {
        return version;
    }

    public static void setVersion(String version) {
        Tomcat.version = version;
    }

    public Tomcat() {
    }
}
