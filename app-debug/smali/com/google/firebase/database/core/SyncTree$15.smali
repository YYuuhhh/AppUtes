.class Lcom/google/firebase/database/core/SyncTree$15;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->setupListener(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Lcom/google/firebase/database/core/SyncPoint;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 892
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 892
    check-cast p2, Lcom/google/firebase/database/core/SyncPoint;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/SyncTree$15;->onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "maybeChildSyncPoint"    # Lcom/google/firebase/database/core/SyncPoint;
    .param p3, "accum"    # Ljava/lang/Void;

    .line 895
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 897
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v2, v0}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3, v0}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    .line 898
    .end local v0    # "query":Lcom/google/firebase/database/core/view/QuerySpec;
    goto :goto_1

    .line 900
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/View;

    .line 901
    .local v1, "syncPointView":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    .line 902
    .local v2, "childQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 903
    invoke-static {v4, v2}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5, v2}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v5

    .line 902
    invoke-interface {v3, v4, v5}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    .line 904
    .end local v1    # "syncPointView":Lcom/google/firebase/database/core/view/View;
    .end local v2    # "childQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    goto :goto_0

    .line 906
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
