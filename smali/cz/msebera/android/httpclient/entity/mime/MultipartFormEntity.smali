.class Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;
.super Ljava/lang/Object;
.source "MultipartFormEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field private final contentLength:J

.field private final contentType:Lcz/msebera/android/httpclient/Header;

.field private final multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;Lcz/msebera/android/httpclient/entity/ContentType;J)V
    .locals 3
    .param p1, "multipart"    # Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
    .param p2, "contentType"    # Lcz/msebera/android/httpclient/entity/ContentType;
    .param p3, "contentLength"    # J

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-direct {v0, v2, v1}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    .line 57
    iput-wide p3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    .line 58
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    .line 96
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 102
    const-wide/16 v2, 0x6400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 108
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 103
    .end local v0    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/ContentTooLongException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content length is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/ContentTooLongException;

    const-string v1, "Content length is unknown"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 86
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method getMultipart()Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
    .locals 1

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 4

    .line 66
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;->multipart:Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeTo(Ljava/io/OutputStream;)V

    .line 114
    return-void
.end method
