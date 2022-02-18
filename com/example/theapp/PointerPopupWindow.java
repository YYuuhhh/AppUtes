package com.example.theapp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

public class PointerPopupWindow extends PopupWindow {
  private AlignMode mAlignMode = AlignMode.DEFAULT;
  
  private ImageView mAnchorImage;
  
  private LinearLayout mContainer;
  
  private FrameLayout mContent;
  
  private int mMarginScreen;
  
  public PointerPopupWindow(Context paramContext, int paramInt) {
    this(paramContext, paramInt, -2);
  }
  
  public PointerPopupWindow(Context paramContext, int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
    if (paramInt1 >= 0) {
      LinearLayout linearLayout = new LinearLayout(paramContext);
      this.mContainer = linearLayout;
      linearLayout.setOrientation(1);
      this.mAnchorImage = new ImageView(paramContext);
      this.mContent = new FrameLayout(paramContext);
      setBackgroundDrawable((Drawable)new ColorDrawable());
      setOutsideTouchable(true);
      setFocusable(true);
      return;
    } 
    throw new RuntimeException("WidthError");
  }
  
  private void computePointerLocation(View paramView, int paramInt) {
    int i = paramView.getWidth();
    int j = this.mAnchorImage.getDrawable().getIntrinsicWidth();
    this.mAnchorImage.setPadding((i - j) / 2 - paramInt, 0, 0, 0);
  }
  
  public AlignMode getAlignMode() {
    return this.mAlignMode;
  }
  
  public int getMarginScreen() {
    return this.mMarginScreen;
  }
  
  public AlignMode getOffsetMode() {
    return this.mAlignMode;
  }
  
  public void setAlignMode(AlignMode paramAlignMode) {
    this.mAlignMode = paramAlignMode;
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    this.mContent.setBackgroundDrawable(paramDrawable);
    super.setBackgroundDrawable((Drawable)new ColorDrawable());
  }
  
  public void setClippingEnabled(boolean paramBoolean) {
    super.setClippingEnabled(paramBoolean);
  }
  
  public void setContentView(View paramView) {
    if (paramView != null) {
      this.mContainer.removeAllViews();
      this.mContainer.addView((View)this.mAnchorImage, -2, -2);
      this.mContainer.addView((View)this.mContent, -1, -1);
      this.mContent.addView(paramView, -1, -1);
      super.setContentView((View)this.mContainer);
    } 
  }
  
  public void setMarginScreen(int paramInt) {
    this.mMarginScreen = paramInt;
  }
  
  public void setOffsetMode(AlignMode paramAlignMode) {
    this.mAlignMode = paramAlignMode;
  }
  
  public void setPointerImageBitmap(Bitmap paramBitmap) {
    this.mAnchorImage.setImageBitmap(paramBitmap);
  }
  
  public void setPointerImageDrawable(Drawable paramDrawable) {
    this.mAnchorImage.setImageDrawable(paramDrawable);
  }
  
  public void setPointerImageRes(int paramInt) {
    this.mAnchorImage.setImageResource(paramInt);
  }
  
  public void showAsPointer(View paramView) {
    showAsPointer(paramView, 0, 0);
  }
  
  public void showAsPointer(View paramView, int paramInt) {
    showAsPointer(paramView, 0, paramInt);
  }
  
  public void showAsPointer(View paramView, int paramInt1, int paramInt2) {
    Rect rect = new Rect();
    paramView.getWindowVisibleDisplayFrame(rect);
    int i = rect.right - rect.left;
    int[] arrayOfInt = new int[2];
    paramView.getLocationInWindow(arrayOfInt);
    if (this.mAlignMode == AlignMode.AUTO_OFFSET) {
      float f = (rect.centerX() - arrayOfInt[0]) / i;
      paramInt1 = (int)(((paramView.getWidth() - getWidth()) / 2) + getWidth() * f / 2.0F);
    } else {
      AlignMode alignMode1 = this.mAlignMode;
      AlignMode alignMode2 = AlignMode.AUTO_OFFSET;
      if (alignMode1 == AlignMode.CENTER_FIX)
        paramInt1 = (paramView.getWidth() - getWidth()) / 2; 
    } 
    int j = arrayOfInt[0] + paramInt1;
    int k = getWidth();
    int m = this.mMarginScreen;
    if (k + j > i - m)
      paramInt1 = i - m - getWidth() - arrayOfInt[0]; 
    if (j < rect.left + this.mMarginScreen)
      paramInt1 = rect.left + this.mMarginScreen - arrayOfInt[0]; 
    computePointerLocation(paramView, paramInt1);
    showAsDropDown(paramView, paramInt1, paramInt2);
  }
  
  public enum AlignMode {
    AUTO_OFFSET, CENTER_FIX, DEFAULT;
    
    static {
      AlignMode alignMode1 = new AlignMode("DEFAULT", 0);
      DEFAULT = alignMode1;
      AlignMode alignMode2 = new AlignMode("CENTER_FIX", 1);
      CENTER_FIX = alignMode2;
      AlignMode alignMode3 = new AlignMode("AUTO_OFFSET", 2);
      AUTO_OFFSET = alignMode3;
      $VALUES = new AlignMode[] { alignMode1, alignMode2, alignMode3 };
    }
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\PointerPopupWindow.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */