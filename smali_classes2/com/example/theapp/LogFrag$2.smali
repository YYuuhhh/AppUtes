.class Lcom/example/theapp/LogFrag$2;
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

    .line 40
    iput-object p1, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 45
    iget-object v0, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v0}, Lcom/example/theapp/LogFrag;->access$100(Lcom/example/theapp/LogFrag;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v1}, Lcom/example/theapp/LogFrag;->access$200(Lcom/example/theapp/LogFrag;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "fullName":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-virtual {v2, v0}, Lcom/example/theapp/LogFrag;->validCellPhone(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Yes"

    const-string v4, "Tag"

    if-nez v2, :cond_0

    .line 49
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v2}, Lcom/example/theapp/LogFrag;->access$300(Lcom/example/theapp/LogFrag;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, "\u041d\u0435 \u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u044b\u0439 \u043d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 52
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v3}, Lcom/example/theapp/LogFrag;->access$400(Lcom/example/theapp/LogFrag;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u041f\u043e\u043b\u0435 \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043f\u0443\u0441\u0442\u044b\u043c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    if-ne v0, v2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v3}, Lcom/example/theapp/LogFrag;->access$300(Lcom/example/theapp/LogFrag;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-virtual {v3, v0}, Lcom/example/theapp/LogFrag;->validCellPhone(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v2}, Lcom/example/theapp/LogFrag;->access$000(Lcom/example/theapp/LogFrag;)Lcom/example/theapp/LogFrag$ILogFrag;

    move-result-object v2

    iget-object v3, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-interface {v2, v3, v0}, Lcom/example/theapp/LogFrag$ILogFrag;->onDialogPositiveClick(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v3

    const-string v4, "Users"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/example/theapp/LogFrag;->access$502(Lcom/example/theapp/LogFrag;Lcom/google/firebase/database/DatabaseReference;)Lcom/google/firebase/database/DatabaseReference;

    .line 59
    new-instance v2, Lcom/example/theapp/User;

    invoke-direct {v2, v0, v1}, Lcom/example/theapp/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v2, "user":Lcom/example/theapp/User;
    iget-object v3, p0, Lcom/example/theapp/LogFrag$2;->this$0:Lcom/example/theapp/LogFrag;

    invoke-static {v3}, Lcom/example/theapp/LogFrag;->access$500(Lcom/example/theapp/LogFrag;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 62
    .end local v2    # "user":Lcom/example/theapp/User;
    :cond_3
    return-void
.end method
