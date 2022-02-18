package com.example.theapp;

import java.util.List;

public class Order {
  public List<FoodsData> Order;
  
  public Order() {}
  
  public Order(List<FoodsData> paramList) {
    this.Order = paramList;
  }
  
  public List<FoodsData> getOrder() {
    return this.Order;
  }
  
  public String toString() {
    return this.Order.toString();
  }
}


/* Location:              C:\Users\Самсунг\Desktop\prprpr\dex-tools-2.1\classes2-dex2jar.jar!\com\example\theapp\Order.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */