.class public Ljxl/demo/EscherDrawingGroup;
.super Ljava/lang/Object;
.source "EscherDrawingGroup.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
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
    move-object v2, p1

    check-cast v2, Ljxl/read/biff/WorkbookParser;

    .line 62
    .local v2, "wp":Ljxl/read/biff/WorkbookParser;
    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    .line 64
    .local v3, "dg":Ljxl/biff/drawing/DrawingGroup;
    if-eqz v3, :cond_2

    .line 66
    new-instance v4, Ljxl/biff/drawing/EscherDisplay;

    invoke-direct {v4, v3, v1}, Ljxl/biff/drawing/EscherDisplay;-><init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V

    .line 67
    .local v4, "ed":Ljxl/biff/drawing/EscherDisplay;
    invoke-virtual {v4}, Ljxl/biff/drawing/EscherDisplay;->display()V

    .line 70
    .end local v4    # "ed":Ljxl/biff/drawing/EscherDisplay;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 71
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 72
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 73
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "wp":Ljxl/read/biff/WorkbookParser;
    .end local v3    # "dg":Ljxl/biff/drawing/DrawingGroup;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method
