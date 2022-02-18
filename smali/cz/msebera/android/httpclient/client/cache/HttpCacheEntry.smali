.class public Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
.super Ljava/lang/Object;
.source "HttpCacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final REQUEST_METHOD_HEADER_NAME:Ljava/lang/String; = "Hc-Request-Method"

.field private static final serialVersionUID:J = -0x576fdc1d5b5b2ca5L


# instance fields
.field private final date:Ljava/util/Date;

.field private final requestDate:Ljava/util/Date;

.field private final resource:Lcz/msebera/android/httpclient/client/cache/Resource;

.field private final responseDate:Ljava/util/Date;

.field private final responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

.field private final statusLine:Lcz/msebera/android/httpclient/StatusLine;

.field private final variantMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;)V
    .locals 7
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lcz/msebera/android/httpclient/StatusLine;
    .param p4, "responseHeaders"    # [Lcz/msebera/android/httpclient/Header;
    .param p5, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;

    .line 159
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lcz/msebera/android/httpclient/StatusLine;
    .param p4, "responseHeaders"    # [Lcz/msebera/android/httpclient/Header;
    .param p5, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;
    .param p6, "requestMethod"    # Ljava/lang/String;

    .line 181
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;)V
    .locals 8
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lcz/msebera/android/httpclient/StatusLine;
    .param p4, "responseHeaders"    # [Lcz/msebera/android/httpclient/Header;
    .param p5, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcz/msebera/android/httpclient/StatusLine;",
            "[",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/client/cache/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p6, "variantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lcz/msebera/android/httpclient/StatusLine;
    .param p4, "responseHeaders"    # [Lcz/msebera/android/httpclient/Header;
    .param p5, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;
    .param p7, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcz/msebera/android/httpclient/StatusLine;",
            "[",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/client/cache/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    .local p6, "variantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v0, "Request date"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "Response date"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "Status line"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string v0, "Response headers"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    .line 102
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    .line 103
    iput-object p3, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 104
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 105
    invoke-virtual {v0, p4}, Lcz/msebera/android/httpclient/message/HeaderGroup;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 106
    iput-object p5, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    .line 107
    if-eqz p6, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    .line 110
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->parseDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->date:Ljava/util/Date;

    .line 111
    return-void
.end method

.method private parseDate()Ljava/util/Date;
    .locals 2

    .line 190
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 191
    .local v0, "dateHdr":Lcz/msebera/android/httpclient/Header;
    if-nez v0, :cond_0

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 194
    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAllHeaders()[Lcz/msebera/android/httpclient/Header;
    .locals 5

    .line 250
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    .line 251
    .local v0, "filteredHeaders":Lcz/msebera/android/httpclient/message/HeaderGroup;
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->iterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v1

    .line 252
    .local v1, "iterator":Lcz/msebera/android/httpclient/HeaderIterator;
    :goto_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/Header;

    .line 254
    .local v2, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hc-Request-Method"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 257
    .end local v2    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_0
    goto :goto_0

    .line 258
    .end local v1    # "iterator":Lcz/msebera/android/httpclient/HeaderIterator;
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 266
    const-string v0, "Hc-Request-Method"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 277
    const-string v0, "Hc-Request-Method"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    new-array v0, v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 210
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .locals 1

    .line 235
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 2

    .line 330
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 331
    const-string v1, "Hc-Request-Method"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 332
    .local v0, "requestMethodHeader":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    :cond_0
    const-string v1, "GET"

    return-object v1
.end method

.method public getResource()Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1

    .line 297
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    return-object v0
.end method

.method public getResponseDate()Ljava/util/Date;
    .locals 1

    .line 243
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lcz/msebera/android/httpclient/StatusLine;
    .locals 1

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    return-object v0
.end method

.method public getVariantMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasVariants()Z
    .locals 1

    .line 307
    const-string v0, "Vary"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[request date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; response date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; statusLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
