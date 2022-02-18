.class abstract Lcz/msebera/android/httpclient/pool/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lcz/msebera/android/httpclient/pool/PoolEntry<",
        "TT;TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/concurrent/Future<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    .line 51
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "conn":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->createEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v0

    .line 126
    .local v0, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v0
.end method

.method protected abstract createEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation
.end method

.method public free(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V
    .locals 2
    .param p2, "reusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    const-string v0, "Pool entry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    .local v0, "found":Z
    const-string v1, "Entry %s has not been leased from this pool"

    invoke-static {v0, v1, p1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 122
    :cond_0
    return-void
.end method

.method public getAllocatedCount()I
    .locals 2

    .line 72
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAvailableCount()I
    .locals 1

    .line 68
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getFree(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 3
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 81
    .local v1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 83
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v1

    .line 86
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    :cond_0
    goto :goto_0

    .line 88
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 91
    .restart local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v1

    .line 96
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    :cond_2
    goto :goto_1

    .line 98
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUsed()Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/PoolEntry;

    :goto_0
    return-object v0
.end method

.method public getLeasedCount()I
    .locals 1

    .line 60
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getPendingCount()I
    .locals 1

    .line 64
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public nextPending()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TE;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public queue(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TE;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    if-nez p1, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public remove(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    const-string v0, "Pool entry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 3

    .line 150
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 151
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 152
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 154
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 155
    .local v1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 156
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 158
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 159
    .restart local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 160
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    goto :goto_2

    .line 161
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "][leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unqueue(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TE;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    if-nez p1, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
