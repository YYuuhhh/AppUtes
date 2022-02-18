.class public final Ljxl/biff/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# static fields
.field public static UNICODE_ENCODING:Ljava/lang/String;

.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/StringHelper;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/StringHelper;->logger:Ljxl/common/Logger;

    .line 44
    const-string v0, "UnicodeLittle"

    sput-object v0, Ljxl/biff/StringHelper;->UNICODE_ENCODING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getBytes(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "d"    # [B
    .param p2, "pos"    # I

    .line 126
    invoke-static {p0}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 127
    .local v0, "b":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-void
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljxl/WorkbookSettings;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # [B
    .param p1, "length"    # I
    .param p2, "pos"    # I
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 157
    const-string v0, ""

    if-nez p1, :cond_0

    .line 159
    return-object v0

    .line 164
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3}, Ljxl/WorkbookSettings;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p2, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 169
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Ljxl/biff/StringHelper;->logger:Ljxl/common/Logger;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method public static getUnicodeBytes(Ljava/lang/String;[BI)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "d"    # [B
    .param p2, "pos"    # I

    .line 140
    invoke-static {p0}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    .local v0, "b":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public static getUnicodeBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 96
    :try_start_0
    sget-object v0, Ljxl/biff/StringHelper;->UNICODE_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    .local v0, "b":[B
    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 102
    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    .line 103
    .local v1, "b2":[B
    const/4 v2, 0x0

    array-length v4, v1

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    move-object v0, v1

    .line 106
    .end local v1    # "b2":[B
    :cond_0
    return-object v0

    .line 108
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUnicodeString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # [B
    .param p1, "length"    # I
    .param p2, "pos"    # I

    .line 188
    mul-int/lit8 v0, p1, 0x2

    :try_start_0
    new-array v0, v0, [B

    .line 189
    .local v0, "b":[B
    const/4 v1, 0x0

    mul-int/lit8 v2, p1, 0x2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljxl/biff/StringHelper;->UNICODE_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 192
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    return-object v1
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;

    .line 213
    move-object v0, p0

    .line 214
    .local v0, "fmtstr":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, "pos":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "tmp":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 222
    .end local v2    # "tmp":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 223
    :cond_0
    return-object v0
.end method
