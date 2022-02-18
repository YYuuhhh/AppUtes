.class public Lorg/apache/log4j/helpers/BoundedFIFO;
.super Ljava/lang/Object;
.source "BoundedFIFO.java"


# instance fields
.field buf:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field maxSize:I

.field next:I

.field numElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 34
    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 35
    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 43
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 47
    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    .line 48
    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 49
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 5

    .line 56
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return-object v1

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    aget-object v4, v2, v3

    .line 60
    .local v4, "r":Lorg/apache/log4j/spi/LoggingEvent;
    aput-object v1, v2, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v3, v1, :cond_1

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 65
    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 66
    return-object v4
.end method

.method public getMaxSize()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 97
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    return v0
.end method

.method min(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 112
    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public put(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 4
    .param p1, "o"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 75
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-eq v0, v1, :cond_1

    .line 76
    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    aput-object p1, v2, v3

    .line 77
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    if-ne v3, v1, :cond_0

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 82
    :cond_1
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 5
    .param p1, "newSize"    # I

    monitor-enter p0

    .line 125
    :try_start_0
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    new-array v1, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 132
    .local v1, "tmp":[Lorg/apache/log4j/spi/LoggingEvent;
    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    sub-int/2addr v0, v2

    .line 135
    .local v0, "len1":I
    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v2

    move v0, v2

    .line 139
    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v2

    move v0, v2

    .line 142
    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "len2":I
    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-ge v0, v3, :cond_1

    if-ge v0, p1, :cond_1

    .line 147
    sub-int/2addr v3, v0

    .line 148
    .end local v2    # "len2":I
    .local v3, "len2":I
    sub-int v2, p1, v0

    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v2

    .line 149
    .end local v3    # "len2":I
    .restart local v2    # "len2":I
    iget-object v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .end local p0    # "this":Lorg/apache/log4j/helpers/BoundedFIFO;
    :cond_1
    iput-object v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 153
    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    .line 154
    iput v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    .line 155
    add-int v3, v0, v2

    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    .line 156
    iput v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    .line 157
    if-ne v3, p1, :cond_2

    .line 158
    iput v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v0    # "len1":I
    .end local v1    # "tmp":[Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "len2":I
    :cond_2
    monitor-exit p0

    return-void

    .line 124
    .end local p1    # "newSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public wasEmpty()Z
    .locals 2

    .line 168
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public wasFull()Z
    .locals 3

    .line 177
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
