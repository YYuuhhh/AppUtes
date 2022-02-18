.class public Ljxl/demo/Features;
.super Ljava/lang/Object;
.source "Features.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 12
    .param p1, "w"    # Ljxl/Workbook;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p3, :cond_0

    const-string v0, "UnicodeBig"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    const-string p3, "UTF8"

    .line 61
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "sheet":I
    :goto_0
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 66
    invoke-virtual {p1, v2}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v3

    .line 68
    .local v3, "s":Ljxl/Sheet;
    invoke-interface {v3}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "row":[Ljxl/Cell;
    const/4 v5, 0x0

    .line 74
    .local v5, "c":Ljxl/Cell;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljxl/Sheet;->getRows()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 76
    invoke-interface {v3, v6}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v7

    move-object v4, v7

    .line 78
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_3

    .line 80
    aget-object v8, v4, v7

    move-object v5, v8

    .line 81
    invoke-interface {v5}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 83
    invoke-interface {v5}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v8

    .line 84
    .local v8, "features":Ljxl/CellFeatures;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v5}, Ljxl/Cell;->getColumn()I

    move-result v10

    invoke-interface {v5}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-static {v10, v11, v9}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cell "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contents:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " comment: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljxl/CellFeatures;->getComment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 78
    .end local v8    # "features":Ljxl/CellFeatures;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 74
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v3    # "s":Ljxl/Sheet;
    .end local v4    # "row":[Ljxl/Cell;
    .end local v5    # "c":Ljxl/Cell;
    .end local v6    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2    # "sheet":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    return-void
.end method
