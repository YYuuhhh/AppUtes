package com.example.theapp;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.fragment.app.DialogFragment;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class LogFrag extends AppCompatDialogFragment {
  private DatabaseReference DataBase;
  
  private TextView ErrorNam;
  
  private TextView ErrorNum;
  
  private ILogFrag LogFrag;
  
  private EditText fullname;
  
  private EditText phonenumber;
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.LogFrag = (ILogFrag)paramActivity;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)getActivity());
    builder.setTitle("Вход в аккаунт");
    LayoutInflater layoutInflater = getActivity().getLayoutInflater();
    layoutInflater.inflate(2131492913, null);
    builder.setView(layoutInflater.inflate(2131492913, null)).setPositiveButton("Продолжить", new DialogInterface.OnClickListener() {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            String str1 = LogFrag.this.phonenumber.getText().toString();
            String str2 = LogFrag.this.fullname.getText().toString();
            if (!LogFrag.this.validCellPhone(str1))
              Log.d("Tag", "Yes"); 
            LogFrag.this.ErrorNum.setText("Не корректный номер телефона");
            if (str2 == "")
              Log.d("Tag", "Yes"); 
            LogFrag.this.ErrorNam.setText("Поле не может быть пустым");
            if (str1 == "")
              LogFrag.this.ErrorNum.setText("Поле не может быть пустым"); 
            if (LogFrag.this.validCellPhone(str1) && str2 != "") {
              LogFrag.this.LogFrag.onDialogPositiveClick((DialogFragment)LogFrag.this, str1);
              LogFrag.access$502(LogFrag.this, FirebaseDatabase.getInstance().getReference("Users"));
              User user = new User(str1, str2);
              LogFrag.this.DataBase.push().setValue(user);
            } 
          }
        }).setNegativeButton("Отменить", new DialogInterface.OnClickListener() {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            LogFrag.this.LogFrag.onDialogNegativeClick((DialogFragment)LogFrag.this);
          }
        });
    return (Dialog)builder.create();
  }
  
  public void onResume() {
    super.onResume();
    this.phonenumber = (EditText)getDialog().findViewById(2131296580);
    this.fullname = (EditText)getDialog().findViewById(2131296454);
    this.ErrorNum = (TextView)getDialog().findViewById(2131296263);
    this.ErrorNam = (TextView)getDialog().findViewById(2131296262);
  }
  
  public boolean validCellPhone(String paramString) {
    return Patterns.PHONE.matcher(paramString).matches();
  }
  
  public static interface ILogFrag {
    void onDialogNegativeClick(DialogFragment param1DialogFragment);
    
    void onDialogPositiveClick(DialogFragment param1DialogFragment, String param1String);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\LogFrag.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */