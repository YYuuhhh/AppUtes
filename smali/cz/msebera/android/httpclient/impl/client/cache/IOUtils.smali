.class Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closable"    # Ljava/io/Closeable;

    .line 63
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    :goto_0
    return-void
.end method

.method static consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1
    .param p0, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-nez p0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 47
    .local v0, "inStream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 51
    .end local v0    # "inStream":Ljava/io/InputStream;
    :cond_1
    return-void
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 56
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 72
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 75
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    throw v0
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, "f1":Ljava/io/RandomAccessFile;
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v1, "f2":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 86
    .local v2, "c1":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .local v7, "c2":Ljava/nio/channels/FileChannel;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 89
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 90
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    nop

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 98
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 104
    .end local v2    # "c1":Ljava/nio/channels/FileChannel;
    .end local v7    # "c2":Ljava/nio/channels/FileChannel;
    nop

    .line 105
    return-void

    .line 91
    .restart local v2    # "c1":Ljava/nio/channels/FileChannel;
    .restart local v7    # "c2":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "ex":Ljava/io/IOException;
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v7}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 95
    nop

    .end local v0    # "f1":Ljava/io/RandomAccessFile;
    .end local v1    # "f2":Ljava/io/RandomAccessFile;
    .end local p0    # "in":Ljava/io/File;
    .end local p1    # "out":Ljava/io/File;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .end local v2    # "c1":Ljava/nio/channels/FileChannel;
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "c2":Ljava/nio/channels/FileChannel;
    .restart local v0    # "f1":Ljava/io/RandomAccessFile;
    .restart local v1    # "f2":Ljava/io/RandomAccessFile;
    .restart local p0    # "in":Ljava/io/File;
    .restart local p1    # "out":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 100
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 103
    throw v2
.end method
