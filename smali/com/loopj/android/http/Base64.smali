.class public Lcom/loopj/android/http/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/Base64$Encoder;,
        Lcom/loopj/android/http/Base64$Decoder;,
        Lcom/loopj/android/http/Base64$Coder;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/loopj/android/http/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 99
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/loopj/android/http/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 118
    new-instance v0, Lcom/loopj/android/http/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    .line 120
    .local v0, "decoder":Lcom/loopj/android/http/Base64$Decoder;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/loopj/android/http/Base64$Decoder;->process([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget v1, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    iget-object v2, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 126
    iget-object v1, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    return-object v1

    .line 131
    :cond_0
    iget v1, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    new-array v1, v1, [B

    .line 132
    .local v1, "temp":[B
    iget-object v2, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    iget v3, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-object v1

    .line 121
    .end local v1    # "temp":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 185
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 199
    new-instance v0, Lcom/loopj/android/http/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    .line 202
    .local v0, "encoder":Lcom/loopj/android/http/Base64$Encoder;
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 205
    .local v1, "output_len":I
    iget-boolean v2, v0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 206
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_3

    .line 207
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 210
    :cond_0
    rem-int/lit8 v2, p2, 0x3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 214
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 215
    nop

    .line 223
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_5

    if-lez p2, :cond_5

    .line 224
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v4

    .line 225
    iget-boolean v5, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 228
    :cond_5
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 229
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/loopj/android/http/Base64$Encoder;->process([BIIZ)Z

    .line 235
    iget-object v2, v0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    return-object v2
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/loopj/android/http/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
