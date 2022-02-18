.class Ljxl/demo/BiffDump;
.super Ljava/lang/Object;
.source "BiffDump.java"


# static fields
.field private static final bytesPerLine:I = 0x10


# instance fields
.field private bofs:I

.field private fontIndex:I

.field private reader:Ljxl/read/biff/BiffRecordReader;

.field private recordNames:Ljava/util/HashMap;

.field private writer:Ljava/io/BufferedWriter;

.field private xfIndex:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    .line 66
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljxl/read/biff/File;

    new-instance v2, Ljxl/WorkbookSettings;

    invoke-direct {v2}, Ljxl/WorkbookSettings;-><init>()V

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V

    .line 68
    .local v1, "f":Ljxl/read/biff/File;
    new-instance v2, Ljxl/read/biff/BiffRecordReader;

    invoke-direct {v2, v1}, Ljxl/read/biff/BiffRecordReader;-><init>(Ljxl/read/biff/File;)V

    iput-object v2, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    .line 70
    invoke-direct {p0}, Ljxl/demo/BiffDump;->buildNameHash()V

    .line 71
    invoke-direct {p0}, Ljxl/demo/BiffDump;->dump()V

    .line 73
    iget-object v2, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 74
    iget-object v2, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 76
    return-void
.end method

.method private buildNameHash()V
    .locals 3

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    .line 85
    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    const-string v2, "BOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    const-string v2, "EOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    const-string v2, "FONT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    const-string v2, "SST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    const-string v2, "LABELSST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    const-string v2, "WRITEACCESS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    const-string v2, "FORMULA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    const-string v2, "XF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    const-string v2, "MULRK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    const-string v2, "NUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    const-string v2, "BOUNDSHEET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    const-string v2, "CONTINUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    const-string v2, "FORMAT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    const-string v2, "EXTERNSHEET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INDEX:Ljxl/biff/Type;

    const-string v2, "INDEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    const-string v2, "DIMENSION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    const-string v2, "ROW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DBCELL:Ljxl/biff/Type;

    const-string v2, "DBCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    const-string v2, "BLANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    const-string v2, "MULBLANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    const-string v2, "RK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    const-string v2, "COLINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    const-string v2, "LABEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    const-string v2, "SHAREDFORMULA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    const-string v2, "CODEPAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOW1:Ljxl/biff/Type;

    const-string v2, "WINDOW1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    const-string v2, "WINDOW2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    const-string v2, "MERGEDCELLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    const-string v2, "HLINK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    const-string v2, "HEADER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    const-string v2, "FOOTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INTERFACEHDR:Ljxl/biff/Type;

    const-string v2, "INTERFACEHDR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MMS:Ljxl/biff/Type;

    const-string v2, "MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INTERFACEEND:Ljxl/biff/Type;

    const-string v2, "INTERFACEEND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DSF:Ljxl/biff/Type;

    const-string v2, "DSF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FNGROUPCOUNT:Ljxl/biff/Type;

    const-string v2, "FNGROUPCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    const-string v2, "COUNTRY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TABID:Ljxl/biff/Type;

    const-string v2, "TABID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    const-string v2, "PROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SCENPROTECT:Ljxl/biff/Type;

    const-string v2, "SCENPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJPROTECT:Ljxl/biff/Type;

    const-string v2, "OBJPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOWPROTECT:Ljxl/biff/Type;

    const-string v2, "WINDOWPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    const-string v2, "PASSWORD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROT4REV:Ljxl/biff/Type;

    const-string v2, "PROT4REV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROT4REVPASS:Ljxl/biff/Type;

    const-string v2, "PROT4REVPASS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BACKUP:Ljxl/biff/Type;

    const-string v2, "BACKUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    const-string v2, "HIDEOBJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    const-string v2, "1904"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRECISION:Ljxl/biff/Type;

    const-string v2, "PRECISION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOOKBOOL:Ljxl/biff/Type;

    const-string v2, "BOOKBOOL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->STYLE:Ljxl/biff/Type;

    const-string v2, "STYLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTSST:Ljxl/biff/Type;

    const-string v2, "EXTSST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->REFRESHALL:Ljxl/biff/Type;

    const-string v2, "REFRESHALL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    const-string v2, "CALCMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CALCCOUNT:Ljxl/biff/Type;

    const-string v2, "CALCCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    const-string v2, "NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MSODRAWINGGROUP:Ljxl/biff/Type;

    const-string v2, "MSODRAWINGGROUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    const-string v2, "MSODRAWING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    const-string v2, "OBJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->USESELFS:Ljxl/biff/Type;

    const-string v2, "USESELFS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    const-string v2, "SUPBOOK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    const-string v2, "LEFTMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    const-string v2, "RIGHTMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    const-string v2, "TOPMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    const-string v2, "BOTTOMMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    const-string v2, "HCENTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    const-string v2, "VCENTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ITERATION:Ljxl/biff/Type;

    const-string v2, "ITERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DELTA:Ljxl/biff/Type;

    const-string v2, "DELTA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    const-string v2, "SAVERECALC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    const-string v2, "PRINTHEADERS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    const-string v2, "PRINTGRIDLINES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    const-string v2, "SETUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SELECTION:Ljxl/biff/Type;

    const-string v2, "SELECTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const-string v2, "STRING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FONTX:Ljxl/biff/Type;

    const-string v2, "FONTX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->IFMT:Ljxl/biff/Type;

    const-string v2, "IFMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    const-string v2, "WSBOOL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->GRIDSET:Ljxl/biff/Type;

    const-string v2, "GRIDSET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->REFMODE:Ljxl/biff/Type;

    const-string v2, "REFMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    const-string v2, "GUTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTERNNAME:Ljxl/biff/Type;

    const-string v2, "EXTERNNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FBI:Ljxl/biff/Type;

    const-string v2, "FBI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CRN:Ljxl/biff/Type;

    const-string v2, "CRN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    const-string v2, "HORIZONTALPAGEBREAKS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    const-string v2, "VERTICALPAGEBREAKS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    const-string v2, "DEFAULTROWHEIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TEMPLATE:Ljxl/biff/Type;

    const-string v2, "TEMPLATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    const-string v2, "PANE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    const-string v2, "SCL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    const-string v2, "PALETTE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    const-string v2, "PLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    const-string v2, "OBJPROJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    const-string v2, "DEFCOLWIDTH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    const-string v2, "ARRAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WEIRD1:Ljxl/biff/Type;

    const-string v2, "WEIRD1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    const-string v2, "BOOLERR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SORT:Ljxl/biff/Type;

    const-string v2, "SORT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    const-string v2, "BUTTONPROPERTYSET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    const-string v2, "NOTE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    const-string v2, "TXO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    const-string v2, "DV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    const-string v2, "DVAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SERIES:Ljxl/biff/Type;

    const-string v2, "SERIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SERIESLIST:Ljxl/biff/Type;

    const-string v2, "SERIESLIST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SBASEREF:Ljxl/biff/Type;

    const-string v2, "SBASEREF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    const-string v2, "CONDFMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    const-string v2, "CF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    const-string v2, "FILTERMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    const-string v2, "AUTOFILTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    const-string v2, "AUTOFILTERINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->XCT:Ljxl/biff/Type;

    const-string v2, "XCT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    const-string v2, "???"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private dump()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "r":Ljxl/read/biff/Record;
    const/4 v1, 0x1

    .line 209
    .local v1, "cont":Z
    :goto_0
    iget-object v2, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v2}, Ljxl/read/biff/BiffRecordReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 211
    iget-object v2, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v2}, Ljxl/read/biff/BiffRecordReader;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Ljxl/demo/BiffDump;->writeRecord(Ljxl/read/biff/Record;)Z

    move-result v1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method private writeByte(BLjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "val"    # B
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 360
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "sv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 364
    const/16 v1, 0x30

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    return-void
.end method

.method private writeRecord(Ljxl/read/biff/Record;)Z
    .locals 14
    .param p1, "r"    # Ljxl/read/biff/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, "cont":Z
    iget-object v1, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v1}, Ljxl/read/biff/BiffRecordReader;->getPos()I

    move-result v1

    .line 226
    .local v1, "pos":I
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    .line 228
    .local v2, "code":I
    iget v3, p0, Ljxl/demo/BiffDump;->bofs:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 230
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v3

    sget-object v6, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    .line 233
    :cond_1
    if-nez v0, :cond_2

    .line 235
    return v0

    .line 238
    :cond_2
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v3

    sget-object v6, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v3, v6, :cond_3

    .line 240
    iget v3, p0, Ljxl/demo/BiffDump;->bofs:I

    add-int/2addr v3, v5

    iput v3, p0, Ljxl/demo/BiffDump;->bofs:I

    .line 243
    :cond_3
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v3

    sget-object v6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v3, v6, :cond_4

    .line 245
    iget v3, p0, Ljxl/demo/BiffDump;->bofs:I

    sub-int/2addr v3, v5

    iput v3, p0, Ljxl/demo/BiffDump;->bofs:I

    .line 248
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v3, "buf":Ljava/lang/StringBuffer;
    invoke-direct {p0, v1, v3}, Ljxl/demo/BiffDump;->writeSixDigitValue(ILjava/lang/StringBuffer;)V

    .line 252
    const-string v6, " ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v6, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 254
    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const-string v6, "  (0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    sget-object v7, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    iget v7, v7, Ljxl/biff/Type;->value:I

    const-string v8, " (0x"

    if-ne v2, v7, :cond_5

    .line 261
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    iget v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    add-int/2addr v7, v5

    iput v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    .line 267
    :cond_5
    sget-object v7, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    iget v7, v7, Ljxl/biff/Type;->value:I

    const/4 v9, 0x4

    if-ne v2, v7, :cond_7

    .line 269
    iget v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    if-ne v7, v9, :cond_6

    .line 271
    add-int/2addr v7, v5

    iput v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    .line 274
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    iget v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget v6, p0, Ljxl/demo/BiffDump;->fontIndex:I

    add-int/2addr v6, v5

    iput v6, p0, Ljxl/demo/BiffDump;->fontIndex:I

    .line 280
    :cond_7
    iget-object v6, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 283
    new-array v6, v9, [B

    .line 284
    .local v6, "standardData":[B
    and-int/lit16 v7, v2, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 285
    const v7, 0xff00

    and-int v8, v2, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 286
    const/4 v5, 0x2

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getLength()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 287
    const/4 v5, 0x3

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getLength()I

    move-result v8

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 288
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v5

    .line 289
    .local v5, "recordData":[B
    array-length v7, v6

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 290
    .local v7, "data":[B
    array-length v8, v6

    invoke-static {v6, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length v8, v6

    array-length v9, v5

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, "byteCount":I
    const/4 v8, 0x0

    .line 297
    .local v8, "lineBytes":I
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_d

    .line 299
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v9

    .line 300
    add-int v9, v1, v4

    invoke-direct {p0, v9, v3}, Ljxl/demo/BiffDump;->writeSixDigitValue(ILjava/lang/StringBuffer;)V

    .line 301
    const-string v9, "   "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    array-length v10, v7

    sub-int/2addr v10, v4

    const/16 v11, 0x10

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 305
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v12, 0x20

    if-ge v10, v8, :cond_8

    .line 307
    add-int v13, v10, v4

    aget-byte v13, v7, v13

    invoke-direct {p0, v13, v3}, Ljxl/demo/BiffDump;->writeByte(BLjava/lang/StringBuffer;)V

    .line 308
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 312
    .end local v10    # "i":I
    :cond_8
    if-ge v8, v11, :cond_9

    .line 314
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    rsub-int/lit8 v11, v8, 0x10

    if-ge v10, v11, :cond_9

    .line 316
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 320
    .end local v10    # "i":I
    :cond_9
    const-string v9, "  "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v8, :cond_c

    .line 324
    add-int v10, v9, v4

    aget-byte v10, v7, v10

    int-to-char v10, v10

    .line 325
    .local v10, "c":C
    if-lt v10, v12, :cond_a

    const/16 v11, 0x7a

    if-le v10, v11, :cond_b

    .line 327
    :cond_a
    const/16 v10, 0x2e

    .line 329
    :cond_b
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    .end local v10    # "c":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 332
    .end local v9    # "i":I
    :cond_c
    add-int/2addr v4, v8

    .line 334
    iget-object v9, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 335
    iget-object v9, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 338
    :cond_d
    return v0
.end method

.method private writeSixDigitValue(ILjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 350
    const/16 v2, 0x30

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 352
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    return-void
.end method
