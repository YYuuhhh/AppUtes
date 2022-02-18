.class Lcom/google/firebase/database/DatabaseReference$3;
.super Ljava/lang/Object;
.source "DatabaseReference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseReference;->updateChildrenInternal(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$bouncedUpdate:Ljava/util/Map;

.field final synthetic val$merge:Lcom/google/firebase/database/core/CompoundWrite;

.field final synthetic val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/utilities/Pair;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/DatabaseReference;

    .line 419
    iput-object p1, p0, Lcom/google/firebase/database/DatabaseReference$3;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$merge:Lcom/google/firebase/database/core/CompoundWrite;

    iput-object p3, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    iput-object p4, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$bouncedUpdate:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference$3;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference$3;->this$0:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$merge:Lcom/google/firebase/database/core/CompoundWrite;

    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/DatabaseReference$3;->val$bouncedUpdate:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/core/Repo;->updateChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    .line 423
    return-void
.end method
