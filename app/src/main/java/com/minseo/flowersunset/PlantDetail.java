package com.minseo.flowersunset;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

public class PlantDetail extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.plant_detail);

        ImageView ivPlant = (ImageView) findViewById(R.id.ivPlant);
        TextView tvName = (TextView) findViewById(R.id.tvName);
        TextView tvPrice = (TextView) findViewById(R.id.tvPrice);
        TextView tvDetail = (TextView) findViewById(R.id.tvDetail);

        Intent intent = getIntent();
        String id = intent.getStringExtra("id");

        if (id.equals("1")) {
            ivPlant.setImageResource(R.drawable.birds_of_paradise_2);
            tvName.setText("극락조");
            tvPrice.setText("12000원");
            tvDetail.setText("생명력이 강하여 누구나 키울 수 있고\n잎사귀 크기가 커서 공기정화 능력이 탁월합니다\n\n극락조의 꽃말은 영원불변입니다.\n독거노인분들의 영원한 행복을 기원한다는 의미를 담았습니다.");
        }
        else if (id.equals("2")) {
            ivPlant.setImageResource(R.drawable.moonshine_2);
            tvName.setText("문샤인");
            tvPrice.setText("12000원");
            tvDetail.setText("음이온을 다른 식물보다 30배 이상 방출하며, 밤에 산소를 만들고 숙면에 도움이 되어 침실에서 키우기 좋은 식물입니다\n\n아름다운 잎으로 공간을 고급스럽게 만들어주는 문샤인으로 독거노인분들과 여러분들의 밤이 보다 편안해지길 바랍니다.");
        }
        else if (id.equals("3")) {
            ivPlant.setImageResource(R.drawable.elastica_2);
            tvName.setText("멜라닌 고무나무");
            tvPrice.setText("12000원");
            tvDetail.setText("물을 자주 주지 않아도 되며 상대적으로 키우기 쉬워, 초보자분들께 추천하는 식물입니다.\n\n꽃말이 영원한 행복인 고무나무와 함께 독거노인분들이 오랫동안 행복한 시간을 보내시길 바라는 마음을 담았습니다.");
        }
        else {
            ivPlant.setImageResource(R.drawable.monstera_2);
            tvName.setText("히메 몬스테라");
            tvPrice.setText("12000원");
            tvDetail.setText("몬스테라답게 실내 공기효과도 탁월하고 초보자분들도 부담없이 키우실 수 있습니다\n\n생존을 위해 스스로 잎을 만들어내는 자연의 신비가 느껴지는 식물로, 모든 잎이 찢어져 나온다는 것이 특징인 고급스러운 품종입니다.");
        }
    }
}