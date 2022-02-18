.class Lcom/example/theapp/LogFrag$1;
.super Ljava/lang/Object;
.source "LogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/theapp/LogFrag;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/LogFrag;


# direct methods
.method constructor <init>(Lcom/example/theapp/LogFrag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/LogFrag;

    .line 64
    iput-object p1, p0, Lcom/example/theapp/LogFrag$1;->this$0:Lcom/example/theapp/LogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 68
    iget-object v0, p0, Lcom/example/theapp/LogFrag$1;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v0}, Lcom/example/theapp/LogFrag;->access$000(Lcom/example/theapp/LogFrag;)Lcom/example/theapp/LogFrag$ILogFrag;

    move-result-object v0

    iget-object v1, p0, Lcom/example/theapp/LogFrag$1;->this$0:Lcom/example/theapp/LogFrag;

    invoke-interface {v0, v1}, Lcom/example/theapp/LogFrag$ILogFrag;->onDialogNegativeClick(Landroidx/fragment/app/DialogFragment;)V

    .line 70
    return-void
.end method
