.class public Lcz/msebera/android/httpclient/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/LineParser;


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicLineParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;


# instance fields
.field protected final protocol:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineParser;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 74
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 1
    .param p1, "proto"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->protocol:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 92
    return-void
.end method

.method public static parseHeader(Ljava/lang/String;Lcz/msebera/android/httpclient/message/LineParser;)Lcz/msebera/android/httpclient/Header;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 430
    const-string v0, "Value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 433
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 434
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 435
    :goto_0
    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/message/LineParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 434
    return-object v1
.end method

.method public static parseProtocolVersion(Ljava/lang/String;Lcz/msebera/android/httpclient/message/LineParser;)Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 106
    const-string v0, "Value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 109
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 111
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 112
    :goto_0
    invoke-interface {v2, v0, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v2

    .line 111
    return-object v2
.end method

.method public static parseRequestLine(Ljava/lang/String;Lcz/msebera/android/httpclient/message/LineParser;)Lcz/msebera/android/httpclient/RequestLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 257
    const-string v0, "Value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 260
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 262
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 263
    :goto_0
    invoke-interface {v2, v0, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    .line 262
    return-object v2
.end method

.method public static parseStatusLine(Ljava/lang/String;Lcz/msebera/android/httpclient/message/LineParser;)Lcz/msebera/android/httpclient/StatusLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 345
    const-string v0, "Value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 348
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 349
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 350
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 351
    :goto_0
    invoke-interface {v2, v0, v1}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    .line 350
    return-object v2
.end method


# virtual methods
.method protected createProtocolVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->protocol:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->forVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/RequestLine;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 337
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v0
.end method

.method protected createStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)Lcz/msebera/android/httpclient/StatusLine;
    .locals 1
    .param p1, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 422
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method public hasProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z
    .locals 9
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 210
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 214
    .local v0, "index":I
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->protocol:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "protoname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 217
    .local v2, "protolength":I
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 219
    return v5

    .line 222
    :cond_0
    if-gez v0, :cond_1

    .line 225
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    sub-int v0, v3, v2

    goto :goto_1

    .line 226
    :cond_1
    if-nez v0, :cond_2

    .line 228
    :goto_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 229
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    :goto_1
    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 236
    return v5

    .line 241
    :cond_3
    const/4 v3, 0x1

    .line 242
    .local v3, "ok":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/4 v6, 0x1

    if-eqz v3, :cond_5

    if-ge v4, v2, :cond_5

    .line 243
    add-int v7, v0, v4

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    move v3, v6

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 245
    .end local v4    # "j":I
    :cond_5
    if-eqz v3, :cond_7

    .line 246
    add-int v4, v0, v2

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_6

    move v5, v6

    :cond_6
    move v3, v5

    .line 249
    :cond_7
    return v3
.end method

.method public parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 445
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v0
.end method

.method public parseProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 13
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 120
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->protocol:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "protoname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 125
    .local v1, "protolength":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v2

    .line 126
    .local v2, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v3

    .line 128
    .local v3, "indexTo":I
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 130
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    .line 133
    .local v4, "i":I
    add-int v5, v4, v1

    add-int/lit8 v5, v5, 0x4

    const-string v6, "Not a valid protocol version: "

    if-gt v5, v3, :cond_7

    .line 140
    const/4 v5, 0x1

    .line 141
    .local v5, "ok":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_1

    if-ge v7, v1, :cond_1

    .line 142
    add-int v10, v4, v7

    invoke-virtual {p1, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_0

    move v8, v9

    :cond_0
    move v5, v8

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    .end local v7    # "j":I
    :cond_1
    if-eqz v5, :cond_3

    .line 145
    add-int v7, v4, v1

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_2

    move v8, v9

    :cond_2
    move v5, v8

    .line 147
    :cond_3
    if-eqz v5, :cond_6

    .line 153
    add-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    .line 155
    const/16 v6, 0x2e

    invoke-virtual {p1, v6, v4, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result v6

    .line 156
    .local v6, "period":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 163
    :try_start_0
    invoke-virtual {p1, v4, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    .local v8, "major":I
    nop

    .line 169
    add-int/lit8 v4, v6, 0x1

    .line 171
    const/16 v9, 0x20

    invoke-virtual {p1, v9, v4, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result v9

    .line 172
    .local v9, "blank":I
    if-ne v9, v7, :cond_4

    .line 173
    move v9, v3

    .line 177
    :cond_4
    :try_start_1
    invoke-virtual {p1, v4, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .local v7, "minor":I
    nop

    .line 184
    invoke-virtual {p2, v9}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 186
    invoke-virtual {p0, v8, v7}, Lcz/msebera/android/httpclient/message/BasicLineParser;->createProtocolVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v10

    return-object v10

    .line 178
    .end local v7    # "minor":I
    :catch_0
    move-exception v7

    .line 179
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lcz/msebera/android/httpclient/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid protocol minor version number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 181
    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 164
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "major":I
    .end local v9    # "blank":I
    :catch_1
    move-exception v7

    .line 165
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Lcz/msebera/android/httpclient/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid protocol major version number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 167
    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 157
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    new-instance v7, Lcz/msebera/android/httpclient/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid protocol version number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 159
    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    .end local v6    # "period":I
    :cond_6
    new-instance v7, Lcz/msebera/android/httpclient/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 150
    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    .end local v5    # "ok":Z
    :cond_7
    new-instance v5, Lcz/msebera/android/httpclient/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public parseRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/RequestLine;
    .locals 11
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 280
    const-string v0, "Invalid request line: "

    const-string v1, "Char array buffer"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v1, "Parser cursor"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 283
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 286
    .local v2, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 287
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    .line 289
    .local v3, "i":I
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result v5

    .line 290
    .local v5, "blank":I
    if-ltz v5, :cond_2

    .line 294
    invoke-virtual {p1, v3, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 297
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 298
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v7

    move v3, v7

    .line 300
    invoke-virtual {p1, v4, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result v4

    .line 301
    .end local v5    # "blank":I
    .local v4, "blank":I
    if-ltz v4, :cond_1

    .line 305
    invoke-virtual {p1, v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 308
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->parseProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v7

    .line 310
    .local v7, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 311
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    invoke-virtual {p0, v6, v5, v7}, Lcz/msebera/android/httpclient/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v8, Lcz/msebera/android/httpclient/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 313
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    throw v8

    .line 302
    .end local v5    # "uri":Ljava/lang/String;
    .end local v7    # "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .restart local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :cond_1
    new-instance v5, Lcz/msebera/android/httpclient/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 303
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    throw v5

    .line 291
    .end local v4    # "blank":I
    .end local v6    # "method":Ljava/lang/String;
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .local v5, "blank":I
    .restart local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :cond_2
    new-instance v4, Lcz/msebera/android/httpclient/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 292
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    throw v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v3    # "i":I
    .end local v5    # "blank":I
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .restart local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcz/msebera/android/httpclient/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;
    .locals 10
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 359
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 362
    .local v0, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 366
    .local v1, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->parseProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v2

    .line 369
    .local v2, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 370
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    .line 372
    .local v3, "i":I
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v3, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result v4

    .line 373
    .local v4, "blank":I
    if-gez v4, :cond_0

    .line 374
    move v4, v1

    .line 377
    :cond_0
    invoke-virtual {p1, v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "s":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "Status line contains invalid status code: "

    if-ge v6, v7, :cond_2

    .line 379
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 378
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 380
    :cond_1
    new-instance v7, Lcz/msebera/android/httpclient/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 382
    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexFrom":I
    .end local v1    # "indexTo":I
    .end local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    throw v7
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    .end local v6    # "j":I
    .restart local v0    # "indexFrom":I
    .restart local v1    # "indexTo":I
    .restart local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :cond_2
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    .local v6, "statusCode":I
    nop

    .line 393
    move v3, v4

    .line 395
    if-ge v3, v1, :cond_3

    .line 396
    :try_start_3
    invoke-virtual {p1, v3, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "reasonPhrase":Ljava/lang/String;
    goto :goto_1

    .line 398
    .end local v7    # "reasonPhrase":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    .line 400
    .restart local v7    # "reasonPhrase":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2, v6, v7}, Lcz/msebera/android/httpclient/message/BasicLineParser;->createStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v8

    return-object v8

    .line 387
    .end local v6    # "statusCode":I
    .end local v7    # "reasonPhrase":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 388
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lcz/msebera/android/httpclient/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 390
    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexFrom":I
    .end local v1    # "indexTo":I
    .end local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    throw v7
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 402
    .end local v2    # "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    .end local v3    # "i":I
    .end local v4    # "blank":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "indexFrom":I
    .restart local v1    # "indexTo":I
    .restart local p1    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :catch_1
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcz/msebera/android/httpclient/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid status line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected skipWhitespace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .locals 3
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 453
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 454
    .local v0, "pos":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 455
    .local v1, "indexTo":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 456
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 460
    return-void
.end method
