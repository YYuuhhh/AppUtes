.class Lcom/example/theapp/FoodsFrag$2;
.super Ljava/lang/Object;
.source "FoodsFrag.java"

# interfaces
.implements Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/FoodsFrag;->buildRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/FoodsFrag;


# direct methods
.method constructor <init>(Lcom/example/theapp/FoodsFrag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/FoodsFrag;

    .line 59
    iput-object p1, p0, Lcom/example/theapp/FoodsFrag$2;->this$0:Lcom/example/theapp/FoodsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheck(Lcom/example/theapp/FoodsData;)V
    .locals 1
    .param p1, "item"    # Lcom/example/theapp/FoodsData;

    .line 62
    sget-object v0, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public onItemUncheck(Lcom/example/theapp/FoodsData;)V
    .locals 1
    .param p1, "item"    # Lcom/example/theapp/FoodsData;

    .line 67
    sget-object v0, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method
