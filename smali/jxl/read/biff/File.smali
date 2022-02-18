.class public Ljxl/read/biff/File;
.super Ljava/lang/Object;
.source "File.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arrayGrowSize:I

.field private compoundFile:Ljxl/read/biff/CompoundFile;

.field private data:[B

.field private filePos:I

.field private initialFileSize:I

.field private oldPos:I

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Ljxl/read/biff/File;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/File;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Ljxl/read/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    .line 87
    invoke-virtual {p2}, Ljxl/WorkbookSettings;->getInitialFileSize()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/File;->initialFileSize:I

    .line 88
    iget-object v0, p0, Ljxl/read/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getArrayGrowSize()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/File;->arrayGrowSize:I

    .line 90
    iget v0, p0, Ljxl/read/biff/File;->initialFileSize:I

    new-array v0, v0, [B

    .line 91
    .local v0, "d":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 92
    .local v1, "bytesRead":I
    move v2, v1

    .line 96
    .local v2, "pos":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_6

    .line 101
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 103
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 106
    array-length v3, v0

    iget v4, p0, Ljxl/read/biff/File;->arrayGrowSize:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 107
    .local v3, "newArray":[B
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v0, v3

    .line 110
    .end local v3    # "newArray":[B
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 111
    add-int/2addr v2, v1

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 119
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 122
    if-eqz v1, :cond_5

    .line 127
    new-instance v3, Ljxl/read/biff/CompoundFile;

    invoke-direct {v3, v0, p2}, Ljxl/read/biff/CompoundFile;-><init>([BLjxl/WorkbookSettings;)V

    .line 130
    .local v3, "cf":Ljxl/read/biff/CompoundFile;
    :try_start_0
    const-string/jumbo v4, "workbook"

    invoke-virtual {v3, v4}, Ljxl/read/biff/CompoundFile;->getStream(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Ljxl/read/biff/File;->data:[B
    :try_end_0
    .catch Ljxl/read/biff/BiffException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_1

    .line 132
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljxl/read/biff/BiffException;
    const-string v5, "book"

    invoke-virtual {v3, v5}, Ljxl/read/biff/CompoundFile;->getStream(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Ljxl/read/biff/File;->data:[B

    .line 138
    .end local v4    # "e":Ljxl/read/biff/BiffException;
    :goto_1
    iget-object v4, p0, Ljxl/read/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v4}, Ljxl/WorkbookSettings;->getPropertySetsDisabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljxl/read/biff/CompoundFile;->getNumberOfPropertySets()I

    move-result v4

    sget-object v5, Ljxl/biff/BaseCompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    array-length v5, v5

    if-le v4, v5, :cond_3

    .line 142
    iput-object v3, p0, Ljxl/read/biff/File;->compoundFile:Ljxl/read/biff/CompoundFile;

    .line 145
    :cond_3
    const/4 v3, 0x0

    .line 147
    iget-object v4, p0, Ljxl/read/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v4}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 149
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 159
    :cond_4
    return-void

    .line 124
    .end local v3    # "cf":Ljxl/read/biff/CompoundFile;
    :cond_5
    new-instance v3, Ljxl/read/biff/BiffException;

    sget-object v4, Ljxl/read/biff/BiffException;->excelFileNotFound:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v3, v4}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v3

    .line 98
    :cond_6
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "d"    # [B

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Ljxl/read/biff/File;->data:[B

    .line 172
    return-void
.end method

.method private moveToFirstBof()V
    .locals 4

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "bofFound":Z
    :goto_0
    if-nez v0, :cond_1

    .line 277
    iget-object v1, p0, Ljxl/read/biff/File;->data:[B

    iget v2, p0, Ljxl/read/biff/File;->filePos:I

    aget-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v3, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 278
    .local v1, "code":I
    sget-object v2, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    iget v2, v2, Ljxl/biff/Type;->value:I

    if-ne v1, v2, :cond_0

    .line 280
    const/4 v0, 0x1

    goto :goto_1

    .line 284
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Ljxl/read/biff/File;->skip(I)V

    .line 286
    .end local v1    # "code":I
    :goto_1
    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/read/biff/File;->data:[B

    .line 304
    return-void
.end method

.method public close()V
    .locals 0

    .line 296
    return-void
.end method

.method getCompoundFile()Ljxl/read/biff/CompoundFile;
    .locals 1

    .line 326
    iget-object v0, p0, Ljxl/read/biff/File;->compoundFile:Ljxl/read/biff/CompoundFile;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .line 238
    iget v0, p0, Ljxl/read/biff/File;->filePos:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 314
    iget v0, p0, Ljxl/read/biff/File;->filePos:I

    iget-object v1, p0, Ljxl/read/biff/File;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method next()Ljxl/read/biff/Record;
    .locals 3

    .line 181
    new-instance v0, Ljxl/read/biff/Record;

    iget-object v1, p0, Ljxl/read/biff/File;->data:[B

    iget v2, p0, Ljxl/read/biff/File;->filePos:I

    invoke-direct {v0, v1, v2, p0}, Ljxl/read/biff/Record;-><init>([BILjxl/read/biff/File;)V

    .line 182
    .local v0, "r":Ljxl/read/biff/Record;
    return-object v0
.end method

.method peek()Ljxl/read/biff/Record;
    .locals 4

    .line 192
    iget v0, p0, Ljxl/read/biff/File;->filePos:I

    .line 193
    .local v0, "tempPos":I
    new-instance v1, Ljxl/read/biff/Record;

    iget-object v2, p0, Ljxl/read/biff/File;->data:[B

    iget v3, p0, Ljxl/read/biff/File;->filePos:I

    invoke-direct {v1, v2, v3, p0}, Ljxl/read/biff/Record;-><init>([BILjxl/read/biff/File;)V

    .line 194
    .local v1, "r":Ljxl/read/biff/Record;
    iput v0, p0, Ljxl/read/biff/File;->filePos:I

    .line 195
    return-object v1
.end method

.method public read(II)[B
    .locals 5
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .line 217
    new-array v0, p2, [B

    .line 220
    .local v0, "ret":[B
    :try_start_0
    iget-object v1, p0, Ljxl/read/biff/File;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v2, Ljxl/read/biff/File;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array index out of bounds at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " record length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->error(Ljava/lang/Object;)V

    .line 226
    throw v1
.end method

.method public restorePos()V
    .locals 1

    .line 266
    iget v0, p0, Ljxl/read/biff/File;->oldPos:I

    iput v0, p0, Ljxl/read/biff/File;->filePos:I

    .line 267
    return-void
.end method

.method public setPos(I)V
    .locals 1
    .param p1, "p"    # I

    .line 254
    iget v0, p0, Ljxl/read/biff/File;->filePos:I

    iput v0, p0, Ljxl/read/biff/File;->oldPos:I

    .line 255
    iput p1, p0, Ljxl/read/biff/File;->filePos:I

    .line 256
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 205
    iget v0, p0, Ljxl/read/biff/File;->filePos:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/read/biff/File;->filePos:I

    .line 206
    return-void
.end method
