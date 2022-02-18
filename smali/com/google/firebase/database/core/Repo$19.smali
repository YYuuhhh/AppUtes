.class Lcom/google/firebase/database/core/Repo$19;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Repo$TransactionData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 1282
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$19;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$19;->val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1285
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$19;->this$0:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$19;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$19;->val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1288
    invoke-static {v3}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$19;->val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1289
    invoke-static {v4}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 1285
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 1290
    return-void
.end method
