.class Lcom/google/firebase/database/core/SyncTree$14;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$cancelError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 671
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 676
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    iget-object v2, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v2}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/SyncPoint;

    .line 677
    .local v2, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v3, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-eqz v2, :cond_11

    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 683
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_e

    .line 686
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v5, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v6, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    .line 687
    invoke-virtual {v2, v4, v5, v6}, Lcom/google/firebase/database/core/SyncPoint;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v4

    .line 688
    .local v4, "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    invoke-virtual {v2}, Lcom/google/firebase/database/core/SyncPoint;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    iget-object v5, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/firebase/database/core/SyncTree;->access$702(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 691
    :cond_2
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 692
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 699
    const/4 v6, 0x0

    .line 700
    .local v6, "removingDefault":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 701
    .local v8, "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v11, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v11}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v11

    iget-object v12, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-interface {v11, v12}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 702
    if-nez v6, :cond_4

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 703
    .end local v8    # "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    goto :goto_1

    .line 704
    :cond_5
    iget-object v7, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v7}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 705
    .local v7, "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    nop

    .line 706
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 707
    .local v8, "covered":Z
    :goto_4
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 708
    .local v12, "component":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v7, v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 709
    if-nez v8, :cond_8

    .line 711
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 712
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v13}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v13, 0x1

    :goto_7
    move v8, v13

    .line 713
    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 714
    goto :goto_8

    .line 716
    .end local v12    # "component":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_9
    goto :goto_5

    .line 718
    :cond_a
    :goto_8
    if-eqz v6, :cond_d

    if-nez v8, :cond_d

    .line 719
    iget-object v11, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v11}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v11

    .line 722
    .local v11, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual {v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    .line 724
    iget-object v12, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v12, v11}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v12

    .line 727
    .local v12, "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/database/core/view/View;

    .line 728
    .local v14, "view":Lcom/google/firebase/database/core/view/View;
    new-instance v15, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    iget-object v9, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {v15, v9, v14}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    move-object v9, v15

    .line 729
    .local v9, "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    invoke-virtual {v14}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v15

    .line 730
    .local v15, "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v10, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v10}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v10

    move-object/from16 v16, v1

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .local v16, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 731
    invoke-static {v1, v15}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    move-object/from16 v17, v2

    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .local v17, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    invoke-static {v9}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->access$1400(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;

    move-result-object v2

    .line 730
    invoke-interface {v10, v1, v2, v9, v9}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    .line 732
    .end local v9    # "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    .end local v14    # "view":Lcom/google/firebase/database/core/view/View;
    .end local v15    # "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_9

    .line 727
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_b
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    goto :goto_a

    .line 722
    .end local v12    # "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    goto :goto_a

    .line 718
    .end local v11    # "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_d
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 742
    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :goto_a
    if-nez v8, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    if-nez v1, :cond_10

    .line 746
    if-eqz v6, :cond_e

    .line 747
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v9, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v2, v9}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_d

    .line 749
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 750
    .local v2, "queryToRemove":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v9, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v9, v2}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v9

    .line 751
    .local v9, "tag":Lcom/google/firebase/database/core/Tag;
    if-eqz v9, :cond_f

    const/4 v10, 0x1

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    :goto_c
    invoke-static {v10}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 752
    iget-object v10, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v10}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v10

    iget-object v11, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v11, v2}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    .line 753
    .end local v2    # "queryToRemove":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v9    # "tag":Lcom/google/firebase/database/core/Tag;
    goto :goto_b

    .line 757
    :cond_10
    :goto_d
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1, v5}, Lcom/google/firebase/database/core/SyncTree;->access$1600(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V

    goto :goto_e

    .line 682
    .end local v4    # "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    .end local v6    # "removingDefault":Z
    .end local v7    # "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v8    # "covered":Z
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .local v2, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_11
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 761
    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :goto_e
    return-object v3
.end method
