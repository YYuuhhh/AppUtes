.class Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# static fields
.field private static final disallowedWithNoCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final weakETagOnPutDeleteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const-string v0, "min-fresh"

    const-string v1, "max-stale"

    const-string v2, "max-age"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "weakETagOnPutDeleteAllowed"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    .line 70
    return-void
.end method

.method private add100ContinueHeaderIfMissing(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 13
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "hasHeader":Z
    const-string v1, "Expect"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "100-continue"

    if-ge v5, v3, :cond_2

    aget-object v7, v2, v5

    .line 258
    .local v7, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 259
    .local v11, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 258
    .end local v11    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 257
    .end local v7    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    :cond_2
    if-nez v0, :cond_3

    .line 266
    invoke-interface {p1, v1, v6}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_3
    return-void
.end method

.method private addContentTypeHeaderIfMissing(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    .line 198
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 199
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;

    invoke-direct {v1, p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 208
    .local v1, "entityWrapper":Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 210
    .end local v1    # "entityWrapper":Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
    :cond_0
    return-void
.end method

.method private buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/HeaderElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    .local p1, "outElts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/HeaderElement;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "newHdr":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 153
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/HeaderElement;

    .line 154
    .local v3, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    if-nez v1, :cond_0

    .line 155
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 159
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v3    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private decrementOPTIONSMaxForwardsIfGreaterThen0(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 4
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 170
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    const-string v0, "Max-Forwards"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 175
    .local v1, "maxForwards":Lcz/msebera/android/httpclient/Header;
    if-nez v1, :cond_1

    .line 176
    return-void

    .line 179
    :cond_1
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 180
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "currentMaxForwards":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 14
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "hasHeader":Z
    const-string v1, "Expect"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 230
    .local v2, "expectHeaders":[Lcz/msebera/android/httpclient/Header;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v3, "expectElementsThatAreNot100Continue":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/HeaderElement;>;"
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v2, v6

    .line 233
    .local v7, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 234
    .local v11, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "100-continue"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 235
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    :cond_0
    const/4 v0, 0x1

    .line 233
    .end local v11    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 241
    :cond_1
    if-eqz v0, :cond_3

    .line 242
    invoke-interface {p1, v7}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 243
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HeaderElement;

    .line 244
    .local v5, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v1, v8}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v6, "newHeader":Lcz/msebera/android/httpclient/message/BasicHeader;
    invoke-interface {p1, v6}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 246
    .end local v5    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v6    # "newHeader":Lcz/msebera/android/httpclient/message/BasicHeader;
    goto :goto_3

    .line 247
    :cond_2
    return-void

    .line 249
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 232
    .end local v7    # "h":Lcz/msebera/android/httpclient/Header;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 252
    :cond_4
    return-void
.end method

.method private requestContainsNoCacheDirectiveWithFieldName(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 11
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 377
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 378
    .local v4, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 379
    .local v8, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "no-cache"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 380
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 381
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object v0

    .line 378
    .end local v8    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 377
    .end local v4    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private requestHasWeakETagAndRange(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 6
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 323
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "method":Ljava/lang/String;
    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 325
    return-object v2

    .line 328
    :cond_0
    const-string v1, "Range"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 329
    .local v1, "range":Lcz/msebera/android/httpclient/Header;
    if-nez v1, :cond_1

    .line 330
    return-object v2

    .line 333
    :cond_1
    const-string v3, "If-Range"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    .line 334
    .local v3, "ifRange":Lcz/msebera/android/httpclient/Header;
    if-nez v3, :cond_2

    .line 335
    return-object v2

    .line 338
    :cond_2
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "val":Ljava/lang/String;
    const-string v5, "W/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 340
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object v2

    .line 343
    :cond_3
    return-object v2
.end method

.method private requestHasWeekETagForPUTOrDELETEIfMatch(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 6
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 349
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "method":Ljava/lang/String;
    const-string v1, "PUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 351
    const-string v1, "DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    return-object v2

    .line 355
    :cond_0
    const-string v1, "If-Match"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 356
    .local v1, "ifMatch":Lcz/msebera/android/httpclient/Header;
    const-string v3, "W/"

    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object v2

    .line 361
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 362
    :cond_2
    const-string v4, "If-None-Match"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 363
    .local v4, "ifNoneMatch":Lcz/msebera/android/httpclient/Header;
    if-nez v4, :cond_3

    .line 364
    return-object v2

    .line 367
    :cond_3
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "val2":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object v2

    .line 373
    .end local v4    # "ifNoneMatch":Lcz/msebera/android/httpclient/Header;
    .end local v5    # "val2":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v2
.end method

.method private requestMustNotHaveEntity(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 165
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRACE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stripOtherFreshnessDirectivesWithNoCache(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 14
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "outElts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/HeaderElement;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "shouldStrip":Z
    const-string v2, "Cache-Control"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 134
    .local v7, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 135
    .local v11, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    sget-object v12, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 136
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "no-cache"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 134
    .end local v11    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 133
    .end local v7    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_3
    if-nez v1, :cond_4

    .line 144
    return-void

    .line 146
    :cond_4
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private verifyOPTIONSRequestWithBodyHasContentType(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 186
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-nez v0, :cond_1

    .line 191
    return-void

    .line 194
    :cond_1
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 195
    return-void
.end method

.method private verifyRequestWithExpectContinueFlagHas100continueHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 213
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    .line 215
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    .line 216
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->add100ContinueHeaderIfMissing(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 224
    :goto_0
    return-void
.end method


# virtual methods
.method public getErrorForRequest(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 5
    .param p1, "errorCheck"    # Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 295
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$2;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/16 v2, 0x190

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 310
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v4, "No-Cache directive MUST NOT include a field name"

    invoke-direct {v1, v3, v2, v4}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request was compliant, therefore no error can be generated for it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v4, "Weak eTag not compatible with PUT or DELETE requests"

    invoke-direct {v1, v3, v2, v4}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    return-object v0

    .line 301
    :cond_2
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v4, "Weak eTag not compatible with byte range"

    invoke-direct {v1, v3, v2, v4}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    return-object v0

    .line 297
    :cond_3
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v3, 0x19b

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    return-object v0
.end method

.method public makeRequestCompliant(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestMustNotHaveEntity(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->verifyRequestWithExpectContinueFlagHas100continueHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 120
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->verifyOPTIONSRequestWithBodyHasContentType(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 121
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->decrementOPTIONSMaxForwardsIfGreaterThen0(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 122
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->stripOtherFreshnessDirectivesWithNoCache(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 124
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestVersionIsTooLow(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestMinorVersionIsTooHighMajorVersionsMatch(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 128
    :cond_2
    return-void
.end method

.method public requestIsFatallyNonCompliant(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/List;
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "theErrors":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;>;"
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestHasWeakETagAndRange(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 86
    .local v1, "anError":Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    if-nez v2, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestHasWeekETagForPUTOrDELETEIfMatch(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestContainsNoCacheDirectiveWithFieldName(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    return-object v0
.end method

.method protected requestMinorVersionIsTooHighMajorVersionsMatch(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 4
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 271
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    .line 272
    .local v0, "requestProtocol":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v1

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpVersion;->getMajor()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 273
    return v3

    .line 276
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result v1

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpVersion;->getMinor()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 277
    const/4 v1, 0x1

    return v1

    .line 280
    :cond_1
    return v3
.end method

.method protected requestVersionIsTooLow(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 284
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
