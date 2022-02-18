.class public Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "HttpRequestParser.java"


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

.field private final requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .param p3, "requestFactory"    # Lcz/msebera/android/httpclient/HttpRequestFactory;
    .param p4, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 80
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 81
    const-string v0, "Request factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequestFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .locals 4
    .param p1, "sessionBuffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    .line 92
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 96
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v2, v3, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    .line 97
    .local v2, "requestline":Lcz/msebera/android/httpclient/RequestLine;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    invoke-interface {v3, v2}, Lcz/msebera/android/httpclient/HttpRequestFactory;->newHttpRequest(Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v3

    return-object v3

    .line 93
    .end local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .end local v2    # "requestline":Lcz/msebera/android/httpclient/RequestLine;
    :cond_0
    new-instance v1, Lcz/msebera/android/httpclient/ConnectionClosedException;

    const-string v2, "Client closed connection"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
