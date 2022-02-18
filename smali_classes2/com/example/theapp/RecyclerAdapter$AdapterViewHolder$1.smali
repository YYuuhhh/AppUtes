.class Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;
.super Ljava/lang/Object;
.source "RecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;-><init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

.field final synthetic val$listener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    .line 36
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;->this$0:Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    iput-object p2, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;->this$0:Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    invoke-virtual {v0}, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->getAdapterPosition()I

    move-result v0

    .line 41
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;->val$listener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    invoke-interface {v1, v0, p1}, Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 45
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
