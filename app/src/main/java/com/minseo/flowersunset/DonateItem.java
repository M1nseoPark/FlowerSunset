package com.minseo.flowersunset;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class DonateItem {
    private int donateId;
    private String donateName;
    private String donateDetail;
    private String donateAddress;
    private double donateLatitude;
    private double donateLongitude;
    private String donateIntro;
    private String donateImage;
    private String donateDImage;

    public DonateItem(String name, String degree, int id, String logo, double latitude, double longitude){
        this.donateName = name;
        this.donateDetail = degree;
        this.donateId = id;
        this.donateImage = logo;
        this.donateLatitude = latitude;
        this.donateLongitude = longitude;
    }

    public String getDonateLogo() {
        return this.donateImage;
    }
    public String getDonateName() {
        return this.donateName;
    }
    public String getDonateDetail() {
        return this.donateDetail;
    }
    public int getDonateId() { return this.donateId; }
}