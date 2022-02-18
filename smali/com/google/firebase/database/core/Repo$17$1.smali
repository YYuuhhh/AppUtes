.class Lcom/google/firebase/database/core/Repo$17$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo$17;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/core/Repo$17;

.field final synthetic val$snap:Lcom/google/firebase/database/DataSnapshot;

.field final synthetic val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo$17;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/database/core/Repo$17;

    .line 1082
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$17$1;->this$1:Lcom/google/firebase/database/core/Repo$17;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$17$1;->val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$17$1;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1085
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$17$1;->val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$17$1;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    .line 1086
    return-void
.end method
