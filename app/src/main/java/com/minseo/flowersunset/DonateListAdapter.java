package com.minseo.flowersunset;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import java.util.ArrayList;

public class DonateListAdapter extends BaseAdapter {
    Context mContext = null;
    LayoutInflater mLayoutInflater = null;
    public static ArrayList<DonateItem> items = new ArrayList<DonateItem>();


    public DonateListAdapter(Context context){
        mContext = context;
        mLayoutInflater = LayoutInflater.from(mContext);
    }

    public void addItem(DonateItem item) {
        items.add(item);
    }

    @Override
    public int getCount() {
        return items.size();
    }

    @Override
    public Object getItem(int position) {
        return items.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    public void removeItemAll(){
        items.clear();
        notifyDataSetChanged();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        DonateItemView view = null;
        if (convertView == null) {
            view = new DonateItemView(mContext);
        } else {
            view = (DonateItemView) convertView;
        }

        // Data Set(listViewItemList)에서 position에 위치한 데이터 참조 획득
        DonateItem item = items.get(position);

        //데이터 값 표시하기
        view.setName(item.getDonateName());
        view.setDetail(item.getDonateDetail());
        view.setImage(item.getDonateImage());

        return view;
    }
}
