.class public Ljxl/demo/CSV;
.super Ljava/lang/Object;
.source "CSV.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "w"    # Ljxl/Workbook;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "hide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p3, :cond_0

    const-string v0, "UnicodeBig"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-string p3, "UTF8"

    .line 59
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "sheet":I
    :goto_0
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 64
    invoke-virtual {p1, v2}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v3

    .line 66
    .local v3, "s":Ljxl/Sheet;
    if-eqz p4, :cond_2

    invoke-interface {v3}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/SheetSettings;->isHidden()Z

    move-result v4

    if-nez v4, :cond_8

    .line 68
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ****"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 71
    const/4 v4, 0x0

    .line 73
    .local v4, "row":[Ljxl/Cell;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljxl/Sheet;->getRows()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 75
    invoke-interface {v3, v5}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v6

    move-object v4, v6

    .line 77
    array-length v6, v4

    if-lez v6, :cond_7

    .line 79
    const/4 v6, 0x0

    if-eqz p4, :cond_3

    aget-object v7, v4, v6

    invoke-interface {v7}, Ljxl/Cell;->isHidden()Z

    move-result v7

    if-nez v7, :cond_4

    .line 81
    :cond_3
    aget-object v6, v4, v6

    invoke-interface {v6}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    :cond_4
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_7

    .line 88
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 89
    if-eqz p4, :cond_5

    aget-object v7, v4, v6

    invoke-interface {v7}, Ljxl/Cell;->isHidden()Z

    move-result v7

    if-nez v7, :cond_6

    .line 91
    :cond_5
    aget-object v7, v4, v6

    invoke-interface {v7}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 97
    .end local v6    # "j":I
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    .end local v3    # "s":Ljxl/Sheet;
    .end local v4    # "row":[Ljxl/Cell;
    .end local v5    # "i":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v2    # "sheet":I
    :cond_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    return-void
.end method
