.class public Lorg/apache/log4j/helpers/CountingQuietWriter;
.super Lorg/apache/log4j/helpers/QuietWriter;
.source "CountingQuietWriter.java"


# instance fields
.field protected count:J


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    return-wide v0
.end method

.method public setCount(J)V
    .locals 0
    .param p1, "count"    # J

    .line 59
    iput-wide p1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    .line 60
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .line 44
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/log4j/helpers/QuietWriter;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const/4 v2, 0x1

    const-string v3, "Write failure."

    invoke-interface {v1, v3, v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
