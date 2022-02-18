.class public Lcz/msebera/android/httpclient/impl/client/cache/DefaultHttpCacheEntrySerializer;
.super Ljava/lang/Object;
.source "DefaultHttpCacheEntrySerializer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/HttpCacheEntrySerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 66
    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v2, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntrySerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntrySerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 71
    throw v1
.end method

.method public writeTo(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "cacheEntry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 59
    throw v1
.end method
