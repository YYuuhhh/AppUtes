.class public Lcz/msebera/android/httpclient/conn/BasicManagedEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .locals 1
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;
    .param p2, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .param p3, "reuse"    # Z

    .line 72
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 73
    const-string v0, "Connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 75
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    .line 76
    return-void
.end method

.method private ensureConsumed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 103
    nop

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 103
    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 134
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 134
    throw v0

    .line 136
    :cond_0
    :goto_0
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 113
    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 153
    nop

    .line 154
    const/4 v0, 0x0

    return v0

    .line 152
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 153
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 124
    return-void
.end method

.method protected releaseManagedConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 207
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 207
    throw v0

    .line 209
    :cond_0
    :goto_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_2

    .line 161
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_1

    .line 162
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v0, "valid":Z
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 167
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/net/SocketException;
    if-nez v0, :cond_0

    .line 173
    .end local v0    # "valid":Z
    .end local v1    # "ex":Ljava/net/SocketException;
    :goto_0
    goto :goto_1

    .line 170
    .restart local v0    # "valid":Z
    .restart local v1    # "ex":Ljava/net/SocketException;
    :cond_0
    nop

    .end local p1    # "wrapped":Ljava/io/InputStream;
    :try_start_2
    throw v1

    .line 174
    .end local v0    # "valid":Z
    .end local v1    # "ex":Ljava/net/SocketException;
    .restart local p1    # "wrapped":Ljava/io/InputStream;
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 179
    nop

    .line 180
    const/4 v0, 0x0

    return v0

    .line 178
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 179
    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 118
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 119
    return-void
.end method
