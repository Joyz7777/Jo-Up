package com.jo.pojo;

public class Customer {



    private String username;
    private String address;
    private String cardType;
    private String cardNo;

    public Customer(String username, String address, String cardType, String cardNo) {
        this.username = username;
        this.address = address;
        this.cardType = cardType;
        this.cardNo = cardNo;
    }

    public Customer() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }
}
