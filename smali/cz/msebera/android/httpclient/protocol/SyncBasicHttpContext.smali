.class public Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
.super Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 0
    .param p1, "parentContext"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 41
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 53
    .end local p0    # "this":Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    .end local p0    # "this":Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
