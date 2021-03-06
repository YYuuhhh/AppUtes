.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

.field protected final connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

.field private final log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 3
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 95
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .param p2, "connTTL"    # J
    .param p4, "connTTLTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 116
    new-instance v5, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V
    .locals 2
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .param p2, "connTTL"    # J
    .param p4, "connTTLTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "connPerRoute"    # Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 136
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 137
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    .line 138
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 139
    invoke-virtual {p0, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    .line 140
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p2, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string v0, "Scheme registry"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 156
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 157
    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    .line 158
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 159
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    .line 160
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-object v0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->closeExpiredConnections()V

    .line 341
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "idleTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 331
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 335
    return-void
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 210
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createConnectionPool(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;
    .locals 2
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;
    .locals 8
    .param p1, "connTTL"    # J
    .param p3, "connTTLTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 192
    new-instance v7, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    move-object v0, v7

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    return-object v7
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 169
    throw v0
.end method

.method public getConnectionsInPool()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInPool(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 314
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 375
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    .line 215
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 253
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 255
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 256
    .local v0, "hca":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Connection not obtained from this manager"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 259
    :cond_1
    monitor-enter v0

    .line 260
    :try_start_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 261
    .local v1, "entry":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    if-nez v1, :cond_2

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 266
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 275
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    move v8, v2

    .line 284
    .local v8, "reusable":Z
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    if-eqz v8, :cond_4

    .line 286
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_4
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is not reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 292
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    :goto_2
    move-object v3, v1

    move v4, v8

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    .end local v8    # "reusable":Z
    goto :goto_4

    .line 283
    :catchall_0
    move-exception v2

    move-object v8, v2

    goto :goto_5

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "iox":Ljava/io/IOException;
    :try_start_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 279
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Exception shutting down released connection."

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    .end local v2    # "iox":Ljava/io/IOException;
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    move v8, v2

    .line 284
    .restart local v8    # "reusable":Z
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 285
    if-eqz v8, :cond_7

    .line 286
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_3

    .line 288
    :cond_7
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is not reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 292
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    goto :goto_2

    .line 294
    .end local v1    # "entry":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .end local v8    # "reusable":Z
    :goto_4
    monitor-exit v0

    .line 295
    return-void

    .line 283
    .restart local v1    # "entry":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    :goto_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    move v9, v2

    .line 284
    .local v9, "reusable":Z
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 285
    if-eqz v9, :cond_9

    .line 286
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_6

    .line 288
    :cond_9
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Released connection is not reusable."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 292
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-object v3, v1

    move v4, v9

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 293
    .end local v9    # "reusable":Z
    nop

    .end local v0    # "hca":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;
    .end local p1    # "conn":Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .end local p2    # "validDuration":J
    .end local p4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    throw v8

    .line 294
    .end local v1    # "entry":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .restart local v0    # "hca":Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;
    .restart local p1    # "conn":Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .restart local p2    # "validDuration":J
    .restart local p4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 226
    .local v0, "poolRequest":Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1
    .param p1, "max"    # I

    .line 368
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    .line 369
    return-void
.end method

.method public setMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 1
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "max"    # I

    .line 382
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->setMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V

    .line 383
    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1
    .param p1, "max"    # I

    .line 354
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->setMaxTotalConnections(I)V

    .line 355
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Shutting down"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->shutdown()V

    .line 301
    return-void
.end method
