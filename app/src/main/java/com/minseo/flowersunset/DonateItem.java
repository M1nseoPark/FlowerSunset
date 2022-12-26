package com.minseo.flowersunset;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class DonateItem {
    private int donateId;
    private String donateName;
    private String donateDetail;
//    private String donateAddress;
//    private double donateLatitude;
//    private double donateLongitude;
//    private String donateIntro;
    private String donateImage;
//    private String donateDImage;

    public DonateItem(String name, String detail, String image){
        this.donateName = name;
        this.donateDetail = detail;
        this.donateImage = image;
    }

    public String getDonateImage() {
        return this.donateImage;
    }
    public String getDonateName() {
        return this.donateName;
    }
    public String getDonateDetail() {
        return this.donateDetail;
    }
}