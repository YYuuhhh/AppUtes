package com.example.theapp;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.firebase.auth.FirebaseAuth;

public class MainActivity extends AppCompatActivity implements LogFrag.ILogFrag, OrderButton.IOrderButton {
  public static boolean Admin;
  
  public static boolean Logged = false;
  
  private Button exit;
  
  private Button log;
  
  private FirebaseAuth mAuth;
  
  private BottomNavigationView.OnNavigationItemSelectedListener navListener = new BottomNavigationView.OnNavigationItemSelectedListener() {
      public boolean onNavigationItemSelected(MenuItem param1MenuItem) {
        SettingsFrag settingsFrag;
        NewsFrag newsFrag;
        MenuItem menuItem = null;
        switch (param1MenuItem.getItemId()) {
          default:
            param1MenuItem = menuItem;
            MainActivity.this.getSupportFragmentManager().beginTransaction().replace(2131296453, (Fragment)param1MenuItem).commit();
            return true;
          case 2131296556:
            settingsFrag = new SettingsFrag();
            MainActivity.this.getSupportFragmentManager().beginTransaction().replace(2131296453, settingsFrag).commit();
            return true;
          case 2131296555:
            newsFrag = new NewsFrag();
            MainActivity.this.getSupportFragmentManager().beginTransaction().replace(2131296453, newsFrag).commit();
            return true;
          case 2131296554:
            break;
        } 
        FoodsFrag foodsFrag = new FoodsFrag();
        MainActivity.this.getSupportFragmentManager().beginTransaction().replace(2131296453, foodsFrag).commit();
        return true;
      }
    };
  
  static {
    Admin = false;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2131492892);
    setRequestedOrientation(1);
    ((BottomNavigationView)findViewById(2131296553)).setOnNavigationItemSelectedListener(this.navListener);
    this.mAuth = FirebaseAuth.getInstance();
    if (paramBundle == null)
      getSupportFragmentManager().beginTransaction().replace(2131296453, new NewsFrag()).commit(); 
  }
  
  public void onDialogNegativeClick(DialogFragment paramDialogFragment) {}
  
  public void onDialogPositiveClick(DialogFragment paramDialogFragment) {
    LayoutInflater.from((Context)this).inflate(2131492978, null);
  }
  
  public void onDialogPositiveClick(DialogFragment paramDialogFragment, String paramString) {
    LayoutInflater.from((Context)this).inflate(2131492913, null);
    Log.d("TAG", paramString + "adadada");
  }
  
  public void onLog(View paramView) {
    SettingsFrag.onLog(paramView);
  }
  
  public void onStart() {
    super.onStart();
    if (this.mAuth.getCurrentUser() != null)
      Logged = true; 
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\MainActivity.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */