.class public Lcz/msebera/android/httpclient/message/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final ESCAPE:C = '\\'

.field public static final HT:C = '\t'

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

.field public static final LF:C = '\n'

.field public static final SP:C = ' '


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/message/TokenParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/TokenParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .locals 4
    .param p0, "b"    # [I

    .line 48
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 49
    .local v0, "bitset":Ljava/util/BitSet;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 50
    .local v3, "aB":I
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 49
    .end local v3    # "aB":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 74
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public copyContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .param p4, "dst"    # Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 180
    .local v0, "pos":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 181
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 182
    .local v2, "indexTo":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 183
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 184
    .local v4, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-static {v4}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    goto :goto_1

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 188
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .end local v4    # "current":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 191
    return-void
.end method

.method public copyQuotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .param p3, "dst"    # Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 233
    .local v0, "pos":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 234
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 235
    .local v2, "indexTo":I
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 236
    .local v3, "current":C
    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 237
    return-void

    .line 239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, "escaped":Z
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_7

    .line 243
    invoke-virtual {p1, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 244
    const/16 v7, 0x5c

    if-eqz v5, :cond_3

    .line 245
    if-eq v3, v4, :cond_2

    if-eq v3, v7, :cond_2

    .line 246
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    const/4 v5, 0x0

    goto :goto_1

    .line 251
    :cond_3
    if-ne v3, v4, :cond_4

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 253
    goto :goto_2

    .line 255
    :cond_4
    if-ne v3, v7, :cond_5

    .line 256
    const/4 v5, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const/16 v7, 0xd

    if-eq v3, v7, :cond_6

    const/16 v7, 0xa

    if-eq v3, v7, :cond_6

    .line 258
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v6    # "i":I
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 263
    return-void
.end method

.method public copyUnquotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .param p4, "dst"    # Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 206
    .local v0, "pos":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 207
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 208
    .local v2, "indexTo":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 209
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 210
    .local v4, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 211
    :cond_0
    invoke-static {v4}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 212
    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 215
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .end local v4    # "current":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v3    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 218
    return-void
.end method

.method public parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "dst":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 91
    .local v1, "whitespace":Z
    :goto_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 92
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 93
    .local v2, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    goto :goto_2

    .line 95
    :cond_0
    invoke-static {v2}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/TokenParser;->skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 97
    const/4 v1, 0x1

    goto :goto_1

    .line 99
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 100
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    .line 103
    const/4 v1, 0x0

    .line 105
    .end local v2    # "current":C
    :goto_1
    goto :goto_0

    .line 106
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "dst":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 122
    .local v1, "whitespace":Z
    :goto_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 124
    .local v2, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    goto :goto_2

    .line 126
    :cond_0
    invoke-static {v2}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/TokenParser;->skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 128
    const/4 v1, 0x1

    goto :goto_1

    .line 129
    :cond_1
    const/16 v3, 0x22

    const/16 v4, 0x20

    if-ne v2, v3, :cond_3

    .line 130
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyQuotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyUnquotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    .line 140
    const/4 v1, 0x0

    .line 142
    .end local v2    # "current":C
    :goto_1
    goto :goto_0

    .line 143
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .locals 6
    .param p1, "buf"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "cursor"    # Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 154
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 155
    .local v0, "pos":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 156
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 157
    .local v2, "indexTo":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 158
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 159
    .local v4, "current":C
    invoke-static {v4}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    goto :goto_1

    .line 162
    :cond_0
    nop

    .end local v4    # "current":C
    add-int/lit8 v0, v0, 0x1

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 165
    return-void
.end method
