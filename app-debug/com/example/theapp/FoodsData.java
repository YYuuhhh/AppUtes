package com.example.theapp;

public class FoodsData {
  private int Image;
  
  private String Price;
  
  private String Title;
  
  private String Type;
  
  private boolean isSelected;
  
  public FoodsData() {}
  
  public FoodsData(String paramString1, String paramString2, String paramString3) {
    this.Title = paramString1;
    this.Type = paramString2;
    this.Price = paramString3;
  }
  
  public int getImage() {
    return this.Image;
  }
  
  public String getPrice() {
    return this.Price;
  }
  
  public void getSelected() {
    this.isSelected = true;
  }
  
  public String getTitle() {
    return this.Title;
  }
  
  public String getType() {
    return this.Type;
  }
  
  public void getnotSelected() {
    this.isSelected = false;
  }
  
  public void setImage(int paramInt) {
    this.Image = paramInt;
  }
  
  public String toString() {
    return this.Title + " " + this.Price;
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\FoodsData.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */