package com.example.theapp;

import android.content.ClipData;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

public class FoodsFrag extends Fragment {
  public static RecyclerAdapterFoods Adapterer;
  
  private static FragmentActivity myContext;
  
  private ArrayList<FoodsData> Foods;
  
  private ArrayList<NewsData> Newses;
  
  private TextView OrderList;
  
  private RecyclerView.LayoutManager TLayoutManager;
  
  private RecyclerView TRecyclerView;
  
  private Button button;
  
  public List<ClipData.Item> items;
  
  public void buildRecyclerView(View paramView) {
    RecyclerView recyclerView = (RecyclerView)paramView.findViewById(2131296589);
    this.TRecyclerView = recyclerView;
    recyclerView.setHasFixedSize(true);
    this.TLayoutManager = (RecyclerView.LayoutManager)new LinearLayoutManager(getContext());
    RecyclerAdapterFoods recyclerAdapterFoods = new RecyclerAdapterFoods(new RecyclerAdapterFoods.OnItemCheckListener() {
          public void onItemCheck(FoodsData param1FoodsData) {
            RecyclerAdapterFoods.currentSelectedItems.add(param1FoodsData);
          }
          
          public void onItemUncheck(FoodsData param1FoodsData) {
            RecyclerAdapterFoods.currentSelectedItems.remove(param1FoodsData);
          }
        },  this.Foods);
    Adapterer = recyclerAdapterFoods;
    this.TRecyclerView.setAdapter(recyclerAdapterFoods);
    this.TRecyclerView.setLayoutManager(this.TLayoutManager);
    Adapterer.setOnItemClickListener(new RecyclerAdapterFoods.OnItemClickListener() {
          public void onItemClick(int param1Int, View param1View) {}
        });
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view2 = paramLayoutInflater.inflate(2131492914, paramViewGroup, false);
    View view1 = paramLayoutInflater.inflate(2131492978, paramViewGroup, false);
    this.Foods = SplashScreen.Foods;
    myContext = (FragmentActivity)paramViewGroup.getContext();
    buildRecyclerView(view2);
    this.button = (Button)view2.findViewById(2131296261);
    this.OrderList = (TextView)view1.findViewById(2131296270);
    this.button.setOnClickListener(new View.OnClickListener() {
          public void onClick(View param1View) {
            FragmentManager fragmentManager = FoodsFrag.myContext.getSupportFragmentManager();
            OrderButton orderButton = new OrderButton();
            FoodsFrag.this.OrderList.setText(RecyclerAdapterFoods.currentSelectedItems.toString());
            orderButton.show(fragmentManager, "Dialog");
          }
        });
    return view2;
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\FoodsFrag.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */