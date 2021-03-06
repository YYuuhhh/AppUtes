.class public final Lcz/msebera/android/httpclient/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/params/CoreConnectionPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 176
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLinger(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 153
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSoKeepalive(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 226
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    const-string v0, "http.socket.keepalive"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSoReuseaddr(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 81
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 55
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSocketBufferSize(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 129
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    const-string v0, "http.socket.buffer-size"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 106
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 200
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "timeout"    # I

    .line 188
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    const-string v0, "http.connection.timeout"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 190
    return-void
.end method

.method public static setLinger(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "value"    # I

    .line 164
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string v0, "http.socket.linger"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 166
    return-void
.end method

.method public static setSoKeepalive(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "enableKeepalive"    # Z

    .line 239
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    const-string v0, "http.socket.keepalive"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 241
    return-void
.end method

.method public static setSoReuseaddr(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "reuseaddr"    # Z

    .line 94
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v0, "http.socket.reuseaddr"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 96
    return-void
.end method

.method public static setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "timeout"    # I

    .line 66
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v0, "http.socket.timeout"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 69
    return-void
.end method

.method public static setSocketBufferSize(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "size"    # I

    .line 141
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "http.socket.buffer-size"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 143
    return-void
.end method

.method public static setStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "value"    # Z

    .line 212
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    const-string v0, "http.connection.stalecheck"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 214
    return-void
.end method

.method public static setTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "value"    # Z

    .line 117
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "http.tcp.nodelay"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 119
    return-void
.end method
