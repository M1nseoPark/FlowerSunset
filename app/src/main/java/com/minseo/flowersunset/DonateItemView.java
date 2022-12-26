package com.minseo.flowersunset;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.bumptech.glide.Glide;

public class DonateItemView extends LinearLayout {
    ImageView elderImage;   // 사진
    TextView elderName;   // 이름
    TextView elderDetail;   // 설명

    public DonateItemView(Context context){
        super(context);
        init(context);
    }

    public DonateItemView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    private void init(Context context){
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        inflater.inflate(R.layout.donate_item, this, true);

        elderImage = findViewById(R.id.elderImage);
        elderName = findViewById(R.id.elderName);
        elderDetail = findViewById(R.id.elderDetail);

        // 매장 리스트 사진 모서리 조정
        GradientDrawable drawable= (GradientDrawable) context.getDrawable(R.drawable.round5);
        elderImage.setBackground(drawable);
        elderImage.setClipToOutline(true);
    }

    public void setName(String name){
        elderName.setText(name);
    }

    public void setDetail(String grade){
        elderDetail.setText(grade);
    }

    public void setImage(String url){
        Glide.with(this).load(url).into(elderImage);
    }
}
