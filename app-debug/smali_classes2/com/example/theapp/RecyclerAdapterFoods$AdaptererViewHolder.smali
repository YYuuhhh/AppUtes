.class public Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerAdapterFoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/theapp/RecyclerAdapterFoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptererViewHolder"
.end annotation


# static fields
.field public static checkBoxFoods:Landroid/widget/CheckBox;


# instance fields
.field public ImageFoods:Landroid/widget/ImageView;

.field public PriceFoods:Landroid/widget/TextView;

.field public TitleFoods:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->ImageFoods:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->TitleFoods:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->PriceFoods:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f090077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->checkBoxFoods:Landroid/widget/CheckBox;

    .line 45
    new-instance v1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder$1;-><init>(Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 58
    sget-object v0, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->checkBoxFoods:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
