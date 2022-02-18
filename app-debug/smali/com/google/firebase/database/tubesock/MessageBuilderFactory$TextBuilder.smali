.class Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;
.super Ljava/lang/Object;
.source "MessageBuilderFactory.java"

# interfaces
.implements Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/MessageBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextBuilder"
.end annotation


# static fields
.field private static localDecoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static localEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private carryOver:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$1;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    .line 81
    new-instance v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$2;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    .line 98
    return-void
.end method

.method private decodeString([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B

    .line 131
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "input":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 133
    .local v1, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v2, "text":Ljava/lang/String;
    return-object v2

    .line 135
    .end local v0    # "input":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private decodeStringStreaming([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .line 150
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->getBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 151
    .local v1, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 152
    .local v2, "bufSize":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 154
    .local v3, "output":Ljava/nio/CharBuffer;
    :goto_0
    sget-object v4, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localDecoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetDecoder;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 155
    .local v4, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    nop

    .line 170
    .end local v4    # "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_1

    .line 171
    iput-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    .line 174
    :cond_1
    invoke-static {v3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 175
    .local v4, "test":Ljava/nio/CharBuffer;
    sget-object v5, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->localEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "text":Ljava/lang/String;
    return-object v0

    .line 161
    .end local v0    # "text":Ljava/lang/String;
    .local v4, "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 164
    .end local v2    # "bufSize":I
    .local v5, "bufSize":I
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 165
    .local v2, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 166
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    move-object v3, v2

    move v2, v5

    .line 169
    .end local v4    # "result":Ljava/nio/charset/CoderResult;
    .end local v5    # "bufSize":I
    .local v2, "bufSize":I
    :cond_3
    goto :goto_0

    .line 179
    .end local v1    # "input":Ljava/nio/ByteBuffer;
    .end local v2    # "bufSize":I
    .end local v3    # "output":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    return-object v0
.end method

.method private getBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .line 185
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 186
    array-length v1, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 191
    return-object v0

    .line 193
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendBytes([B)Z
    .locals 2
    .param p1, "bytes"    # [B

    .line 106
    invoke-direct {p0, p1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->decodeString([B)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "nextFrame":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const/4 v1, 0x1

    return v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->carryOver:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketMessage;

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$TextBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketMessage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
