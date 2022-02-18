package com.example.theapp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;

public class SplashScreen extends Activity {
  public static ArrayList<FoodsData> Foods;
  
  public static ArrayList<NewsData> Newses = new ArrayList<>();
  
  public static ArrayList<NewsData> OldNewses = new ArrayList<>();
  
  Date End = null;
  
  private boolean Logged = false;
  
  Date Start = null;
  
  Date date = new Date();
  
  DateFormat format = new SimpleDateFormat("dd.MM", Locale.ENGLISH);
  
  private DatabaseReference mDatabase;
  
  private long ms = 0L;
  
  private boolean paused = false;
  
  private boolean splashActive = true;
  
  private ImageView splashImage;
  
  private long splashTime = 700L;
  
  static {
    Foods = new ArrayList<>();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2131492982);
    this.mDatabase = FirebaseDatabase.getInstance().getReference();
    try {
      DateFormat dateFormat = this.format;
      this.date = dateFormat.parse(dateFormat.format(this.date));
    } catch (ParseException parseException) {
      parseException.printStackTrace();
    } 
    ValueEventListener valueEventListener = new ValueEventListener() {
        public void onCancelled(DatabaseError param1DatabaseError) {
          Log.w("TAG", "loadPost:onCancelled", (Throwable)param1DatabaseError.toException());
        }
        
        public void onDataChange(DataSnapshot param1DataSnapshot) {
          if (SplashScreen.Newses.size() > 0)
            SplashScreen.Newses.clear(); 
          if (SplashScreen.Foods.size() > 0)
            SplashScreen.Foods.clear(); 
          Iterator<DataSnapshot> iterator = param1DataSnapshot.child("NewsData").getChildren().iterator();
          while (iterator.hasNext()) {
            NewsData newsData = (NewsData)((DataSnapshot)iterator.next()).getValue(NewsData.class);
            try {
              SplashScreen splashScreen = SplashScreen.this;
              splashScreen.Start = splashScreen.format.parse(newsData.getTimeStarts());
              splashScreen = SplashScreen.this;
              splashScreen.End = splashScreen.format.parse(newsData.getTimeEnds());
            } catch (ParseException parseException) {
              parseException.printStackTrace();
            } 
            if (newsData != null && SplashScreen.this.date.after(SplashScreen.this.Start) && SplashScreen.this.date.before(SplashScreen.this.End))
              SplashScreen.Newses.add(newsData); 
            if (newsData != null && SplashScreen.this.date.before(SplashScreen.this.End))
              SplashScreen.OldNewses.add(newsData); 
          } 
          iterator = param1DataSnapshot.child("Foods").getChildren().iterator();
          while (iterator.hasNext()) {
            FoodsData foodsData = (FoodsData)((DataSnapshot)iterator.next()).getValue(FoodsData.class);
            if (foodsData.getType() == "icecream")
              foodsData.setImage(2131165329); 
            SplashScreen.Foods.add(foodsData);
            Log.d("TAG", foodsData.toString() + "adadada");
          } 
          if (!SplashScreen.this.Logged) {
            Intent intent = new Intent((Context)SplashScreen.this, MainActivity.class);
            SplashScreen.this.startActivity(intent);
            SplashScreen.access$002(SplashScreen.this, true);
          } 
        }
      };
    this.mDatabase.addValueEventListener(valueEventListener);
    this.splashImage = (ImageView)findViewById(2131296476);
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = 2131165374;
    arrayOfInt[1] = 2131165382;
    arrayOfInt[2] = 2131165383;
    arrayOfInt[3] = 2131165314;
    int i = (new Random(System.currentTimeMillis())).nextInt(arrayOfInt.length - 1);
    this.splashImage.setImageResource(arrayOfInt[i]);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\SplashScreen.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */