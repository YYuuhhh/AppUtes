.class public final Lcz/msebera/android/httpclient/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/params/CoreProtocolPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getContentCharset(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 88
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    nop

    .line 90
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    sget-object v1, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method

.method public static getHttpElementCharset(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 60
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    nop

    .line 62
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    sget-object v1, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_PROTOCOL_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public static getMalformedInputAction(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 190
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "http.malformed.input.action"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    return-object v1

    .line 196
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/nio/charset/CodingErrorAction;

    return-object v1
.end method

.method public static getUnmappableInputAction(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/nio/charset/CodingErrorAction;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 219
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string v0, "http.unmappable.input.action"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 223
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    return-object v1

    .line 225
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/nio/charset/CodingErrorAction;

    return-object v1
.end method

.method public static getUserAgent(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 144
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "http.useragent"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 116
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    nop

    .line 118
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 120
    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    return-object v1

    .line 122
    :cond_0
    move-object v1, v0

    check-cast v1, Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v1
.end method

.method public static setContentCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .line 104
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 106
    return-void
.end method

.method public static setHttpElementCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .line 76
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 78
    return-void
.end method

.method public static setMalformedInputAction(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/nio/charset/CodingErrorAction;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "action"    # Ljava/nio/charset/CodingErrorAction;

    .line 207
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string v0, "http.malformed.input.action"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 209
    return-void
.end method

.method public static setUnmappableInputAction(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/nio/charset/CodingErrorAction;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "action"    # Ljava/nio/charset/CodingErrorAction;

    .line 236
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    const-string v0, "http.unmappable.input.action"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 238
    return-void
.end method

.method public static setUseExpectContinue(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "b"    # Z

    .line 178
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v0, "http.protocol.expect-continue"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 180
    return-void
.end method

.method public static setUserAgent(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "useragent"    # Ljava/lang/String;

    .line 155
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 157
    return-void
.end method

.method public static setVersion(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "version"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 132
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 134
    return-void
.end method

.method public static useExpectContinue(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 167
    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
