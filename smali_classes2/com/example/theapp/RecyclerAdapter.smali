.class public Lcom/example/theapp/RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;,
        Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private ClickListener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

.field private TheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "newses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/example/theapp/NewsData;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapter;->TheList:Ljava/util/ArrayList;

    .line 51
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapter;->TheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/theapp/RecyclerAdapter;->onBindViewHolder(Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;
    .param p2, "position"    # I

    .line 60
    iget-object v0, p0, Lcom/example/theapp/RecyclerAdapter;->TheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/theapp/NewsData;

    .line 61
    .local v0, "currentCard":Lcom/example/theapp/NewsData;
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->Image:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Lcom/example/theapp/NewsData;->getImage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->Title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/theapp/NewsData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p1, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;->TimeLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/theapp/NewsData;->getTimeLeft()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/example/theapp/RecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;

    iget-object v2, p0, Lcom/example/theapp/RecyclerAdapter;->ClickListener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    invoke-direct {v1, v0, v2}, Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;-><init>(Landroid/view/View;Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V

    .line 56
    .local v1, "AdVH":Lcom/example/theapp/RecyclerAdapter$AdapterViewHolder;
    return-object v1
.end method

.method public setOnItemClickListener(Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    .line 23
    iput-object p1, p0, Lcom/example/theapp/RecyclerAdapter;->ClickListener:Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;

    .line 24
    return-void
.end method
