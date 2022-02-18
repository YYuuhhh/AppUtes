package com.example.theapp;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

public class NewsFrag extends Fragment {
  public static RecyclerAdapter Adapter;
  
  private ArrayList<NewsData> Newses;
  
  private ArrayList<NewsData> OldNewses;
  
  private RecyclerView.LayoutManager TLayoutManager;
  
  private RecyclerView TRecyclerView;
  
  public void buildRecyclerView(View paramView) {
    RecyclerView recyclerView = (RecyclerView)paramView.findViewById(2131296590);
    this.TRecyclerView = recyclerView;
    recyclerView.setHasFixedSize(true);
    this.TLayoutManager = (RecyclerView.LayoutManager)new LinearLayoutManager(getContext());
    RecyclerAdapter recyclerAdapter = new RecyclerAdapter(this.Newses);
    Adapter = recyclerAdapter;
    this.TRecyclerView.setAdapter(recyclerAdapter);
    this.TRecyclerView.setLayoutManager(this.TLayoutManager);
    Adapter.setOnItemClickListener(new RecyclerAdapter.OnItemClickListener() {
          public void onItemClick(int param1Int, View param1View) {
            NewsFrag newsFrag = NewsFrag.this;
            newsFrag.create(newsFrag.Newses.get(param1Int)).showAsPointer(param1View);
          }
        });
  }
  
  public PointerPopupWindow create(NewsData paramNewsData) {
    PointerPopupWindow pointerPopupWindow = new PointerPopupWindow((Context)getActivity(), getResources().getDimensionPixelSize(2131100032));
    TextView textView = new TextView((Context)getActivity());
    textView.setGravity(17);
    textView.setText(paramNewsData.getInfo());
    textView.setTextSize(20.0F);
    textView.setTextColor(-1);
    pointerPopupWindow.setContentView((View)textView);
    pointerPopupWindow.setBackgroundDrawable((Drawable)new ColorDrawable(-1290726893));
    pointerPopupWindow.setPointerImageRes(2131165326);
    return pointerPopupWindow;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2131492917, paramViewGroup, false);
    this.OldNewses = SplashScreen.OldNewses;
    this.Newses = SplashScreen.Newses;
    buildRecyclerView(view);
    return view;
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\NewsFrag.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */