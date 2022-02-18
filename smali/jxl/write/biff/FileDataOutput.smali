.class Ljxl/write/biff/FileDataOutput;
.super Ljava/lang/Object;
.source "FileDataOutput.java"

# interfaces
.implements Ljxl/write/biff/ExcelDataOutput;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:Ljava/io/RandomAccessFile;

.field private temporaryFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/write/biff/FileDataOutput;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/FileDataOutput;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "tmpdir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "jxl"

    const-string v1, ".tmp"

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FileDataOutput;->temporaryFile:Ljava/io/File;

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 58
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljxl/write/biff/FileDataOutput;->temporaryFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 121
    iget-object v0, p0, Ljxl/write/biff/FileDataOutput;->temporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    return-void
.end method

.method public getPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public setData([BI)V
    .locals 5
    .param p1, "newdata"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 93
    .local v0, "curpos":J
    iget-object v2, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    iget-object v2, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 95
    iget-object v2, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 96
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 70
    return-void
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 104
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 105
    .local v1, "length":I
    iget-object v2, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/FileDataOutput;->data:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method
