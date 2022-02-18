.class public Ljxl/demo/Escher;
.super Ljava/lang/Object;
.source "Escher.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "w"    # Ljxl/Workbook;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p3, :cond_0

    const-string v0, "UnicodeBig"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string p3, "UTF8"

    .line 57
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 58
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 62
    invoke-virtual {p1, v2}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/SheetImpl;

    .line 63
    .local v3, "s":Ljxl/read/biff/SheetImpl;
    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 65
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 67
    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getDrawingData()Ljxl/biff/drawing/DrawingData;

    move-result-object v4

    .line 69
    .local v4, "dd":Ljxl/biff/drawing/DrawingData;
    if-eqz v4, :cond_2

    .line 71
    new-instance v5, Ljxl/biff/drawing/EscherDisplay;

    invoke-direct {v5, v4, v1}, Ljxl/biff/drawing/EscherDisplay;-><init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V

    .line 72
    .local v5, "ed":Ljxl/biff/drawing/EscherDisplay;
    invoke-virtual {v5}, Ljxl/biff/drawing/EscherDisplay;->display()V

    .line 75
    .end local v5    # "ed":Ljxl/biff/drawing/EscherDisplay;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 76
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 77
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 60
    .end local v3    # "s":Ljxl/read/biff/SheetImpl;
    .end local v4    # "dd":Ljxl/biff/drawing/DrawingData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return-void
.end method
