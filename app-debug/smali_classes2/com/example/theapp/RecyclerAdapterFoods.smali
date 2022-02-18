.class public Lcom/example/theapp/RecyclerAdapterFoods;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapterFoods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;,
        Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;,
        Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static currentSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ClickListenerer:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

.field private TheListFoods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClick:Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "onItemCheckListener"    # Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;",
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/FoodsData;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "foods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/example/theapp/FoodsData;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/example/theapp/RecyclerAdapterFoods;->TheListFoods:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapterFoods;->onItemClick:Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/FoodsData;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "foods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/example/theapp/FoodsData;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapterFoods;->TheListFoods:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/example/theapp/RecyclerAdapterFoods;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/RecyclerAdapterFoods;

    .line 16
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods;->TheListFoods:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/theapp/RecyclerAdapterFoods;)Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/RecyclerAdapterFoods;

    .line 16
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods;->onItemClick:Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods;->TheListFoods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/theapp/RecyclerAdapterFoods;->onBindViewHolder(Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;
    .param p2, "position"    # I

    .line 76
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapterFoods;->TheListFoods:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/theapp/FoodsData;

    .line 77
    .local v0, "currentCard":Lcom/example/theapp/FoodsData;
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->TitleFoods:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->PriceFoods:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->ImageFoods:Landroid/widget/ImageView;

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sandwich"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->ImageFoods:Landroid/widget/ImageView;

    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "salad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->ImageFoods:Landroid/widget/ImageView;

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :cond_2
    invoke-virtual {v0}, Lcom/example/theapp/FoodsData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pasta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->ImageFoods:Landroid/widget/ImageView;

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_3
    instance-of v1, p1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    if-eqz v1, :cond_4

    .line 90
    new-instance v1, Lcom/example/theapp/RecyclerAdapterFoods$1;

    invoke-direct {v1, p0, p2}, Lcom/example/theapp/RecyclerAdapterFoods$1;-><init>(Lcom/example/theapp/RecyclerAdapterFoods;I)V

    invoke-virtual {p1, v1}, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/example/theapp/RecyclerAdapterFoods;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;

    iget-object v2, p0, Lcom/example/theapp/RecyclerAdapterFoods;->ClickListenerer:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    invoke-direct {v1, v0, v2}, Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;-><init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V

    .line 72
    .local v1, "AdVH":Lcom/example/theapp/RecyclerAdapterFoods$AdaptererViewHolder;
    return-object v1
.end method

.method public setOnItemClickListener(Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    .line 31
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapterFoods;->ClickListenerer:Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;

    .line 32
    return-void
.end method
