.class public Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxGarbageLines:I

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .param p3, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;
    .param p4, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 80
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 81
    const-string v0, "Response factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 84
    invoke-virtual {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    .line 85
    return-void
.end method


# virtual methods
.method protected getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .locals 2
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 88
    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .locals 7
    .param p1, "sessionBuffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "count":I
    const/4 v1, 0x0

    .line 101
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 102
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v2

    .line 103
    .local v2, "i":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    new-instance v3, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_1
    :goto_1
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v5, 0x0

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    move-object v1, v4

    .line 108
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v4, v5, v1}, Lcz/msebera/android/httpclient/message/LineParser;->hasProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    nop

    .line 122
    .end local v2    # "i":I
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v2, v3, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    .line 123
    .local v2, "statusline":Lcz/msebera/android/httpclient/StatusLine;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    return-object v3

    .line 111
    .local v2, "i":I
    :cond_2
    if-eq v2, v3, :cond_4

    iget v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-ge v0, v3, :cond_4

    .line 116
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Garbage in response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 119
    :cond_3
    nop

    .end local v2    # "i":I
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_0

    .line 113
    .restart local v2    # "i":I
    :cond_4
    new-instance v3, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v4, "The server failed to respond with a valid HTTP response"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
