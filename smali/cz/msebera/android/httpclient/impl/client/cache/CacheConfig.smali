.class public Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
.super Ljava/lang/Object;
.source "CacheConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field public static final DEFAULT_303_CACHING_ENABLED:Z = false

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_CORE:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_MAX:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS:I = 0x3c

.field public static final DEFAULT_HEURISTIC_CACHING_ENABLED:Z = false

.field public static final DEFAULT_HEURISTIC_COEFFICIENT:F = 0.1f

.field public static final DEFAULT_HEURISTIC_LIFETIME:J = 0x0L

.field public static final DEFAULT_MAX_CACHE_ENTRIES:I = 0x3e8

.field public static final DEFAULT_MAX_OBJECT_SIZE_BYTES:I = 0x2000

.field public static final DEFAULT_MAX_UPDATE_RETRIES:I = 0x1

.field public static final DEFAULT_REVALIDATION_QUEUE_SIZE:I = 0x64

.field public static final DEFAULT_WEAK_ETAG_ON_PUTDELETE_ALLOWED:Z = false


# instance fields
.field private final allow303Caching:Z

.field private asynchronousWorkerIdleLifetimeSecs:I

.field private asynchronousWorkersCore:I

.field private asynchronousWorkersMax:I

.field private heuristicCachingEnabled:Z

.field private heuristicCoefficient:F

.field private heuristicDefaultLifetime:J

.field private isSharedCache:Z

.field private maxCacheEntries:I

.field private maxObjectSize:J

.field private maxUpdateRetries:I

.field private neverCacheHTTP10ResponsesWithQuery:Z

.field private revalidationQueueSize:I

.field private final weakETagOnPutDeleteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->build()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 186
    const/16 v0, 0x3e8

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    .line 189
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    .line 190
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 191
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 192
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 193
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 194
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 195
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 196
    const/16 v0, 0x3c

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 197
    const/16 v0, 0x64

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    .line 198
    return-void
.end method

.method constructor <init>(JIIZZZFJZIIIIZ)V
    .locals 16
    .param p1, "maxObjectSize"    # J
    .param p3, "maxCacheEntries"    # I
    .param p4, "maxUpdateRetries"    # I
    .param p5, "allow303Caching"    # Z
    .param p6, "weakETagOnPutDeleteAllowed"    # Z
    .param p7, "heuristicCachingEnabled"    # Z
    .param p8, "heuristicCoefficient"    # F
    .param p9, "heuristicDefaultLifetime"    # J
    .param p11, "isSharedCache"    # Z
    .param p12, "asynchronousWorkersMax"    # I
    .param p13, "asynchronousWorkersCore"    # I
    .param p14, "asynchronousWorkerIdleLifetimeSecs"    # I
    .param p15, "revalidationQueueSize"    # I
    .param p16, "neverCacheHTTP10ResponsesWithQuery"    # Z

    .line 215
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 217
    move/from16 v3, p3

    iput v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 218
    move/from16 v4, p4

    iput v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 219
    move/from16 v5, p5

    iput-boolean v5, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    .line 220
    move/from16 v6, p6

    iput-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    .line 221
    move/from16 v7, p7

    iput-boolean v7, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 222
    move/from16 v8, p8

    iput v8, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 223
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 224
    move/from16 v11, p11

    iput-boolean v11, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 225
    move/from16 v12, p12

    iput v12, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 226
    move/from16 v13, p13

    iput v13, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 227
    move/from16 v14, p14

    iput v14, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 228
    move/from16 v15, p15

    iput v15, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    .line 229
    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 3
    .param p0, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 523
    const-string v0, "Cache config"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    .line 525
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxObjectSize(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxCacheEntries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxUpdateRetries()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setMaxUpdateRetries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicCachingEnabled(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicCoefficient(F)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setHeuristicDefaultLifetime(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setSharedCache(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkersMax(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 533
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersCore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkersCore(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkerIdleLifetimeSecs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setAsynchronousWorkerIdleLifetimeSecs(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getRevalidationQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setRevalidationQueueSize(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isNeverCacheHTTP10ResponsesWithQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->setNeverCacheHTTP10ResponsesWithQueryString(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    move-result-object v0

    .line 524
    return-object v0
.end method

.method public static custom()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 1

    .line 519
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 515
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->clone()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAsynchronousWorkerIdleLifetimeSecs()I
    .locals 1

    .line 479
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    return v0
.end method

.method public getAsynchronousWorkersCore()I
    .locals 1

    .line 456
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    return v0
.end method

.method public getAsynchronousWorkersMax()I
    .locals 1

    .line 435
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    return v0
.end method

.method public getHeuristicCoefficient()F
    .locals 1

    .line 363
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    return v0
.end method

.method public getHeuristicDefaultLifetime()J
    .locals 2

    .line 386
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    return-wide v0
.end method

.method public getMaxCacheEntries()I
    .locals 1

    .line 293
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    return v0
.end method

.method public getMaxObjectSize()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    return-wide v0
.end method

.method public getMaxObjectSizeBytes()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMaxUpdateRetries()I
    .locals 1

    .line 310
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    return v0
.end method

.method public getRevalidationQueueSize()I
    .locals 1

    .line 500
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return v0
.end method

.method public is303CachingEnabled()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    return v0
.end method

.method public isHeuristicCachingEnabled()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    return v0
.end method

.method public isNeverCacheHTTP10ResponsesWithQuery()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->neverCacheHTTP10ResponsesWithQuery:Z

    return v0
.end method

.method public isSharedCache()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    return v0
.end method

.method public isWeakETagOnPutDeleteAllowed()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    return v0
.end method

.method public setAsynchronousWorkerIdleLifetimeSecs(I)V
    .locals 0
    .param p1, "secs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 494
    return-void
.end method

.method public setAsynchronousWorkersCore(I)V
    .locals 0
    .param p1, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 470
    return-void
.end method

.method public setAsynchronousWorkersMax(I)V
    .locals 0
    .param p1, "max"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 449
    return-void
.end method

.method public setHeuristicCachingEnabled(Z)V
    .locals 0
    .param p1, "heuristicCachingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 357
    return-void
.end method

.method public setHeuristicCoefficient(F)V
    .locals 0
    .param p1, "heuristicCoefficient"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 379
    return-void
.end method

.method public setHeuristicDefaultLifetime(J)V
    .locals 0
    .param p1, "heuristicDefaultLifetimeSecs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 405
    return-void
.end method

.method public setMaxCacheEntries(I)V
    .locals 0
    .param p1, "maxCacheEntries"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 304
    return-void
.end method

.method public setMaxObjectSize(J)V
    .locals 0
    .param p1, "maxObjectSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 278
    return-void
.end method

.method public setMaxObjectSizeBytes(I)V
    .locals 2
    .param p1, "maxObjectSizeBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    const v0, 0x7fffffff

    if-le p1, v0, :cond_0

    .line 251
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    goto :goto_0

    .line 253
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 255
    :goto_0
    return-void
.end method

.method public setMaxUpdateRetries(I)V
    .locals 0
    .param p1, "maxUpdateRetries"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 321
    return-void
.end method

.method public setRevalidationQueueSize(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    .line 511
    return-void
.end method

.method public setSharedCache(Z)V
    .locals 0
    .param p1, "isSharedCache"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[maxObjectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxObjectSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 747
    const-string v2, ", maxCacheEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxCacheEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    const-string v2, ", maxUpdateRetries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 749
    const-string v2, ", 303CachingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->allow303Caching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    const-string v2, ", weakETagOnPutDeleteAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->weakETagOnPutDeleteAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    const-string v2, ", heuristicCachingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 752
    const-string v2, ", heuristicCoefficient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    const-string v2, ", heuristicDefaultLifetime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    const-string v2, ", isSharedCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    const-string v2, ", asynchronousWorkersMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    const-string v2, ", asynchronousWorkersCore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    const-string v2, ", asynchronousWorkerIdleLifetimeSecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 758
    const-string v2, ", revalidationQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 759
    const-string v2, ", neverCacheHTTP10ResponsesWithQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->neverCacheHTTP10ResponsesWithQuery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 760
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
