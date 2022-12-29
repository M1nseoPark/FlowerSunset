package com.minseo.flowersunset;

import static android.content.ContentValues.TAG;

import static com.minseo.flowersunset.DonateDetail.id;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class DonateDetail1 extends Fragment {

    SQLiteDatabase db;
    DonateListAdapter apdater;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.donate_detail_1, container, false);

        apdater = new DonateListAdapter(getActivity().getApplicationContext());
        TextView tvIntro = (TextView) view.findViewById(R.id.tvIntro);

        //db 오픈
        if (db == null){
            DatabaseHelper helper = new DatabaseHelper(getActivity().getApplicationContext());
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
            String sql = "select introduce from "+table1+" where id = "+id;
            Cursor cursor = db.rawQuery(sql, null);
            Log.v(TAG, "조회된 데이터 수 : " + cursor.getCount());

            cursor.moveToNext();
            tvIntro.setText(cursor.getString(0));

            cursor.close();
        }
        else {
            Log.e(TAG, "selectData() db없음.");
        }

        return view;

    }
}