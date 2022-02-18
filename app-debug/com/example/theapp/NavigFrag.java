package com.example.theapp;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

public class NavigFrag extends Fragment {
  private static final String ARG_PARAM1 = "param1";
  
  private static final String ARG_PARAM2 = "param2";
  
  private String mParam1;
  
  private String mParam2;
  
  public static NavigFrag newInstance(String paramString1, String paramString2) {
    NavigFrag navigFrag = new NavigFrag();
    Bundle bundle = new Bundle();
    bundle.putString("param1", paramString1);
    bundle.putString("param2", paramString2);
    navigFrag.setArguments(bundle);
    return navigFrag;
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      this.mParam1 = getArguments().getString("param1");
      this.mParam2 = getArguments().getString("param2");
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    return paramLayoutInflater.inflate(2131492916, paramViewGroup, false);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\NavigFrag.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */