.class public Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;
.super Lcz/msebera/android/httpclient/pool/PoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/PoolEntry<",
        "Lcz/msebera/android/httpclient/HttpHost;",
        "Lcz/msebera/android/httpclient/HttpClientConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "route"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "conn"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    :goto_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
