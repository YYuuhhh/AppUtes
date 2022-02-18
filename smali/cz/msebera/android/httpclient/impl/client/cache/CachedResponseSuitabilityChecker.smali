.class Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1
    .param p1, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 2
    .param p1, "validityStrategy"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;
    .param p2, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 65
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    .line 67
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    .line 68
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    .line 69
    return-void
.end method

.method private cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 251
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 247
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 13
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 315
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 316
    .local v0, "etagHeader":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 317
    .local v1, "etag":Ljava/lang/String;
    :goto_0
    const-string v2, "If-None-Match"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 318
    .local v2, "ifNoneMatch":[Lcz/msebera/android/httpclient/Header;
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 319
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v2, v5

    .line 320
    .local v6, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 321
    .local v10, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "reqEtag":Ljava/lang/String;
    const-string v12, "*"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v1, :cond_2

    .line 323
    :cond_1
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 324
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 320
    .end local v10    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v11    # "reqEtag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 319
    .end local v6    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 329
    :cond_5
    return v3
.end method

.method private getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J
    .locals 19
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 105
    const-wide/16 v0, -0x1

    .line 106
    .local v0, "maxstale":J
    const-string v2, "Cache-Control"

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v2, v6

    .line 107
    .local v7, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move-wide v10, v0

    move v1, v5

    .end local v0    # "maxstale":J
    .local v10, "maxstale":J
    :goto_1
    if-ge v1, v9, :cond_6

    aget-object v12, v8, v1

    .line 108
    .local v12, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v13, "max-stale"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v13, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v15, ""

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    cmp-long v0, v10, v13

    if-nez v0, :cond_1

    .line 111
    const-wide v10, 0x7fffffffffffffffL

    goto :goto_2

    .line 114
    :cond_1
    :try_start_0
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v15, "val":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-gez v0, :cond_2

    .line 116
    const-wide/16 v15, 0x0

    .line 118
    :cond_2
    cmp-long v0, v10, v13

    if-eqz v0, :cond_3

    cmp-long v0, v15, v10

    if-gez v0, :cond_4

    .line 119
    :cond_3
    move-wide v10, v15

    .line 124
    .end local v15    # "val":J
    :cond_4
    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    .line 107
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v12    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v7    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-wide v0, v10

    goto :goto_0

    .line 129
    .end local v10    # "maxstale":J
    .local v0, "maxstale":J
    :cond_7
    return-wide v0
.end method

.method private hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 301
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 305
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 255
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 295
    const-string v0, "If-Range"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1

    .line 297
    const-string v0, "If-Unmodified-Since"

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 295
    :goto_1
    return v0
.end method

.method private hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "headerName"    # Ljava/lang/String;

    .line 362
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v0, v0, v2

    .line 363
    .local v0, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 364
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 366
    .end local v0    # "h":Lcz/msebera/android/httpclient/Header;
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    return v2
.end method

.method private isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z
    .locals 8
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "now"    # Ljava/util/Date;

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    iget v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    .line 80
    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    return v1

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 84
    return v2

    .line 86
    :cond_2
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J

    move-result-wide v3

    .line 87
    .local v3, "maxstale":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 88
    return v2

    .line 90
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method private isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 243
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 9
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .line 341
    const-string v0, "Last-Modified"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 342
    .local v0, "lastModifiedHeader":Lcz/msebera/android/httpclient/Header;
    const/4 v1, 0x0

    .line 343
    .local v1, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 346
    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 347
    return v2

    .line 350
    :cond_1
    const-string v3, "If-Modified-Since"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 351
    .local v6, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 352
    .local v7, "ifModifiedSince":Ljava/util/Date;
    if-eqz v7, :cond_3

    .line 353
    invoke-virtual {v7, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 354
    :cond_2
    return v2

    .line 350
    .end local v6    # "h":Lcz/msebera/android/httpclient/Header;
    .end local v7    # "ifModifiedSince":Ljava/util/Date;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 98
    return v2

    .line 100
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 101
    const-string v3, "s-maxage"

    invoke-virtual {v0, p1, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 100
    :goto_1
    return v1
.end method


# virtual methods
.method public allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 6
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .line 275
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    .line 276
    .local v0, "hasEtagValidator":Z
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    .line 278
    .local v1, "hasLastModifiedValidator":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 279
    .local v4, "etagValidatorMatches":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 281
    .local v5, "lastModifiedValidatorMatches":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 283
    :cond_2
    return v3

    .line 284
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    .line 285
    return v3

    .line 288
    :cond_4
    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    .line 289
    return v3

    .line 291
    :cond_5
    return v2
.end method

.method public canCachedResponseBeUsed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 22
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p4, "now"    # Ljava/util/Date;

    .line 147
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v1, v3, v2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Cache entry was not fresh enough"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 149
    return v5

    .line 152
    :cond_0
    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Cache entry Content-Length and header information do not match"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 154
    return v5

    .line 157
    :cond_1
    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Request contained conditional headers we don\'t handle"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 159
    return v5

    .line 162
    :cond_2
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v0

    const/16 v6, 0x130

    if-ne v0, v6, :cond_3

    .line 163
    return v5

    .line 166
    :cond_3
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    return v5

    .line 170
    :cond_4
    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "HEAD response caching enabled but the cache entry does not contain a request method, entity or a 204 response"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 173
    return v5

    .line 176
    :cond_5
    const-string v0, "Cache-Control"

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v6, v0

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_10

    aget-object v8, v0, v7

    .line 177
    .local v8, "ccHdr":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v9

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_f

    aget-object v12, v9, v11

    .line 178
    .local v12, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "no-cache"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 179
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Response contained NO CACHE directive, cache was not suitable"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 180
    return v5

    .line 183
    :cond_6
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "no-store"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 184
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Response contained NO STORE directive, cache was not suitable"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 185
    return v5

    .line 188
    :cond_7
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "max-age"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 190
    :try_start_0
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 191
    .local v13, "maxage":I
    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v14, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v14

    move/from16 v16, v6

    int-to-long v5, v13

    cmp-long v5, v14, v5

    if-lez v5, :cond_8

    .line 192
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response from cache was NOT suitable due to max age"

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v5, 0x0

    return v5

    .line 199
    .end local v13    # "maxage":I
    :cond_8
    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response from cache was malformed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 198
    const/4 v5, 0x0

    return v5

    .line 188
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_9
    move/from16 v16, v6

    .line 202
    :goto_2
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "max-stale"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Response from cache was malformed: "

    if-eqz v5, :cond_b

    .line 204
    :try_start_1
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 205
    .local v5, "maxstale":I
    iget-object v13, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v13, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v15, v8

    move-object/from16 v17, v9

    .end local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .local v15, "ccHdr":Lcz/msebera/android/httpclient/Header;
    int-to-long v8, v5

    cmp-long v8, v13, v8

    if-lez v8, :cond_a

    .line 206
    :try_start_2
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Response from cache was not suitable due to Max stale freshness"

    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    const/4 v6, 0x0

    return v6

    .line 209
    .end local v5    # "maxstale":I
    :catch_1
    move-exception v0

    goto :goto_3

    .line 213
    :cond_a
    goto :goto_4

    .line 209
    .end local v15    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .restart local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    :catch_2
    move-exception v0

    move-object v15, v8

    .line 211
    .end local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v15    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    :goto_3
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 212
    const/4 v5, 0x0

    return v5

    .line 202
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v15    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .restart local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    :cond_b
    move-object v15, v8

    move-object/from16 v17, v9

    .line 216
    .end local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .restart local v15    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    :goto_4
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "min-fresh"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 218
    :try_start_3
    invoke-interface {v12}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 219
    .local v8, "minfresh":J
    const-wide/16 v13, 0x0

    cmp-long v5, v8, v13

    if-gez v5, :cond_c

    .line 220
    const/4 v5, 0x0

    return v5

    .line 222
    :cond_c
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v5, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v13

    .line 223
    .local v13, "age":J
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v5, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v18

    .line 224
    .local v18, "freshness":J
    sub-long v20, v18, v13

    cmp-long v5, v20, v8

    if-gez v5, :cond_d

    .line 225
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response from cache was not suitable due to min fresh freshness requirement"

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 227
    const/4 v5, 0x0

    return v5

    .line 233
    .end local v8    # "minfresh":J
    .end local v13    # "age":J
    .end local v18    # "freshness":J
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 229
    :catch_3
    move-exception v0

    .line 231
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 232
    const/4 v5, 0x0

    return v5

    .line 216
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_e
    const/4 v5, 0x0

    .line 177
    .end local v12    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v8, v15

    move/from16 v6, v16

    move-object/from16 v9, v17

    goto/16 :goto_1

    .end local v15    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    .local v8, "ccHdr":Lcz/msebera/android/httpclient/Header;
    :cond_f
    move/from16 v16, v6

    move-object v15, v8

    .line 176
    .end local v8    # "ccHdr":Lcz/msebera/android/httpclient/Header;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 238
    :cond_10
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response from cache was suitable"

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 264
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
