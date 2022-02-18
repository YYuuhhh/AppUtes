.class Ljxl/demo/PropertySetsReader;
.super Ljava/lang/Object;
.source "PropertySetsReader.java"


# instance fields
.field private compoundFile:Ljxl/read/biff/CompoundFile;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "propertySet"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v0, "fis":Ljava/io/FileInputStream;
    const/high16 v1, 0x100000

    .line 59
    .local v1, "initialFileSize":I
    const/high16 v2, 0x100000

    .line 61
    .local v2, "arrayGrowSize":I
    new-array v3, v1, [B

    .line 62
    .local v3, "d":[B
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 63
    .local v4, "bytesRead":I
    move v5, v4

    .line 65
    .local v5, "pos":I
    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 67
    array-length v6, v3

    if-lt v5, v6, :cond_0

    .line 70
    array-length v6, v3

    add-int/2addr v6, v2

    new-array v6, v6, [B

    .line 71
    .local v6, "newArray":[B
    array-length v7, v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    move-object v3, v6

    .line 74
    .end local v6    # "newArray":[B
    :cond_0
    array-length v6, v3

    sub-int/2addr v6, v5

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 75
    add-int/2addr v5, v4

    goto :goto_0

    .line 78
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .line 80
    new-instance v6, Ljxl/read/biff/CompoundFile;

    new-instance v7, Ljxl/WorkbookSettings;

    invoke-direct {v7}, Ljxl/WorkbookSettings;-><init>()V

    invoke-direct {v6, v3, v7}, Ljxl/read/biff/CompoundFile;-><init>([BLjxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/demo/PropertySetsReader;->compoundFile:Ljxl/read/biff/CompoundFile;

    .line 81
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 83
    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p0}, Ljxl/demo/PropertySetsReader;->displaySets()V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0, p2, p3}, Ljxl/demo/PropertySetsReader;->displayPropertySet(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 91
    :goto_1
    return-void
.end method


# virtual methods
.method displayPropertySet(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "ps"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 132
    const-string v0, "SummaryInformation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string p1, "\u0005SummaryInformation"

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "DocumentSummaryInformation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string p1, "\u0005DocumentSummaryInformation"

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "CompObj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string p1, "\u0001CompObj"

    .line 145
    :cond_2
    :goto_0
    iget-object v0, p0, Ljxl/demo/PropertySetsReader;->compoundFile:Ljxl/read/biff/CompoundFile;

    invoke-virtual {v0, p1}, Ljxl/read/biff/CompoundFile;->getStream(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, "stream":[B
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 147
    return-void
.end method

.method displaySets()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ljxl/demo/PropertySetsReader;->compoundFile:Ljxl/read/biff/CompoundFile;

    invoke-virtual {v0}, Ljxl/read/biff/CompoundFile;->getNumberOfPropertySets()I

    move-result v0

    .line 100
    .local v0, "numSets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Ljxl/demo/PropertySetsReader;->compoundFile:Ljxl/read/biff/CompoundFile;

    invoke-virtual {v2, v1}, Ljxl/read/biff/CompoundFile;->getPropertySet(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v2

    .line 103
    .local v2, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget-object v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, "(type "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, " size "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, " prev "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, " next "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, " child "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, " start block "

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    iget v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 100
    .end local v2    # "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 123
    iget-object v1, p0, Ljxl/demo/PropertySetsReader;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 124
    return-void
.end method
