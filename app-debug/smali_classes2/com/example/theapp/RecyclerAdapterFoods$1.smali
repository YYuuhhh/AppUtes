.class Lcom/example/theapp/RecyclerAdapterFoods$1;
.super Ljava/lang/Object;
.source "RecyclerAdapterFoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/RecyclerAdapterFoods;->onBindViewHolder(Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final currentItem:Lcom/example/theapp/FoodsData;

.field final synthetic this$0:Lcom/example/theapp/RecyclerAdapterFoods;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/example/theapp/RecyclerAdapterFoods;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/example/theapp/RecyclerAdapterFoods;

    .line 90
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->this$0:Lcom/example/theapp/RecyclerAdapterFoods;

    iput p2, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/example/theapp/RecyclerAdapterFoods;->access$000(Lcom/example/theapp/RecyclerAdapterFoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/example/theapp/FoodsData;

    iput-object p2, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->currentItem:Lcom/example/theapp/FoodsData;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 94
    sget-object v0, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    iget-object v1, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->currentItem:Lcom/example/theapp/FoodsData;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->this$0:Lcom/example/theapp/RecyclerAdapterFoods;

    invoke-static {v0}, Lcom/example/theapp/RecyclerAdapterFoods;->access$100(Lcom/example/theapp/RecyclerAdapterFoods;)Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->currentItem:Lcom/example/theapp/FoodsData;

    invoke-interface {v0, v1}, Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;->onItemUncheck(Lcom/example/theapp/FoodsData;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->this$0:Lcom/example/theapp/RecyclerAdapterFoods;

    invoke-static {v0}, Lcom/example/theapp/RecyclerAdapterFoods;->access$100(Lcom/example/theapp/RecyclerAdapterFoods;)Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/RecyclerAdapterFoods$1;->currentItem:Lcom/example/theapp/FoodsData;

    invoke-interface {v0, v1}, Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;->onItemCheck(Lcom/example/theapp/FoodsData;)V

    .line 98
    :goto_0
    return-void
.end method
