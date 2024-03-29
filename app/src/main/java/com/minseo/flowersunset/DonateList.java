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
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;

public class DonateList extends Fragment {

    SQLiteDatabase database;
    ListView donateList;
    DonateListAdapter adapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.donate_list, container, false);
        // 초기화, 참조 및 생성
        donateList = (ListView) view.findViewById(android.R.id.list);
        Button btDetail = (Button) view.findViewById(R.id.btDetail);
        openDB();

        // 리스트뷰 참조 및 Adapter 연결
        adapter = new DonateListAdapter(getActivity());

        // 자세히 버튼 클릭하면
        btDetail.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), DonateExplain.class);
                startActivity(intent);
            }
        });

        // 맨 처음 초기화 데이터 보여주기 (select)
        if (database != null) {
            String tableName = "senior";
            String query = "select id, name, detail, address, latitude, longitude, image from "+tableName;
            Cursor cursor = database.rawQuery(query, null);
            Log.v(TAG, "조회된 데이터 수 : " + cursor.getCount());

            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToNext();
                int id = cursor.getInt(0);
                String name = cursor.getString(1);
                String detail = cursor.getString(2);
                String address = cursor.getString(3);
                double latitude = cursor.getDouble(4);
                double longitude = cursor.getDouble(5);
                String image = cursor.getString(6);

                adapter.addItem(new DonateItem(name, id, detail, image));
            }
            cursor.close();
        } else {
            Log.e(TAG, "selectData() db없음.");
        }
        donateList.setAdapter(adapter);

        // 가게 정보 상세보기
        donateList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Intent intent = new Intent(getActivity(), DonateDetail.class);
                DonateItem item = (DonateItem) adapter.getItem(i);
                String id = String.valueOf(item.getDonateId());
                intent.putExtra("id", id);
                startActivity(intent);
            }
        });

        return view;
    }

    public void openDB() {
        Log.v(TAG, "openDB() 실행");
        DatabaseHelper helper = new DatabaseHelper(getContext());
        database = helper.getWritableDatabase();

        if (database != null) {
            Log.v(TAG, "DB 열기 성공!");
        } else {
            Log.e(TAG, "DB 열기 실패!");
        }
    }
}