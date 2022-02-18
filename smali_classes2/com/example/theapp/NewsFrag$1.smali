.class Lcom/example/theapp/NewsFrag$1;
.super Ljava/lang/Object;
.source "NewsFrag.java"

# interfaces
.implements Lcom/example/theapp/RecyclerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/NewsFrag;->buildRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/NewsFrag;


# direct methods
.method constructor <init>(Lcom/example/theapp/NewsFrag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/NewsFrag;

    .line 55
    iput-object p1, p0, Lcom/example/theapp/NewsFrag$1;->this$0:Lcom/example/theapp/NewsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/example/theapp/NewsFrag$1;->this$0:Lcom/example/theapp/NewsFrag;

    invoke-static {v0}, Lcom/example/theapp/NewsFrag;->access$000(Lcom/example/theapp/NewsFrag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/theapp/NewsData;

    invoke-virtual {v0, v1}, Lcom/example/theapp/NewsFrag;->create(Lcom/example/theapp/NewsData;)Lcom/example/theapp/PointerPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/example/theapp/PointerPopupWindow;->showAsPointer(Landroid/view/View;)V

    .line 59
    return-void
.end method
