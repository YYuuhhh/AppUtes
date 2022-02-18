package com.example.theapp;

public class NewsData {
  final int[] ImageArray = new int[] { 2131165353, 2131165354, 2131165355, 2131165356, 2131165357 };
  
  private String Info;
  
  private String TimeEnds;
  
  private String TimeStarts;
  
  private String Title;
  
  public NewsData() {}
  
  public NewsData(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.Title = paramString1;
    this.Info = paramString2;
    this.TimeStarts = paramString3;
    this.TimeEnds = paramString4;
  }
  
  public int getImage(int paramInt) {
    return this.ImageArray[paramInt];
  }
  
  public String getInfo() {
    return this.Info;
  }
  
  public String getTimeEnds() {
    return this.TimeEnds;
  }
  
  public String getTimeLeft() {
    return this.TimeStarts + "-" + this.TimeEnds;
  }
  
  public String getTimeStarts() {
    return this.TimeStarts;
  }
  
  public String getTitle() {
    return this.Title;
  }
  
  public String toString() {
    return "NewsData{Title='" + this.Title + '\'' + ", Info='" + this.Info + '\'' + ", TimeStarts='" + this.TimeStarts + '\'' + ", TimeEnds='" + this.TimeEnds + '\'' + '}';
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\NewsData.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */