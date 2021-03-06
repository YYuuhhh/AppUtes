.class public final Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnManagerPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 115
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 117
    .local v0, "connPerRoute":Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;
    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 120
    :cond_0
    return-object v0
.end method

.method public static getMaxTotalConnections(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 145
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    const-string v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)J
    .locals 3
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "http.conn-manager.timeout"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setMaxConnectionsPerRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "connPerRoute"    # Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 103
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 105
    return-void
.end method

.method public static setMaxTotalConnections(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "maxTotalConnections"    # I

    .line 132
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 134
    return-void
.end method

.method public static setTimeout(Lcz/msebera/android/httpclient/params/HttpParams;J)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "timeout"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 82
    return-void
.end method
