.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpRH"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 39
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 57
    if-gt p1, p2, :cond_1

    .line 60
    array-length v0, p0

    .line 61
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 64
    sub-int v1, p2, p1

    .line 65
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 66
    .local v2, "copyLength":I
    new-array v3, v1, [B

    .line 67
    .local v3, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-object v3

    .line 62
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[B
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 58
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .locals 11
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "responseBody":[B
    if-eqz p1, :cond_3

    .line 118
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 119
    .local v1, "instream":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 120
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 121
    .local v2, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 124
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 125
    const-wide/16 v2, 0x1000

    .line 128
    :cond_0
    :try_start_0
    new-instance v4, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    long-to-int v5, v2

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v4, "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    const/16 v5, 0x1000

    :try_start_1
    new-array v5, v5, [B

    .line 131
    .local v5, "tmp":[B
    const/4 v6, 0x0

    .line 133
    .local v6, "count":I
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "l":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 135
    invoke-static {v5, v7, v8}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    .line 136
    int-to-long v9, v6

    invoke-virtual {p0, v9, v10, v2, v3}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v5    # "tmp":[B
    .end local v6    # "count":I
    .end local v8    # "l":I
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 140
    nop

    .line 141
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    move-object v0, v5

    .line 145
    .end local v4    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    goto :goto_1

    .line 139
    .restart local v4    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 140
    nop

    .end local v0    # "responseBody":[B
    .end local v1    # "instream":Ljava/io/InputStream;
    .end local v2    # "contentLength":J
    .end local p1    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    throw v5
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    .end local v4    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .restart local v0    # "responseBody":[B
    .restart local v1    # "instream":Ljava/io/InputStream;
    .restart local v2    # "contentLength":J
    .restart local p1    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :catch_0
    move-exception v4

    .line 143
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    new-instance v5, Ljava/io/IOException;

    const-string v6, "File too large to fit into available memory"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP entity too large to be buffered in memory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    .end local v1    # "instream":Ljava/io/InputStream;
    .end local v2    # "contentLength":J
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 87
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 93
    .local v0, "response":[Ljava/lang/Object;
    const-string v1, "DataAsyncHttpRH"

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 95
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v4, "custom onProgressData contains an error"

    invoke-interface {v3, v1, v4, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 100
    :cond_1
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {v2, v1, v3}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "response":[Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method public onProgressData([B)V
    .locals 3
    .param p1, "responseBody"    # [B

    .line 77
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "DataAsyncHttpRH"

    const-string v2, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 2
    .param p1, "responseBytes"    # [B

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
