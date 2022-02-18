.class public Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 223
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    return v0

    .line 226
    :cond_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    .line 227
    .local v1, "status":I
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected createTokenIterator(Lcz/msebera/android/httpclient/HeaderIterator;)Lcz/msebera/android/httpclient/TokenIterator;
    .locals 1
    .param p1, "hit"    # Lcz/msebera/android/httpclient/HeaderIterator;

    .line 219
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 11
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 80
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const-string v1, "Transfer-Encoding"

    const-string v2, "Content-Length"

    const/4 v3, 0x0

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_2

    .line 87
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 88
    .local v0, "clh":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v4, "contentLen":I
    if-lez v4, :cond_0

    .line 92
    return v3

    .line 96
    .end local v4    # "contentLen":I
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v4

    .line 99
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 100
    .local v4, "teh":Lcz/msebera/android/httpclient/Header;
    if-eqz v4, :cond_2

    .line 101
    return v3

    .line 105
    .end local v0    # "clh":Lcz/msebera/android/httpclient/Header;
    .end local v4    # "teh":Lcz/msebera/android/httpclient/Header;
    :cond_2
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 106
    .local v0, "request":Lcz/msebera/android/httpclient/HttpRequest;
    const-string v4, "Close"

    const-string v5, "Connection"

    if-eqz v0, :cond_5

    .line 108
    :try_start_1
    new-instance v6, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-interface {v0, v5}, Lcz/msebera/android/httpclient/HttpRequest;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    .line 109
    .local v6, "ti":Lcz/msebera/android/httpclient/TokenIterator;
    :goto_1
    invoke-interface {v6}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 110
    invoke-interface {v6}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "token":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_3

    .line 112
    return v3

    .line 114
    .end local v7    # "token":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 118
    .end local v6    # "ti":Lcz/msebera/android/httpclient/TokenIterator;
    :cond_4
    goto :goto_2

    .line 115
    :catch_1
    move-exception v1

    .line 117
    .local v1, "px":Lcz/msebera/android/httpclient/ParseException;
    return v3

    .line 123
    .end local v1    # "px":Lcz/msebera/android/httpclient/ParseException;
    :cond_5
    :goto_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v6

    .line 124
    .local v6, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 125
    .local v1, "teh":Lcz/msebera/android/httpclient/Header;
    const/4 v7, 0x1

    if-eqz v1, :cond_6

    .line 126
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v8, "chunked"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 127
    return v3

    .line 130
    :cond_6
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 131
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 133
    .local v2, "clhs":[Lcz/msebera/android/httpclient/Header;
    array-length v8, v2

    if-ne v8, v7, :cond_8

    .line 134
    aget-object v8, v2, v3

    .line 136
    .local v8, "clh":Lcz/msebera/android/httpclient/Header;
    :try_start_2
    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .local v9, "contentLen":I
    if-gez v9, :cond_7

    .line 138
    return v3

    .line 142
    .end local v9    # "contentLen":I
    :cond_7
    nop

    .line 143
    .end local v8    # "clh":Lcz/msebera/android/httpclient/Header;
    goto :goto_3

    .line 140
    .restart local v8    # "clh":Lcz/msebera/android/httpclient/Header;
    :catch_2
    move-exception v4

    .line 141
    .local v4, "ex":Ljava/lang/NumberFormatException;
    return v3

    .line 144
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v8    # "clh":Lcz/msebera/android/httpclient/Header;
    :cond_8
    return v3

    .line 152
    .end local v2    # "clhs":[Lcz/msebera/android/httpclient/Header;
    :cond_9
    :goto_3
    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v2

    .line 153
    .local v2, "headerIterator":Lcz/msebera/android/httpclient/HeaderIterator;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 154
    const-string v5, "Proxy-Connection"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v2

    .line 180
    :cond_a
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 182
    :try_start_3
    new-instance v5, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-direct {v5, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    .line 183
    .local v5, "ti":Lcz/msebera/android/httpclient/TokenIterator;
    const/4 v8, 0x0

    .line 184
    .local v8, "keepalive":Z
    :goto_4
    invoke-interface {v5}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 185
    invoke-interface {v5}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "token":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 187
    return v3

    .line 188
    :cond_b
    const-string v10, "Keep-Alive"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v10, :cond_c

    .line 190
    const/4 v8, 0x1

    .line 192
    .end local v9    # "token":Ljava/lang/String;
    :cond_c
    goto :goto_4

    .line 193
    :cond_d
    if-eqz v8, :cond_e

    .line 194
    return v7

    .line 201
    .end local v5    # "ti":Lcz/msebera/android/httpclient/TokenIterator;
    .end local v8    # "keepalive":Z
    :cond_e
    goto :goto_5

    .line 198
    :catch_3
    move-exception v4

    .line 200
    .local v4, "px":Lcz/msebera/android/httpclient/ParseException;
    return v3

    .line 205
    .end local v4    # "px":Lcz/msebera/android/httpclient/ParseException;
    :cond_f
    :goto_5
    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v6, v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v3

    xor-int/2addr v3, v7

    return v3
.end method
