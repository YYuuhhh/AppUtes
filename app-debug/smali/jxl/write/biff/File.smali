.class public final Ljxl/write/biff/File;
.super Ljava/lang/Object;
.source "File.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arrayGrowSize:I

.field private data:Ljxl/write/biff/ExcelDataOutput;

.field private initialFileSize:I

.field private outputStream:Ljava/io/OutputStream;

.field private pos:I

.field readCompoundFile:Ljxl/read/biff/CompoundFile;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/write/biff/File;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/File;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "rcf"    # Ljxl/read/biff/CompoundFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    .line 84
    iput-object p2, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    .line 85
    iput-object p3, p0, Ljxl/write/biff/File;->readCompoundFile:Ljxl/read/biff/CompoundFile;

    .line 86
    invoke-direct {p0}, Ljxl/write/biff/File;->createDataOutput()V

    .line 87
    return-void
.end method

.method private createDataOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getUseTemporaryFileDuringWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljxl/write/biff/FileDataOutput;

    iget-object v1, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getTemporaryFileDuringWriteDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/FileDataOutput;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getInitialFileSize()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/File;->initialFileSize:I

    .line 99
    iget-object v0, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getArrayGrowSize()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/File;->arrayGrowSize:I

    .line 101
    new-instance v0, Ljxl/write/biff/MemoryDataOutput;

    iget v1, p0, Ljxl/write/biff/File;->initialFileSize:I

    iget v2, p0, Ljxl/write/biff/File;->arrayGrowSize:I

    invoke-direct {v0, v1, v2}, Ljxl/write/biff/MemoryDataOutput;-><init>(II)V

    iput-object v0, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method close(Z)V
    .locals 5
    .param p1, "cs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/biff/JxlWriteException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljxl/write/biff/CompoundFile;

    iget-object v1, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    invoke-interface {v1}, Ljxl/write/biff/ExcelDataOutput;->getPosition()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Ljxl/write/biff/File;->readCompoundFile:Ljxl/read/biff/CompoundFile;

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/write/biff/CompoundFile;-><init>(Ljxl/write/biff/ExcelDataOutput;ILjava/io/OutputStream;Ljxl/read/biff/CompoundFile;)V

    .line 120
    .local v0, "cf":Ljxl/write/biff/CompoundFile;
    invoke-virtual {v0}, Ljxl/write/biff/CompoundFile;->write()V

    .line 122
    iget-object v1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 123
    iget-object v1, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    invoke-interface {v1}, Ljxl/write/biff/ExcelDataOutput;->close()V

    .line 125
    if-eqz p1, :cond_0

    .line 127
    iget-object v1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    .line 133
    iget-object v1, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 137
    :cond_1
    return-void
.end method

.method getPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    invoke-interface {v0}, Ljxl/write/biff/ExcelDataOutput;->getPosition()I

    move-result v0

    return v0
.end method

.method setData([BI)V
    .locals 1
    .param p1, "newdata"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    invoke-interface {v0, p1, p2}, Ljxl/write/biff/ExcelDataOutput;->setData([BI)V

    .line 172
    return-void
.end method

.method public setOutputFile(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Ljxl/write/biff/File;->logger:Ljxl/common/Logger;

    const-string v1, "Rewriting a workbook with non-empty data"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iput-object p1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    .line 189
    invoke-direct {p0}, Ljxl/write/biff/File;->createDataOutput()V

    .line 190
    return-void
.end method

.method public write(Ljxl/biff/ByteData;)V
    .locals 2
    .param p1, "record"    # Ljxl/biff/ByteData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljxl/biff/ByteData;->getBytes()[B

    move-result-object v0

    .line 149
    .local v0, "bytes":[B
    iget-object v1, p0, Ljxl/write/biff/File;->data:Ljxl/write/biff/ExcelDataOutput;

    invoke-interface {v1, v0}, Ljxl/write/biff/ExcelDataOutput;->write([B)V

    .line 150
    return-void
.end method
