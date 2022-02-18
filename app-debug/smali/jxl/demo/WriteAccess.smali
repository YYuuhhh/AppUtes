.class Ljxl/demo/WriteAccess;
.super Ljava/lang/Object;
.source "WriteAccess.java"


# instance fields
.field private reader:Ljxl/read/biff/BiffRecordReader;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    .line 44
    .local v0, "ws":Ljxl/WorkbookSettings;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljxl/read/biff/File;

    invoke-direct {v2, v1, v0}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V

    .line 46
    .local v2, "f":Ljxl/read/biff/File;
    new-instance v3, Ljxl/read/biff/BiffRecordReader;

    invoke-direct {v3, v2}, Ljxl/read/biff/BiffRecordReader;-><init>(Ljxl/read/biff/File;)V

    iput-object v3, p0, Ljxl/demo/WriteAccess;->reader:Ljxl/read/biff/BiffRecordReader;

    .line 48
    invoke-direct {p0, v0}, Ljxl/demo/WriteAccess;->display(Ljxl/WorkbookSettings;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 50
    return-void
.end method

.method private display(Ljxl/WorkbookSettings;)V
    .locals 6
    .param p1, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "r":Ljxl/read/biff/Record;
    const/4 v1, 0x0

    .line 59
    .local v1, "found":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Ljxl/demo/WriteAccess;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v2}, Ljxl/read/biff/BiffRecordReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 61
    iget-object v2, p0, Ljxl/demo/WriteAccess;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v2}, Ljxl/read/biff/BiffRecordReader;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v3, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    if-ne v2, v3, :cond_0

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    if-nez v1, :cond_2

    .line 70
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Warning:  could not find write access record"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v2

    .line 76
    .local v2, "data":[B
    const/4 v3, 0x0

    .line 78
    .local v3, "s":Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, p1}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    return-void
.end method
