.class public Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
.super Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.source "CachingHttpClientBuilder.java"


# instance fields
.field private cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field private cacheDir:Ljava/io/File;

.field private deleteCache:Z

.field private httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

.field private resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

.field private schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

.field private storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    .line 62
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 1

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private createAsynchronousRevalidator(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    .locals 2
    .param p1, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 155
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->createSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    move-result-object v0

    .line 157
    .local v0, "configuredSchedulingStrategy":Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;)V

    .line 159
    .local v1, "revalidator":Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    .line 160
    return-object v1

    .line 162
    .end local v0    # "configuredSchedulingStrategy":Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;
    .end local v1    # "revalidator":Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;
    .locals 1
    .param p1, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 166
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 14
    .param p1, "mainExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 109
    .local v0, "config":Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    .line 110
    .local v1, "resourceFactoryCopy":Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    if-nez v1, :cond_2

    .line 111
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    if-nez v2, :cond_1

    .line 112
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;-><init>()V

    move-object v1, v2

    move-object v7, v1

    goto :goto_1

    .line 114
    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;-><init>(Ljava/io/File;)V

    move-object v1, v2

    move-object v7, v1

    goto :goto_1

    .line 110
    :cond_2
    move-object v7, v1

    .line 117
    .end local v1    # "resourceFactoryCopy":Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    .local v7, "resourceFactoryCopy":Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    :goto_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    .line 118
    .local v1, "storageCopy":Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    if-nez v1, :cond_5

    .line 119
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    if-nez v2, :cond_3

    .line 120
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    move-object v1, v2

    move-object v8, v1

    goto :goto_3

    .line 122
    :cond_3
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    .line 123
    .local v2, "managedStorage":Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;
    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    if-eqz v3, :cond_4

    .line 124
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder$1;

    invoke-direct {v3, p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;)V

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    .line 135
    :goto_2
    move-object v1, v2

    move-object v8, v1

    goto :goto_3

    .line 118
    .end local v2    # "managedStorage":Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;
    :cond_5
    move-object v8, v1

    .line 138
    .end local v1    # "storageCopy":Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    .local v8, "storageCopy":Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    :goto_3
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->createAsynchronousRevalidator(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    move-result-object v9

    .line 139
    .local v9, "revalidator":Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;-><init>()V

    move-object v10, v1

    .line 141
    .local v10, "uriExtractor":Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    .line 142
    .local v1, "cacheInvalidator":Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;
    if-nez v1, :cond_6

    .line 143
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;

    invoke-direct {v2, v10, v8}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)V

    move-object v1, v2

    move-object v11, v1

    goto :goto_4

    .line 142
    :cond_6
    move-object v11, v1

    .line 146
    .end local v1    # "cacheInvalidator":Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;
    .local v11, "cacheInvalidator":Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;
    :goto_4
    new-instance v12, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    new-instance v13, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    move-object v1, v13

    move-object v2, v7

    move-object v3, v8

    move-object v4, v0

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V

    invoke-direct {v12, p1, v13, v0, v9}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V

    return-object v12
.end method

.method public final setCacheConfig(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "cacheConfig"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 84
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 85
    return-object p0
.end method

.method public final setCacheDir(Ljava/io/File;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 78
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    .line 79
    return-object p0
.end method

.method public setDeleteCache(Z)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "deleteCache"    # Z

    .line 101
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    .line 102
    return-object p0
.end method

.method public final setHttpCacheInvalidator(Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "cacheInvalidator"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    .line 96
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    .line 97
    return-object p0
.end method

.method public final setHttpCacheStorage(Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "storage"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    .line 72
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    .line 73
    return-object p0
.end method

.method public final setResourceFactory(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "resourceFactory"    # Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    .line 66
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    .line 67
    return-object p0
.end method

.method public final setSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0
    .param p1, "schedulingStrategy"    # Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    .line 90
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    .line 91
    return-object p0
.end method
