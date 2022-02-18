.class Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;
.super Ljava/lang/Object;
.source "RecyclerAdapterFoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;-><init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

.field final synthetic val$listener:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    .line 45
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;->this$0:Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    iput-object p2, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;->this$0:Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    invoke-virtual {v0}, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->getAdapterPosition()I

    move-result v0

    .line 50
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    invoke-interface {v1, v0, p1}, Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 54
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
