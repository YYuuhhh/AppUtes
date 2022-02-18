.class Ljxl/write/biff/SSTContinueRecord;
.super Ljxl/biff/WritableRecordData;
.source "SSTContinueRecord.java"


# static fields
.field private static maxBytes:I


# instance fields
.field private byteCount:I

.field private data:[B

.field private firstString:Ljava/lang/String;

.field private firstStringLength:I

.field private includeLength:Z

.field private stringLengths:Ljava/util/ArrayList;

.field private strings:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/16 v0, 0x2020

    sput v0, Ljxl/write/biff/SSTContinueRecord;->maxBytes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    sget-object v0, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SSTContinueRecord;->strings:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SSTContinueRecord;->stringLengths:Ljava/util/ArrayList;

    .line 84
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 152
    .local v0, "bytes":I
    iget v1, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    sget v2, Ljxl/write/biff/SSTContinueRecord;->maxBytes:I

    add-int/lit8 v2, v2, -0x5

    if-lt v1, v2, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 157
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/SSTContinueRecord;->stringLengths:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget v1, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    add-int v2, v0, v1

    sget v3, Ljxl/write/biff/SSTContinueRecord;->maxBytes:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 162
    iget-object v1, p0, Ljxl/write/biff/SSTContinueRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget v1, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    .line 164
    return v4

    .line 168
    :cond_1
    add-int/lit8 v3, v3, -0x3

    sub-int/2addr v3, v1

    .line 169
    .local v3, "bytesLeft":I
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_2

    div-int/lit8 v1, v3, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 173
    .local v1, "charsAvailable":I
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/SSTContinueRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget v2, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    iput v2, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    return v2
.end method

.method public getData()[B
    .locals 9

    .line 186
    iget v0, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    .line 188
    const/4 v1, 0x0

    .line 191
    .local v1, "pos":I
    iget-boolean v2, p0, Ljxl/write/biff/SSTContinueRecord;->includeLength:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 193
    iget v2, p0, Ljxl/write/biff/SSTContinueRecord;->firstStringLength:I

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 194
    iget-object v0, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    aput-byte v5, v0, v4

    .line 195
    const/4 v0, 0x3

    .end local v1    # "pos":I
    .local v0, "pos":I
    goto :goto_0

    .line 200
    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    aput-byte v5, v0, v3

    .line 201
    const/4 v0, 0x1

    .line 204
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/SSTContinueRecord;->firstString:Ljava/lang/String;

    iget-object v2, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    invoke-static {v1, v2, v0}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 205
    iget-object v1, p0, Ljxl/write/biff/SSTContinueRecord;->firstString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 208
    iget-object v1, p0, Ljxl/write/biff/SSTContinueRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, "i":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 210
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 211
    .local v3, "length":I
    const/4 v6, 0x0

    .line 212
    .local v6, "count":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    .line 215
    iget-object v7, p0, Ljxl/write/biff/SSTContinueRecord;->stringLengths:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 216
    iget-object v7, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    invoke-static {v3, v7, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 217
    iget-object v7, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    add-int/lit8 v8, v0, 0x2

    aput-byte v5, v7, v8

    .line 218
    add-int/lit8 v8, v0, 0x3

    invoke-static {v2, v7, v8}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 223
    :cond_1
    iget-object v4, p0, Ljxl/write/biff/SSTContinueRecord;->data:[B

    return-object v4
.end method

.method public getOffset()I
    .locals 1

    .line 135
    iget v0, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    return v0
.end method

.method public setFirstString(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 95
    iput-boolean p2, p0, Ljxl/write/biff/SSTContinueRecord;->includeLength:Z

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SSTContinueRecord;->firstStringLength:I

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "bytes":I
    iget-boolean v1, p0, Ljxl/write/biff/SSTContinueRecord;->includeLength:Z

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .end local v0    # "bytes":I
    .local v1, "bytes":I
    goto :goto_0

    .line 106
    .end local v1    # "bytes":I
    .restart local v0    # "bytes":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    .line 109
    .end local v0    # "bytes":I
    .restart local v1    # "bytes":I
    :goto_0
    sget v0, Ljxl/write/biff/SSTContinueRecord;->maxBytes:I

    const/4 v2, 0x0

    if-gt v1, v0, :cond_1

    .line 111
    iput-object p1, p0, Ljxl/write/biff/SSTContinueRecord;->firstString:Ljava/lang/String;

    .line 112
    iget v0, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    .line 113
    return v2

    .line 118
    :cond_1
    iget-boolean v3, p0, Ljxl/write/biff/SSTContinueRecord;->includeLength:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x2

    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 122
    .local v0, "charsAvailable":I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/SSTContinueRecord;->firstString:Ljava/lang/String;

    .line 123
    sget v2, Ljxl/write/biff/SSTContinueRecord;->maxBytes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljxl/write/biff/SSTContinueRecord;->byteCount:I

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    return v2
.end method
