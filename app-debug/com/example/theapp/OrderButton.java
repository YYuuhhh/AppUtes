package com.example.theapp;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.fragment.app.DialogFragment;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class OrderButton extends AppCompatDialogFragment {
  private DatabaseReference DataBase;
  
  private TextView ErrorNam;
  
  private IOrderButton OrderButton;
  
  private TextView OrderList;
  
  private EditText fullname;
  
  private EditText phonenumber;
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.OrderButton = (IOrderButton)paramActivity;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)getActivity());
    LayoutInflater layoutInflater = getActivity().getLayoutInflater();
    layoutInflater.inflate(2131492978, null);
    builder.setView(layoutInflater.inflate(2131492978, null)).setPositiveButton("Сделать заказ", new DialogInterface.OnClickListener() {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            OrderButton.this.OrderButton.onDialogPositiveClick((DialogFragment)OrderButton.this);
            OrderButton.access$102(OrderButton.this, FirebaseDatabase.getInstance().getReference("Orders"));
            Order order = new Order(RecyclerAdapterFoods.currentSelectedItems);
            OrderButton.this.DataBase.push().setValue(order.toString());
          }
        }).setNegativeButton("Отменить", new DialogInterface.OnClickListener() {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            OrderButton.this.OrderButton.onDialogNegativeClick((DialogFragment)OrderButton.this);
          }
        });
    Log.d("TAG", RecyclerAdapterFoods.currentSelectedItems.toString());
    return (Dialog)builder.create();
  }
  
  public void onResume() {
    super.onResume();
  }
  
  public static interface IOrderButton {
    void onDialogNegativeClick(DialogFragment param1DialogFragment);
    
    void onDialogPositiveClick(DialogFragment param1DialogFragment);
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\OrderButton.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */