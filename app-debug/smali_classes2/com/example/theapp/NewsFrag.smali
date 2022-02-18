.class public Lcom/example/theapp/NewsFrag;
.super Landroidx/fragment/app/Fragment;
.source "NewsFrag.java"


# static fields
.field public static Adapter:Lcom/example/theapp/RecyclerAdapter;


# instance fields
.field private Newses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private OldNewses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/theapp/NewsFrag;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/NewsFrag;

    .line 18
    iget-object v0, p0, Lcom/example/theapp/NewsFrag;->Newses:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public buildRecyclerView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 47
    const v0, 0x7f09014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/example/theapp/NewsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 49
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/example/theapp/NewsFrag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/theapp/NewsFrag;->TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 50
    new-instance v0, Lcom/example/theapp/RecyclerAdapter;

    iget-object v1, p0, Lcom/example/theapp/NewsFrag;->Newses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/example/theapp/RecyclerAdapter;-><init>(Ljava/util/ArrayList;)V

    sput-object v0, Lcom/example/theapp/NewsFrag;->Adapter:Lcom/example/theapp/RecyclerAdapter;

    .line 52
    iget-object v1, p0, Lcom/example/theapp/NewsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lcom/example/theapp/NewsFrag;->TRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/example/theapp/NewsFrag;->TLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    sget-object v0, Lcom/example/theapp/NewsFrag;->Adapter:Lcom/example/theapp/RecyclerAdapter;

    new-instance v1, Lcom/example/theapp/NewsFrag$1;

    invoke-direct {v1, p0}, Lcom/example/theapp/NewsFrag$1;-><init>(Lcom/example/theapp/NewsFrag;)V

    invoke-virtual {v0, v1}, Lcom/example/theapp/RecyclerAdapter;->setOnItemClickListener(Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method public create(Lcom/example/theapp/NewsData;)Lcom/example/theapp/PointerPopupWindow;
    .locals 4
    .param p1, "Info"    # Lcom/example/theapp/NewsData;

    .line 35
    new-instance v0, Lcom/example/theapp/PointerPopupWindow;

    invoke-virtual {p0}, Lcom/example/theapp/NewsFrag;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/theapp/NewsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/example/theapp/PointerPopupWindow;-><init>(Landroid/content/Context;I)V

    .line 36
    .local v0, "p":Lcom/example/theapp/PointerPopupWindow;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/example/theapp/NewsFrag;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    invoke-virtual {p1}, Lcom/example/theapp/NewsData;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/example/theapp/PointerPopupWindow;->setContentView(Landroid/view/View;)V

    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x4ceeeded

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/example/theapp/PointerPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v2, 0x7f07008e

    invoke-virtual {v0, v2}, Lcom/example/theapp/PointerPopupWindow;->setPointerImageRes(I)V

    .line 44
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lcom/example/theapp/SplashScreen;->OldNewses:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/example/theapp/NewsFrag;->OldNewses:Ljava/util/ArrayList;

    .line 30
    sget-object v1, Lcom/example/theapp/SplashScreen;->Newses:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/example/theapp/NewsFrag;->Newses:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0, v0}, Lcom/example/theapp/NewsFrag;->buildRecyclerView(Landroid/view/View;)V

    .line 32
    return-object v0
.end method
