package com.example.theapp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

public class RecyclerAdapterFoods extends RecyclerView.Adapter<RecyclerAdapterFoods.AdaptererViewHolder> {
  public static List<FoodsData> currentSelectedItems = new ArrayList<>();
  
  private OnItemClickListener ClickListenerer;
  
  private ArrayList<FoodsData> TheListFoods;
  
  private OnItemCheckListener onItemClick;
  
  public RecyclerAdapterFoods(OnItemCheckListener paramOnItemCheckListener, ArrayList<FoodsData> paramArrayList) {
    this.TheListFoods = paramArrayList;
    this.onItemClick = paramOnItemCheckListener;
  }
  
  public RecyclerAdapterFoods(ArrayList<FoodsData> paramArrayList) {
    this.TheListFoods = paramArrayList;
  }
  
  public int getItemCount() {
    return this.TheListFoods.size();
  }
  
  public void onBindViewHolder(AdaptererViewHolder paramAdaptererViewHolder, final int position) {
    FoodsData foodsData = this.TheListFoods.get(position);
    paramAdaptererViewHolder.TitleFoods.setText(foodsData.getTitle());
    paramAdaptererViewHolder.PriceFoods.setText(foodsData.getPrice());
    if (foodsData.getType().equals("ice"))
      paramAdaptererViewHolder.ImageFoods.setImageResource(2131165329); 
    if (foodsData.getType().equals("sandwich"))
      paramAdaptererViewHolder.ImageFoods.setImageResource(2131165376); 
    if (foodsData.getType().equals("salad"))
      paramAdaptererViewHolder.ImageFoods.setImageResource(2131165375); 
    if (foodsData.getType().equals("pasta"))
      paramAdaptererViewHolder.ImageFoods.setImageResource(2131165372); 
    if (paramAdaptererViewHolder instanceof AdaptererViewHolder)
      paramAdaptererViewHolder.setOnClickListener(new View.OnClickListener() {
            final FoodsData currentItem;
            
            public void onClick(View param1View) {
              if (RecyclerAdapterFoods.currentSelectedItems.contains(this.currentItem)) {
                RecyclerAdapterFoods.this.onItemClick.onItemUncheck(this.currentItem);
              } else {
                RecyclerAdapterFoods.this.onItemClick.onItemCheck(this.currentItem);
              } 
            }
          }); 
  }
  
  public AdaptererViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return new AdaptererViewHolder(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131492896, paramViewGroup, false), this.ClickListenerer);
  }
  
  public void setOnItemClickListener(OnItemClickListener paramOnItemClickListener) {
    this.ClickListenerer = paramOnItemClickListener;
  }
  
  public static class AdaptererViewHolder extends RecyclerView.ViewHolder {
    public static CheckBox checkBoxFoods;
    
    public ImageView ImageFoods;
    
    public TextView PriceFoods;
    
    public TextView TitleFoods;
    
    public AdaptererViewHolder(View param1View, final RecyclerAdapterFoods.OnItemClickListener listener) {
      super(param1View);
      this.ImageFoods = (ImageView)param1View.findViewById(2131296266);
      this.TitleFoods = (TextView)param1View.findViewById(2131296283);
      this.PriceFoods = (TextView)param1View.findViewById(2131296271);
      CheckBox checkBox = (CheckBox)param1View.findViewById(2131296375);
      checkBoxFoods = checkBox;
      checkBox.setOnClickListener(new View.OnClickListener() {
            public void onClick(View param2View) {
              if (listener != null) {
                int i = RecyclerAdapterFoods.AdaptererViewHolder.this.getAdapterPosition();
                if (i != -1)
                  listener.onItemClick(i, param2View); 
              } 
            }
          });
    }
    
    public void setOnClickListener(View.OnClickListener param1OnClickListener) {
      checkBoxFoods.setOnClickListener(param1OnClickListener);
    }
  }
  
  class null implements View.OnClickListener {
    public void onClick(View param1View) {
      if (listener != null) {
        int i = this.this$0.getAdapterPosition();
        if (i != -1)
          listener.onItemClick(i, param1View); 
      } 
    }
  }
  
  public static interface OnItemCheckListener {
    void onItemCheck(FoodsData param1FoodsData);
    
    void onItemUncheck(FoodsData param1FoodsData);
  }
  
  public static interface OnItemClickListener {
    void onItemClick(int param1Int, View param1View);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\RecyclerAdapterFoods.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */