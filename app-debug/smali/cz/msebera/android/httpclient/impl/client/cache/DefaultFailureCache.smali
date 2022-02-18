.class public Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;
.super Ljava/lang/Object;
.source "DefaultFailureCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/FailureCache;


# static fields
.field static final DEFAULT_MAX_SIZE:I = 0x3e8

.field static final MAX_UPDATE_TRIES:I = 0xa


# instance fields
.field private final maxSize:I

.field private final storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    return-void
.end method

.method private findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .locals 9

    .line 135
    const-wide v0, 0x7fffffffffffffffL

    .line 136
    .local v0, "oldestTimestamp":J
    const/4 v2, 0x0

    .line 137
    .local v2, "oldestValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 138
    .local v4, "storageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 139
    .local v5, "value":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getCreationTimeInNanos()J

    move-result-wide v6

    .line 140
    .local v6, "creationTimeInNanos":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 141
    move-wide v0, v6

    .line 142
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 144
    .end local v4    # "storageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;>;"
    .end local v5    # "value":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .end local v6    # "creationTimeInNanos":J
    :cond_0
    goto :goto_0

    .line 145
    :cond_1
    return-object v2
.end method

.method private removeOldestEntryIfMapSizeExceeded()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    if-le v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    move-result-object v0

    .line 128
    .local v0, "valueWithOldestTimestamp":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .end local v0    # "valueWithOldestTimestamp":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_0
    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 105
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 106
    .local v1, "oldValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-nez v1, :cond_1

    .line 107
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v2, "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 109
    return-void

    .line 111
    .end local v2    # "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_0
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v2

    .line 114
    .local v2, "errorCount":I
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 115
    return-void

    .line 117
    :cond_2
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, p1, v4}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v3, "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    return-void

    .line 104
    .end local v1    # "oldValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .end local v2    # "errorCount":I
    .end local v3    # "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getErrorCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 74
    .local v0, "storedErrorCode":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 71
    .end local v0    # "storedErrorCode":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public increaseErrorCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->updateValue(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->removeOldestEntryIfMapSizeExceeded()V

    .line 92
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetErrorCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
