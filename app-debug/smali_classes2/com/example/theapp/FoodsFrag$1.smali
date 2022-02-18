.class Lcom/example/theapp/FoodsFrag$1;
.super Ljava/lang/Object;
.source "FoodsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/FoodsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 43
    iput-object p1, p0, Lcom/example/theapp/FoodsFrag$1;->this$0:Lcom/example/theapp/FoodsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 46
    invoke-static {}, Lcom/example/theapp/FoodsFrag;->access$000()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 47
    .local v0, "manager":Landroidx/fragment/app/FragmentManager;
    new-instance v1, Lcom/example/theapp/OrderButton;

    invoke-direct {v1}, Lcom/example/theapp/OrderButton;-><init>()V

    .line 48
    .local v1, "orderbutton":Lcom/example/theapp/OrderButton;
    iget-object v2, p0, Lcom/example/theapp/FoodsFrag$1;->this$0:Lcom/example/theapp/FoodsFrag;

    invoke-static {v2}, Lcom/example/theapp/FoodsFrag;->access$100(Lcom/example/theapp/FoodsFrag;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v3, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string v2, "Dialog"

    invoke-virtual {v1, v0, v2}, Lcom/example/theapp/OrderButton;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    return-void
.end method
