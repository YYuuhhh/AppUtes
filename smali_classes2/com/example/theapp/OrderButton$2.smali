.class Lcom/example/theapp/OrderButton$2;
.super Ljava/lang/Object;
.source "OrderButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/OrderButton;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/OrderButton;


# direct methods
.method constructor <init>(Lcom/example/theapp/OrderButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/OrderButton;

    .line 39
    iput-object p1, p0, Lcom/example/theapp/OrderButton$2;->this$0:Lcom/example/theapp/OrderButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 43
    iget-object v0, p0, Lcom/example/theapp/OrderButton$2;->this$0:Lcom/example/theapp/OrderButton;

    invoke-static {v0}, Lcom/example/theapp/OrderButton;->access$000(Lcom/example/theapp/OrderButton;)Lcom/example/theapp/OrderButton$IOrderButton;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/OrderButton$2;->this$0:Lcom/example/theapp/OrderButton;

    invoke-interface {v0, v1}, Lcom/example/theapp/OrderButton$IOrderButton;->onDialogPositiveClick(Landroidx/fragment/app/DialogFragment;)V

    .line 44
    iget-object v0, p0, Lcom/example/theapp/OrderButton$2;->this$0:Lcom/example/theapp/OrderButton;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    const-string v2, "Orders"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/theapp/OrderButton;->access$102(Lcom/example/theapp/OrderButton;Lcom/google/firebase/database/DatabaseReference;)Lcom/google/firebase/database/DatabaseReference;

    .line 45
    new-instance v0, Lcom/example/theapp/Order;

    sget-object v1, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/example/theapp/Order;-><init>(Ljava/util/List;)V

    .line 46
    .local v0, "order":Lcom/example/theapp/Order;
    iget-object v1, p0, Lcom/example/theapp/OrderButton$2;->this$0:Lcom/example/theapp/OrderButton;

    invoke-static {v1}, Lcom/example/theapp/OrderButton;->access$100(Lcom/example/theapp/OrderButton;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/example/theapp/Order;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 48
    return-void
.end method
