.class Lcom/example/theapp/FoodsFrag$3;
.super Ljava/lang/Object;
.source "FoodsFrag.java"

# interfaces
.implements Lcom/example/theapp/RecyclerAdapterFoods$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/FoodsFrag;->buildRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/FoodsFrag;


# direct methods
.method constructor <init>(Lcom/example/theapp/FoodsFrag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/FoodsFrag;

    .line 73
    iput-object p1, p0, Lcom/example/theapp/FoodsFrag$3;->this$0:Lcom/example/theapp/FoodsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 78
    return-void
.end method
