.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 126
    sget-object v0, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 1
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "lineParser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .param p3, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;
    .param p4, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 98
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 99
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 101
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .param p3, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;
    .param p4, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 75
    const-string v0, "Response factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 78
    return-void
.end method


# virtual methods
.method protected bridge synthetic parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 7
    .param p1, "sessionBuffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "count":I
    const/4 v1, 0x0

    .line 137
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 138
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v2

    .line 139
    .local v2, "i":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    new-instance v3, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_1
    :goto_1
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v5, 0x0

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    move-object v1, v4

    .line 144
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v4, v5, v1}, Lcz/msebera/android/httpclient/message/LineParser;->hasProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    nop

    .line 158
    .end local v2    # "i":I
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v2, v3, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    .line 159
    .local v2, "statusline":Lcz/msebera/android/httpclient/StatusLine;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    return-object v3

    .line 147
    .local v2, "i":I
    :cond_2
    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0, v3, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->reject(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Garbage in response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 155
    :cond_3
    nop

    .end local v2    # "i":I
    add-int/lit8 v0, v0, 0x1

    .line 156
    goto :goto_0

    .line 149
    .restart local v2    # "i":I
    :cond_4
    new-instance v3, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v4, "The server failed to respond with a valid HTTP response"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected reject(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)Z
    .locals 1
    .param p1, "line"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "count"    # I

    .line 163
    const/4 v0, 0x0

    return v0
.end method
