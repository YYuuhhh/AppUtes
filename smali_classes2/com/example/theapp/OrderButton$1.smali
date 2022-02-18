.class Lcom/example/theapp/OrderButton$1;
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

    .line 50
    iput-object p1, p0, Lcom/example/theapp/OrderButton$1;->this$0:Lcom/example/theapp/OrderButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 54
    iget-object v0, p0, Lcom/example/theapp/OrderButton$1;->this$0:Lcom/example/theapp/OrderButton;

    invoke-static {v0}, Lcom/example/theapp/OrderButton;->access$000(Lcom/example/theapp/OrderButton;)Lcom/example/theapp/OrderButton$IOrderButton;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/OrderButton$1;->this$0:Lcom/example/theapp/OrderButton;

    invoke-interface {v0, v1}, Lcom/example/theapp/OrderButton$IOrderButton;->onDialogNegativeClick(Landroidx/fragment/app/DialogFragment;)V

    .line 56
    return-void
.end method
