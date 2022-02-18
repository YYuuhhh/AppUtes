.class public final Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    .line 44
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 8

    .line 163
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 164
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 166
    :cond_0
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 197
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    .line 198
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 179
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 180
    goto :goto_0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 184
    :cond_4
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iput v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    .line 185
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 186
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 187
    :goto_1
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v7, v2, v0

    if-ne v7, v6, :cond_5

    .line 188
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v6, v2, v1

    .line 187
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 190
    :cond_5
    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_6

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_6

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_0

    .line 193
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getByte(I)I
    .locals 10
    .param p1, "position"    # I

    .line 275
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    .line 279
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v0, p1

    .line 280
    .local v1, "b1":I
    const/16 v3, 0x46

    const/16 v4, 0x66

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x61

    const/16 v8, 0x30

    if-lt v1, v8, :cond_0

    if-gt v1, v6, :cond_0

    .line 281
    sub-int/2addr v1, v8

    goto :goto_0

    .line 282
    :cond_0
    if-lt v1, v7, :cond_1

    if-gt v1, v4, :cond_1

    .line 283
    add-int/lit8 v1, v1, -0x57

    goto :goto_0

    .line 284
    :cond_1
    if-lt v1, v5, :cond_5

    if-gt v1, v3, :cond_5

    .line 285
    add-int/lit8 v1, v1, -0x37

    .line 289
    :goto_0
    add-int/lit8 v9, p1, 0x1

    aget-char v0, v0, v9

    .line 290
    .local v0, "b2":I
    if-lt v0, v8, :cond_2

    if-gt v0, v6, :cond_2

    .line 291
    sub-int/2addr v0, v8

    goto :goto_1

    .line 292
    :cond_2
    if-lt v0, v7, :cond_3

    if-gt v0, v4, :cond_3

    .line 293
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 294
    :cond_3
    if-lt v0, v5, :cond_4

    if-gt v0, v3, :cond_4

    .line 295
    add-int/lit8 v0, v0, -0x37

    .line 299
    :goto_1
    shl-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    return v2

    .line 297
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v0    # "b2":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    .end local v1    # "b1":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .locals 4

    .line 204
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 205
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 227
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 223
    :cond_0
    :pswitch_0
    aget-char v0, v1, v0

    return v0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getUTF8()C
    .locals 8

    .line 233
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 234
    .local v0, "res":I
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 235
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 236
    int-to-char v1, v0

    return v1

    .line 237
    :cond_0
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_7

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_7

    .line 239
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_1

    .line 240
    const/4 v2, 0x1

    .line 241
    .local v2, "count":I
    and-int/lit8 v0, v0, 0x1f

    goto :goto_0

    .line 242
    .end local v2    # "count":I
    :cond_1
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2

    .line 243
    const/4 v2, 0x2

    .line 244
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 246
    .end local v2    # "count":I
    :cond_2
    const/4 v2, 0x3

    .line 247
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0x7

    .line 250
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 251
    iget v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 252
    iget v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_5

    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v6, v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 255
    :cond_3
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 256
    invoke-direct {p0, v5}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v5

    .line 257
    .local v5, "b":I
    iget v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 258
    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_4

    .line 259
    return v3

    .line 261
    :cond_4
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    .end local v5    # "b":I
    :cond_5
    :goto_2
    return v3

    .line 263
    .end local v4    # "i":I
    :cond_6
    int-to-char v1, v0

    return v1

    .line 265
    .end local v2    # "count":I
    :cond_7
    return v3
.end method

.method private hexAV()Ljava/lang/String;
    .locals 6

    .line 121
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_7

    .line 125
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 126
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 130
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    .line 136
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 137
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 140
    :goto_1
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 143
    :cond_1
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_2

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_2

    .line 144
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 146
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 132
    :cond_3
    :goto_2
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 133
    nop

    .line 150
    :cond_4
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    .line 151
    .local v0, "hexLen":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 155
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 156
    .local v2, "encoded":[B
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .local v1, "p":I
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 157
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 156
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 159
    .end local v1    # "p":I
    .end local v3    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 152
    .end local v2    # "encoded":[B
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "hexLen":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 7

    .line 49
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 51
    :cond_0
    if-ne v0, v1, :cond_1

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_1
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 57
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 58
    :goto_1
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v5, v4, v0

    if-eq v5, v3, :cond_2

    aget-char v4, v4, v0

    if-eq v4, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 62
    :cond_2
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    .line 66
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 69
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 70
    :goto_2
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v6, v5, v0

    if-eq v6, v3, :cond_3

    aget-char v5, v5, v0

    if-ne v5, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 72
    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_5
    :goto_3
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 79
    :goto_4
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 83
    :cond_6
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v3, v0, v1

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_a

    :cond_7
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    :cond_8
    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_a

    .line 87
    :cond_9
    add-int/2addr v1, v2

    iput v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 89
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 63
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 4

    .line 93
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 94
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 95
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 97
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    .line 100
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 102
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 103
    nop

    .line 115
    :goto_1
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 104
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 105
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 108
    :cond_2
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 110
    :goto_2
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 111
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "attributeType"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 310
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 311
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 312
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    .line 313
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    .line 314
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "attType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    return-object v1

    .line 319
    :cond_0
    :goto_0
    const-string v2, ""

    .line 320
    .local v2, "attValue":Ljava/lang/String;
    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_1

    .line 321
    return-object v1

    .line 323
    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    .line 336
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 334
    :cond_2
    goto :goto_1

    .line 328
    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 329
    goto :goto_1

    .line 325
    :cond_4
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 326
    nop

    .line 341
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    return-object v2

    .line 344
    :cond_5
    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_6

    .line 345
    return-object v1

    .line 347
    :cond_6
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v8, v4, v3

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_9

    aget-char v6, v4, v3

    if-ne v6, v5, :cond_7

    goto :goto_2

    .line 348
    :cond_7
    aget-char v4, v4, v3

    if-ne v4, v7, :cond_8

    goto :goto_2

    .line 349
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 352
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_a

    .line 356
    .end local v2    # "attValue":Ljava/lang/String;
    goto :goto_0

    .line 354
    .restart local v2    # "attValue":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "attributeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 367
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 368
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 369
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    .line 370
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "attType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 374
    return-object v0

    .line 376
    :cond_0
    :goto_0
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v2, v3, :cond_b

    .line 377
    const-string v3, ""

    .line 378
    .local v3, "attValue":Ljava/lang/String;
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v4, v2

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v2, v4, :cond_3

    const/16 v4, 0x23

    if-eq v2, v4, :cond_2

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    .line 391
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 389
    :cond_1
    goto :goto_1

    .line 383
    :cond_2
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v3

    .line 384
    goto :goto_1

    .line 380
    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v3

    .line 381
    nop

    .line 396
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 400
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v2, v4, :cond_6

    .line 403
    goto :goto_3

    .line 405
    :cond_6
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v8, v4, v2

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_9

    aget-char v6, v4, v2

    if-ne v6, v5, :cond_7

    goto :goto_2

    .line 406
    :cond_7
    aget-char v4, v4, v2

    if-ne v4, v7, :cond_8

    goto :goto_2

    .line 407
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 410
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_a

    .line 414
    .end local v3    # "attValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 412
    .restart local v3    # "attValue":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    .end local v3    # "attValue":Ljava/lang/String;
    :cond_b
    :goto_3
    return-object v0
.end method
