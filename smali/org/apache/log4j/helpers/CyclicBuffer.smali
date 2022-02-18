.class public Lorg/apache/log4j/helpers/CyclicBuffer;
.super Ljava/lang/Object;
.source "CyclicBuffer.java"


# instance fields
.field ea:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field last:I

.field maxSize:I

.field numElems:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 53
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 54
    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 56
    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 57
    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 58
    return-void

    .line 50
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
.method public add(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 66
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 68
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 70
    :cond_0
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ge v1, v0, :cond_1

    .line 71
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    if-ne v1, v0, :cond_2

    .line 73
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 4

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "r":Lorg/apache/log4j/spi/LoggingEvent;
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lez v1, :cond_0

    .line 105
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 106
    iget-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v0, v1, v2

    .line 107
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v2, v1, :cond_0

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 111
    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 3
    .param p1, "i"    # I

    .line 86
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 87
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    return v0
.end method

.method public resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 131
    if-ltz p1, :cond_5

    .line 135
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne p1, v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    new-array v1, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 140
    .local v1, "temp":[Lorg/apache/log4j/spi/LoggingEvent;
    if-ge p1, v0, :cond_1

    move v0, p1

    .line 142
    .local v0, "loopLen":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-lt v2, v0, :cond_3

    .line 148
    iput-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 149
    iput v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 150
    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 151
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 152
    if-ne v0, p1, :cond_2

    .line 153
    iput v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_1

    .line 155
    :cond_2
    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 157
    .end local v0    # "loopLen":I
    .end local v1    # "temp":[Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 143
    .restart local v0    # "loopLen":I
    .restart local v1    # "temp":[Lorg/apache/log4j/spi/LoggingEvent;
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v5, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v6, v4, v5

    aput-object v6, v1, v2

    .line 144
    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 145
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne v5, v4, :cond_4

    .line 146
    iput v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 142
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "loopLen":I
    .end local v1    # "temp":[Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "i":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative array size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
