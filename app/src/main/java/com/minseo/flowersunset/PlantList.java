package com.minseo.flowersunset;

import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public class PlantList extends Fragment {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.plant_list, container, false);

        ImageView plant1 = (ImageView) view.findViewById(R.id.plant1);
        ImageView plant2 = (ImageView) view.findViewById(R.id.plant2);
        ImageView plant3 = (ImageView) view.findViewById(R.id.plant3);
        ImageView plant4 = (ImageView) view.findViewById(R.id.plant4);

        plant1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), PlantDetail.class);
                intent.putExtra("id", "1");
                startActivity(intent);
            }
        });

        plant2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), PlantDetail.class);
                intent.putExtra("id", "2");
                startActivity(intent);
            }
        });

        plant3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), PlantDetail.class);
                intent.putExtra("id", "3");
                startActivity(intent);
            }
        });

        plant4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), PlantDetail.class);
                intent.putExtra("id", "4");
                startActivity(intent);
            }
        });

        return view;
    }
}