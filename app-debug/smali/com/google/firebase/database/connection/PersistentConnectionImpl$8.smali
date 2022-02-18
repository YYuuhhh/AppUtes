.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 1219
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1223
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1225
    .local v0, "status":Ljava/lang/String;
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "d"

    if-eqz v2, :cond_0

    .line 1227
    nop

    .line 1228
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1229
    .local v2, "serverBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "w"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1231
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1232
    .local v4, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-object v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-static {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V

    .line 1236
    .end local v2    # "serverBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-virtual {v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1238
    .local v2, "currentListen":Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    if-ne v2, v4, :cond_2

    .line 1239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-virtual {v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$3000(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1241
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1242
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1600(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .end local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 1244
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1600(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v3}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_2
    :goto_0
    return-void
.end method
