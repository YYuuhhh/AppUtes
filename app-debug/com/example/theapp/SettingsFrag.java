package com.example.theapp;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;

public class SettingsFrag extends Fragment {
  private static FragmentActivity myContext;
  
  public static void onLog(View paramView) {
    FragmentManager fragmentManager = myContext.getSupportFragmentManager();
    (new LogFrag()).show(fragmentManager, "Dialog");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    paramLayoutInflater.inflate(2131492919, null);
    myContext = (FragmentActivity)paramViewGroup.getContext();
    return paramLayoutInflater.inflate(2131492919, paramViewGroup, false);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\SettingsFrag.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */