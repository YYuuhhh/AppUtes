.class public Lcz/msebera/android/httpclient/entity/FileEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 86
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 87
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Lcz/msebera/android/httpclient/entity/ContentType;

    .line 71
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 72
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 58
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 59
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v0, "inStream":Ljava/io/InputStream;
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 112
    .local v1, "tmp":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "l":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "tmp":[B
    .end local v3    # "l":I
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 118
    throw v1
.end method
