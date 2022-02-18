.class public Lcom/example/theapp/FoodsFrag;
.super Landroidx/fragment/app/Fragment;
.source "FoodsFrag.java"


# static fields
.field public static Adapterer:Lcom/example/theapp/RecyclerAdapterFoods;

.field private static myContext:Landroidx/fragment/app/FragmentActivity;


# instance fields
.field private Foods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation
.end field

.field private Newses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private OrderList:Landroid/widget/TextView;

.field private TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private button:Landroid/widget/Button;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 22
    sget-object v0, Lcom/example/theapp/FoodsFrag;->myContext:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/theapp/FoodsFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/FoodsFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/FoodsFrag;->OrderList:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public buildRecyclerView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 56
    const v0, 0x7f09014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/example/theapp/FoodsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/example/theapp/FoodsFrag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/theapp/FoodsFrag;->TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    new-instance v0, Lcom/example/theapp/RecyclerAdapterFoods;

    new-instance v1, Lcom/example/theapp/FoodsFrag$2;

    invoke-direct {v1, p0}, Lcom/example/theapp/FoodsFrag$2;-><init>(Lcom/example/theapp/FoodsFrag;)V

    iget-object v2, p0, Lcom/example/theapp/FoodsFrag;->Foods:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/example/theapp/RecyclerAdapterFoods;-><init>(Lcom/example/theapp/RecyclerAdapterFoods$OnItemCheckListener;Ljava/util/ArrayList;)V

    sput-object v0, Lcom/example/theapp/FoodsFrag;->Adapterer:Lcom/example/theapp/RecyclerAdapterFoods;

    .line 71
    iget-object v1, p0, Lcom/example/theapp/FoodsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    iget-object v0, p0, Lcom/example/theapp/FoodsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/example/theapp/FoodsFrag;->TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    sget-object v0, Lcom/example/theapp/FoodsFrag;->Adapterer:Lcom/example/theapp/RecyclerAdapterFoods;

    new-instance v1, Lcom/example/theapp/FoodsFrag$3;

    invoke-direct {v1, p0}, Lcom/example/theapp/FoodsFrag$3;-><init>(Lcom/example/theapp/FoodsFrag;)V

    invoke-virtual {v0, v1}, Lcom/example/theapp/RecyclerAdapterFoods;->setOnItemClickListener(Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f0c0072

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view1":Landroid/view/View;
    sget-object v2, Lcom/example/theapp/SplashScreen;->Foods:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/example/theapp/FoodsFrag;->Foods:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    sput-object v2, Lcom/example/theapp/FoodsFrag;->myContext:Landroidx/fragment/app/FragmentActivity;

    .line 40
    invoke-virtual {p0, v0}, Lcom/example/theapp/FoodsFrag;->buildRecyclerView(Landroid/view/View;)V

    .line 41
    const v2, 0x7f090005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/theapp/FoodsFrag;->button:Landroid/widget/Button;

    .line 42
    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/example/theapp/FoodsFrag;->OrderList:Landroid/widget/TextView;

    .line 43
    iget-object v2, p0, Lcom/example/theapp/FoodsFrag;->button:Landroid/widget/Button;

    new-instance v3, Lcom/example/theapp/FoodsFrag$1;

    invoke-direct {v3, p0}, Lcom/example/theapp/FoodsFrag$1;-><init>(Lcom/example/theapp/FoodsFrag;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-object v0
.end method
