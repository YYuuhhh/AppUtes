.class public Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;
.super Ljava/lang/Object;
.source "HeapResourceFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/ResourceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    instance-of v0, p2, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->getByteArray()[B

    move-result-object v0

    .local v0, "body":[B
    goto :goto_0

    .line 75
    .end local v0    # "body":[B
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v0, v1

    .line 79
    .local v0, "body":[B
    :goto_0
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;->createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v1

    return-object v1
.end method

.method createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1
    .param p1, "buf"    # [B

    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;-><init>([B)V

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/cache/InputLimit;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .param p3, "limit"    # Lcz/msebera/android/httpclient/client/cache/InputLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 54
    .local v1, "buf":[B
    const-wide/16 v2, 0x0

    .line 56
    .local v2, "total":J
    :cond_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "l":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 58
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 59
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->getValue()J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 60
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached()V

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;->createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v4

    return-object v4
.end method
