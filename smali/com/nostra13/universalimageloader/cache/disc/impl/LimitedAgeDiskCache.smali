.class public Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;
.super Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;
.source "LimitedAgeDiskCache.java"


# instance fields
.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileAge:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 6
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxAge"    # J

    .line 48
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;J)V
    .locals 6
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "maxAge"    # J

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p4, "maxAge"    # J

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    .line 69
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->maxFileAge:J

    .line 70
    return-void
.end method

.method private rememberUsage(Ljava/lang/String;)V
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 123
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 124
    .local v1, "currentTime":J
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 125
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->clear()V

    .line 118
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;

    .line 74
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 78
    .local v1, "loadingDate":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "cached":Z
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v2    # "cached":Z
    :cond_0
    const/4 v2, 0x1

    .line 85
    .restart local v2    # "cached":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->maxFileAge:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_1
    if-nez v2, :cond_2

    .line 89
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v1    # "loadingDate":Ljava/lang/Long;
    .end local v2    # "cached":Z
    :cond_2
    :goto_1
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 105
    .local v0, "saved":Z
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    .line 106
    return v0
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    move-result v0

    .line 98
    .local v0, "saved":Z
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    .line 99
    return v0
.end method
