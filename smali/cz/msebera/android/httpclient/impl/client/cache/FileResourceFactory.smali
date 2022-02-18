.class public Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;
.super Ljava/lang/Object;
.source "FileResourceFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/ResourceFactory;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    .line 55
    return-void
.end method

.method private generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->generate(Ljava/lang/StringBuilder;)V

    .line 60
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 64
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .end local v4    # "ch":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "file":Ljava/io/File;
    instance-of v1, p2, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    if-eqz v1, :cond_0

    .line 105
    move-object v1, p2

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, "src":Ljava/io/File;
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 107
    .end local v1    # "src":Ljava/io/File;
    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 111
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/cache/InputLimit;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .param p3, "limit"    # Lcz/msebera/android/httpclient/client/cache/InputLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v1, "outStream":Ljava/io/FileOutputStream;
    const/16 v2, 0x800

    :try_start_0
    new-array v2, v2, [B

    .line 82
    .local v2, "buf":[B
    const-wide/16 v3, 0x0

    .line 84
    .local v3, "total":J
    :cond_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "l":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    int-to-long v7, v6

    add-long/2addr v3, v7

    .line 87
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->getValue()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 88
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v2    # "buf":[B
    .end local v3    # "total":J
    .end local v6    # "l":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 94
    nop

    .line 95
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v2

    .line 93
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 94
    throw v2
.end method
