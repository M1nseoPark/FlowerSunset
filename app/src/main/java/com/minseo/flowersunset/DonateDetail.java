package com.minseo.flowersunset;

import static android.content.ContentValues.TAG;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.google.android.material.tabs.TabLayout;

public class DonateDetail extends AppCompatActivity {

    DonateDetail1 fragment1;
    DonateDetail2 fragment2;

    SQLiteDatabase db;
    DonateListAdapter apdater;
    public static String id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.donate_detail);

        fragment1 = new DonateDetail1();
        fragment2 = new DonateDetail2();

        getSupportFragmentManager().beginTransaction().replace(R.id.container, fragment1).commit();

        Intent intent = getIntent();
        id = intent.getStringExtra("id");
        apdater = new DonateListAdapter(getApplicationContext());

        ImageView ivDImage = (ImageView) findViewById(R.id.ivDImage);
        TextView tvDetail = (TextView) findViewById(R.id.tvDetail);

        //db 오픈
        if (db == null){
            DatabaseHelper helper = new DatabaseHelper(getApplicationContext());
            db = helper.getWritableDatabase();
            if (db != null) {
                Log.v(TAG, "DB열기 성공!");
            } else {
                Log.e(TAG, "DB열기 실패!");
            }
        }

        //db 값 불러오기
        if (db != null) {
            String table1 = "senior";
            String sql = "select detail, dimage from "+table1+" where id = "+id;
            Cursor cursor = db.rawQuery(sql, null);
            Log.v(TAG, "조회된 데이터 수 : " + cursor.getCount());

            cursor.moveToNext();
            tvDetail.setText(cursor.getString(0));

            // Glide로 이미지 표시하기
            String imageUrl = cursor.getString(1);
            Log.v(TAG, imageUrl);
            Glide.with(this).load(imageUrl).error(R.drawable.sample).into(ivDImage);

            cursor.close();
        }
        else {
            Log.e(TAG, "selectData() db없음.");
        }

        TabLayout tabs = findViewById(R.id.tabs);
        tabs.addTab(tabs.newTab().setText("모금 소개"));
        tabs.addTab(tabs.newTab().setText("기부하기"));
        tabs.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                Log.d("MainActivity", "선택된 탭 : " + position);

                Fragment selected = null;
                if (position == 0) {
                    selected = fragment1;
                } else if (position == 1) {
                    selected = fragment2;
                }
                getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, selected).commit();
            }

            @Override
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {
            }
        });
    }
}