package com.example.theapp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

public class RecyclerAdapter extends RecyclerView.Adapter<RecyclerAdapter.AdapterViewHolder> {
  private OnItemClickListener ClickListener;
  
  private ArrayList<NewsData> TheList;
  
  public RecyclerAdapter(ArrayList<NewsData> paramArrayList) {
    this.TheList = paramArrayList;
  }
  
  public int getItemCount() {
    return this.TheList.size();
  }
  
  public void onBindViewHolder(AdapterViewHolder paramAdapterViewHolder, int paramInt) {
    NewsData newsData = this.TheList.get(paramInt);
    paramAdapterViewHolder.Image.setImageResource(newsData.getImage(paramInt));
    paramAdapterViewHolder.Title.setText(newsData.getTitle());
    paramAdapterViewHolder.TimeLeft.setText(newsData.getTimeLeft());
  }
  
  public AdapterViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return new AdapterViewHolder(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131492895, paramViewGroup, false), this.ClickListener);
  }
  
  public void setOnItemClickListener(OnItemClickListener paramOnItemClickListener) {
    this.ClickListener = paramOnItemClickListener;
  }
  
  public static class AdapterViewHolder extends RecyclerView.ViewHolder {
    public ImageView Image;
    
    public TextView TimeLeft;
    
    public TextView Title;
    
    public AdapterViewHolder(View param1View, final RecyclerAdapter.OnItemClickListener listener) {
      super(param1View);
      this.Image = (ImageView)param1View.findViewById(2131296265);
      this.Title = (TextView)param1View.findViewById(2131296282);
      this.TimeLeft = (TextView)param1View.findViewById(2131296280);
      param1View.setOnClickListener(new View.OnClickListener() {
            public void onClick(View param2View) {
              if (listener != null) {
                int i = RecyclerAdapter.AdapterViewHolder.this.getAdapterPosition();
                if (i != -1)
                  listener.onItemClick(i, param2View); 
              } 
            }
          });
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
  
  public static interface OnItemClickListener {
    void onItemClick(int param1Int, View param1View);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\RecyclerAdapter.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */