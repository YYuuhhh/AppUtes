.class public Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/theapp/RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field public Image:Landroid/widget/ImageView;

.field public TimeLeft:Landroid/widget/TextView;

.field public Title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->Image:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f09001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->Title:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->TimeLeft:Landroid/widget/TextView;

    .line 36
    new-instance v0, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder$1;-><init>(Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
