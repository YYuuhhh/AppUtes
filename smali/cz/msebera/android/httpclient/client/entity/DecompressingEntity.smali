.class public Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;

.field private final inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V
    .locals 0
    .param p1, "wrapped"    # Lcz/msebera/android/httpclient/HttpEntity;
    .param p2, "inputStreamFactory"    # Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 66
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 67
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 68
    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 72
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 81
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    return-object v0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 110
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 91
    .local v0, "inStream":Ljava/io/InputStream;
    const/16 v1, 0x800

    :try_start_0
    new-array v1, v1, [B

    .line 93
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "l":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v1    # "buffer":[B
    .end local v3    # "l":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    throw v1
.end method
