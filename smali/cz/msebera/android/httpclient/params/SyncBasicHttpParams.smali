.class public Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
.super Lcz/msebera/android/httpclient/params/BasicHttpParams;
.source "SyncBasicHttpParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ac56f4476f17222L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isParameterSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->isParameterSet(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 67
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isParameterSetLocally(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->isParameterSetLocally(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 72
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 52
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
    .end local p1    # "names":[Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
