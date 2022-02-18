.class public abstract Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lcz/msebera/android/httpclient/pool/ConnPool;
.implements Lcz/msebera/android/httpclient/pool/ConnPoolControl;


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
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/pool/ConnPool<",
        "TT;TE;>;",
        "Lcz/msebera/android/httpclient/pool/ConnPoolControl<",
        "TT;>;"
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

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final connFactory:Lcz/msebera/android/httpclient/pool/ConnFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field private volatile defaultMaxPerRoute:I

.field private volatile isShutDown:Z

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final maxPerRoute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxTotal:I

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/concurrent/Future<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<",
            "TT;TC;TE;>;>;"
        }
    .end annotation
.end field

.field private volatile validateAfterInactivity:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V
    .locals 1
    .param p2, "defaultMaxPerRoute"    # I
    .param p3, "maxTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "TT;TC;>;II)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "connFactory":Lcz/msebera/android/httpclient/pool/ConnFactory;, "Lcz/msebera/android/httpclient/pool/ConnFactory<TT;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "Connection factory"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/ConnFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->connFactory:Lcz/msebera/android/httpclient/pool/ConnFactory;

    .line 92
    const-string v0, "Max per route value"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->defaultMaxPerRoute:I

    .line 93
    const-string v0, "Max total value"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxTotal:I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    .line 95
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$200(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/pool/AbstractConnPool;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x5"    # Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 69
    invoke-direct/range {p0 .. p6}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcz/msebera/android/httpclient/pool/AbstractConnPool;)I
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    .line 69
    iget v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->validateAfterInactivity:I

    return v0
.end method

.method private getMax(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 434
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->defaultMaxPerRoute:I

    :goto_0
    return v1
.end method

.method private getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<",
            "TT;TC;TE;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    .line 166
    .local v0, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    if-nez v0, :cond_0

    .line 167
    new-instance v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;

    invoke-direct {v1, p0, p1, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;-><init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 175
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-object v0
.end method

.method private getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 18
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/Future<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 301
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    .local p6, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p6

    const/4 v0, 0x0

    .line 302
    .local v0, "deadline":Ljava/util/Date;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 303
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v8, p5

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    add-long/2addr v6, v9

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v0, v5

    goto :goto_0

    .line 302
    :cond_0
    move-object/from16 v8, p5

    move-object v5, v0

    .line 305
    .end local v0    # "deadline":Ljava/util/Date;
    .local v5, "deadline":Ljava/util/Date;
    :goto_0
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 307
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    move-result-object v0

    move-object v6, v0

    .line 310
    .local v6, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    :goto_1
    iget-boolean v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_2

    :cond_1
    move v0, v9

    :goto_2
    const-string v10, "Connection pool shut down"

    invoke-static {v0, v10}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 312
    :goto_3
    move-object/from16 v10, p2

    :try_start_1
    invoke-virtual {v6, v10}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getFree(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v0

    move-object v11, v0

    .line 313
    .local v11, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    if-nez v11, :cond_2

    .line 314
    goto :goto_4

    .line 316
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcz/msebera/android/httpclient/pool/PoolEntry;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 319
    :cond_3
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/pool/PoolEntry;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v6, v11, v9}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->free(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    goto :goto_3

    .line 326
    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    .line 327
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v1, v11}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->onReuse(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 330
    nop

    .line 400
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 330
    return-object v11

    .line 334
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v0

    move v12, v0

    .line 336
    .local v12, "maxPerRoute":I
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v0

    add-int/2addr v0, v7

    sub-int/2addr v0, v12

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v7, v0

    .line 337
    .local v7, "excess":I
    if-lez v7, :cond_7

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v7, :cond_7

    .line 339
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getLastUsed()Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v13

    .line 340
    .local v13, "lastUsed":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    if-nez v13, :cond_6

    .line 341
    goto :goto_6

    .line 343
    :cond_6
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 344
    iget-object v14, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v14, v13}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v6, v13}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->remove(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z

    .line 338
    nop

    .end local v13    # "lastUsed":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 349
    .end local v0    # "i":I
    :cond_7
    :goto_6
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v0

    if-ge v0, v12, :cond_a

    .line 350
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 351
    .local v0, "totalUsed":I
    iget v13, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxTotal:I

    sub-int/2addr v13, v0

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 352
    .local v9, "freeCapacity":I
    if-lez v9, :cond_9

    .line 353
    iget-object v13, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 354
    .local v13, "totalAvailable":I
    add-int/lit8 v14, v9, -0x1

    if-le v13, v14, :cond_8

    .line 355
    iget-object v14, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 356
    iget-object v14, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 357
    .local v14, "lastUsed":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 358
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v1, v15}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    move-result-object v15

    .line 359
    .local v15, "otherpool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v15, v14}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->remove(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z

    .line 362
    .end local v14    # "lastUsed":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .end local v15    # "otherpool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_8
    iget-object v14, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->connFactory:Lcz/msebera/android/httpclient/pool/ConnFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v15, p1

    :try_start_3
    invoke-interface {v14, v15}, Lcz/msebera/android/httpclient/pool/ConnFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 363
    .local v14, "conn":Ljava/lang/Object;, "TC;"
    invoke-virtual {v6, v14}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->add(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object v16

    move-object/from16 v11, v16

    .line 364
    move/from16 v16, v0

    .end local v0    # "totalUsed":I
    .local v16, "totalUsed":I
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    nop

    .line 400
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 365
    return-object v11

    .line 352
    .end local v13    # "totalAvailable":I
    .end local v14    # "conn":Ljava/lang/Object;, "TC;"
    .end local v16    # "totalUsed":I
    .restart local v0    # "totalUsed":I
    :cond_9
    move-object/from16 v15, p1

    move/from16 v16, v0

    .end local v0    # "totalUsed":I
    .restart local v16    # "totalUsed":I
    goto :goto_7

    .line 349
    .end local v9    # "freeCapacity":I
    .end local v16    # "totalUsed":I
    :cond_a
    move-object/from16 v15, p1

    .line 369
    :goto_7
    const/4 v9, 0x0

    .line 371
    .local v9, "success":Z
    :try_start_4
    invoke-interface/range {p6 .. p6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v13, "Operation interrupted"

    if-nez v0, :cond_f

    .line 374
    :try_start_5
    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->queue(Ljava/util/concurrent/Future;)V

    .line 375
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 376
    if-eqz v5, :cond_b

    .line 377
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    move v9, v0

    .end local v9    # "success":Z
    .local v0, "success":Z
    goto :goto_8

    .line 379
    .end local v0    # "success":Z
    .restart local v9    # "success":Z
    :cond_b
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 380
    const/4 v0, 0x1

    .end local v9    # "success":Z
    .restart local v0    # "success":Z
    move v9, v0

    .line 382
    .end local v0    # "success":Z
    .restart local v9    # "success":Z
    :goto_8
    invoke-interface/range {p6 .. p6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_e

    .line 390
    :try_start_6
    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->unqueue(Ljava/util/concurrent/Future;)V

    .line 391
    iget-object v0, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 392
    nop

    .line 394
    if-nez v9, :cond_d

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v0, v13, v16

    if-lez v0, :cond_c

    goto :goto_9

    .line 395
    :cond_c
    nop

    .line 398
    .end local v7    # "excess":I
    .end local v9    # "success":Z
    .end local v12    # "maxPerRoute":I
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v7, "Timeout waiting for connection"

    invoke-direct {v0, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local v5    # "deadline":Ljava/util/Date;
    .end local p1    # "route":Ljava/lang/Object;, "TT;"
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 397
    .restart local v5    # "deadline":Ljava/util/Date;
    .restart local p1    # "route":Ljava/lang/Object;, "TT;"
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    :cond_d
    :goto_9
    goto/16 :goto_1

    .line 383
    .restart local v7    # "excess":I
    .restart local v9    # "success":Z
    .restart local v12    # "maxPerRoute":I
    :cond_e
    :try_start_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local v5    # "deadline":Ljava/util/Date;
    .end local v6    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .end local v7    # "excess":I
    .end local v9    # "success":Z
    .end local v11    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .end local v12    # "maxPerRoute":I
    .end local p1    # "route":Ljava/lang/Object;, "TT;"
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    throw v0

    .line 372
    .restart local v5    # "deadline":Ljava/util/Date;
    .restart local v6    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .restart local v7    # "excess":I
    .restart local v9    # "success":Z
    .restart local v11    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .restart local v12    # "maxPerRoute":I
    .restart local p1    # "route":Ljava/lang/Object;, "TT;"
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    :cond_f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local v5    # "deadline":Ljava/util/Date;
    .end local v6    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .end local v7    # "excess":I
    .end local v9    # "success":Z
    .end local v11    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .end local v12    # "maxPerRoute":I
    .end local p1    # "route":Ljava/lang/Object;, "TT;"
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 390
    .restart local v5    # "deadline":Ljava/util/Date;
    .restart local v6    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .restart local v7    # "excess":I
    .restart local v9    # "success":Z
    .restart local v11    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .restart local v12    # "maxPerRoute":I
    .restart local p1    # "route":Ljava/lang/Object;, "TT;"
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->unqueue(Ljava/util/concurrent/Future;)V

    .line 391
    iget-object v13, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v13, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 392
    nop

    .end local v5    # "deadline":Ljava/util/Date;
    .end local p1    # "route":Ljava/lang/Object;, "TT;"
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 400
    .end local v6    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .end local v7    # "excess":I
    .end local v9    # "success":Z
    .end local v11    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .end local v12    # "maxPerRoute":I
    .restart local v5    # "deadline":Ljava/util/Date;
    .restart local p1    # "route":Ljava/lang/Object;, "TT;"
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v10, p2

    :goto_a
    iget-object v6, v1, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 401
    throw v0
.end method

.method private purgePoolMap()V
    .locals 5

    .line 593
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 594
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 596
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    .line 597
    .local v2, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getPendingCount()I

    move-result v3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 600
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;>;"
    .end local v2    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_0
    goto :goto_0

    .line 601
    :cond_1
    return-void
.end method


# virtual methods
.method public closeExpired()V
    .locals 3

    .line 633
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 634
    .local v0, "now":J
    new-instance v2, Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;

    invoke-direct {v2, p0, v0, v1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;-><init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;J)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    .line 644
    return-void
.end method

.method public closeIdle(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "idletime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 611
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 613
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 614
    const-wide/16 v0, 0x0

    .line 616
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 617
    .local v2, "deadline":J
    new-instance v4, Lcz/msebera/android/httpclient/pool/AbstractConnPool$3;

    invoke-direct {v4, p0, v2, v3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$3;-><init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;J)V

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    .line 627
    return-void
.end method

.method protected abstract createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)TE;"
        }
    .end annotation
.end method

.method protected enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 556
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "callback":Lcz/msebera/android/httpclient/pool/PoolEntryCallback;, "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<TT;TC;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 558
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 559
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 561
    .local v1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/pool/PoolEntryCallback;->process(Lcz/msebera/android/httpclient/pool/PoolEntry;)V

    .line 562
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    move-result-object v2

    .line 564
    .local v2, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->remove(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z

    .line 565
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 567
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    .end local v2    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_0
    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->purgePoolMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    nop

    .line 572
    return-void

    .line 570
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    throw v0
.end method

.method protected enumLeased(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 580
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "callback":Lcz/msebera/android/httpclient/pool/PoolEntryCallback;, "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<TT;TC;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 582
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 585
    .local v1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/pool/PoolEntryCallback;->process(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    goto :goto_0

    .line 588
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 589
    nop

    .line 590
    return-void

    .line 588
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 589
    throw v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 2

    .line 471
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 473
    :try_start_0
    iget v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 473
    return v0

    .line 475
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 476
    throw v0
.end method

.method public getMaxPerRoute(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 499
    :try_start_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 499
    return v0

    .line 501
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 502
    throw v0
.end method

.method public getMaxTotal()I
    .locals 2

    .line 450
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 452
    :try_start_0
    iget v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    return v0

    .line 454
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 455
    throw v0
.end method

.method public getRoutes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 544
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 544
    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 547
    throw v0
.end method

.method public getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcz/msebera/android/httpclient/pool/PoolStats;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 524
    :try_start_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    move-result-object v0

    .line 525
    .local v0, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    new-instance v1, Lcz/msebera/android/httpclient/pool/PoolStats;

    .line 526
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getLeasedCount()I

    move-result v2

    .line 527
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getPendingCount()I

    move-result v3

    .line 528
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->getAvailableCount()I

    move-result v4

    .line 529
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcz/msebera/android/httpclient/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 525
    return-object v1

    .line 531
    .end local v0    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 532
    throw v0
.end method

.method public getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 5

    .line 507
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 509
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/pool/PoolStats;

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    .line 510
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    .line 511
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    .line 512
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxTotal:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/pool/PoolStats;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    return-object v0

    .line 515
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 516
    throw v0
.end method

.method public getValidateAfterInactivity()I
    .locals 1

    .line 651
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->validateAfterInactivity:I

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 134
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    return v0
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TE;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lcz/msebera/android/httpclient/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public lease(Ljava/lang/Object;Ljava/lang/Object;Lcz/msebera/android/httpclient/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TE;>;)",
            "Ljava/util/concurrent/Future<",
            "TE;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcz/msebera/android/httpclient/concurrent/FutureCallback;, "Lcz/msebera/android/httpclient/concurrent/FutureCallback<TE;>;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection pool shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 193
    new-instance v0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool$2;-><init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Lcz/msebera/android/httpclient/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onLease(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    return-void
.end method

.method protected onRelease(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    return-void
.end method

.method protected onReuse(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    return-void
.end method

.method public release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V
    .locals 3
    .param p2, "reusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    move-result-object v0

    .line 410
    .local v0, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->free(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    .line 411
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 416
    :goto_0
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->onRelease(Lcz/msebera/android/httpclient/pool/PoolEntry;)V

    .line 417
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->nextPending()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 418
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    if-eqz v1, :cond_1

    .line 419
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    move-object v1, v2

    .line 423
    :goto_1
    if-eqz v1, :cond_2

    .line 424
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v0    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TE;>;"
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    throw v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;Z)V
    .locals 0

    .line 68
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    check-cast p1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 2
    .param p1, "max"    # I

    .line 460
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v0, "Max per route value"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 463
    :try_start_0
    iput p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->defaultMaxPerRoute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 466
    nop

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 466
    throw v0
.end method

.method public setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 484
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 491
    throw v0
.end method

.method public setMaxTotal(I)V
    .locals 2
    .param p1, "max"    # I

    .line 439
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    const-string v0, "Max value"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 442
    :try_start_0
    iput p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->maxTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 445
    throw v0
.end method

.method public setValidateAfterInactivity(I)V
    .locals 0
    .param p1, "ms"    # I

    .line 659
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iput p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->validateAfterInactivity:I

    .line 660
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->isShutDown:Z

    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 148
    .local v1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 149
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 151
    .restart local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    .line 152
    .end local v1    # "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;

    .line 154
    .local v1, "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->shutdown()V

    .line 155
    .end local v1    # "pool":Lcz/msebera/android/httpclient/pool/RouteSpecificPool;, "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<TT;TC;TE;>;"
    goto :goto_2

    .line 156
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 161
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 664
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 666
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    iget-object v2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 674
    return-object v1

    .line 676
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 677
    throw v0
.end method

.method protected validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcz/msebera/android/httpclient/pool/AbstractConnPool;, "Lcz/msebera/android/httpclient/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lcz/msebera/android/httpclient/pool/PoolEntry;, "TE;"
    const/4 v0, 0x1

    return v0
.end method
