.class Ljxl/write/biff/SharedStrings;
.super Ljava/lang/Object;
.source "SharedStrings.java"


# instance fields
.field private stringList:Ljava/util/ArrayList;

.field private strings:Ljava/util/HashMap;

.field private totalOccurrences:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    .line 56
    return-void
.end method

.method private createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;
    .locals 3
    .param p1, "curString"    # Ljava/lang/String;
    .param p2, "charsLeft"    # I
    .param p3, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "cont":Ljxl/write/biff/SSTContinueRecord;
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 166
    new-instance v1, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v1}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    move-object v0, v1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    goto :goto_2

    .line 170
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    .line 178
    :goto_2
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 181
    new-instance v1, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v1}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 185
    :cond_3
    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 90
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 73
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget v1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 10
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "charsLeft":I
    const/4 v1, 0x0

    .line 105
    .local v1, "curString":Ljava/lang/String;
    new-instance v2, Ljxl/write/biff/SSTRecord;

    iget v3, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    iget-object v4, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljxl/write/biff/SSTRecord;-><init>(II)V

    .line 106
    .local v2, "sst":Ljxl/write/biff/SSTRecord;
    new-instance v3, Ljxl/write/biff/ExtendedSSTRecord;

    iget-object v4, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljxl/write/biff/ExtendedSSTRecord;-><init>(I)V

    .line 107
    .local v3, "extsst":Ljxl/write/biff/ExtendedSSTRecord;
    invoke-virtual {v3}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v4

    .line 109
    .local v4, "bucketSize":I
    iget-object v5, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, "i":Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 111
    .local v6, "stringIndex":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v0, :cond_1

    .line 113
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Ljxl/write/biff/SSTRecord;->getOffset()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    .line 116
    .local v7, "relativePosition":I
    invoke-virtual {v2, v1}, Ljxl/write/biff/SSTRecord;->add(Ljava/lang/String;)I

    move-result v0

    .line 117
    rem-int v8, v6, v4

    if-nez v8, :cond_0

    .line 118
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v3, v8, v7}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    .line 120
    :cond_0
    nop

    .end local v7    # "relativePosition":I
    add-int/lit8 v6, v6, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 124
    if-nez v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 127
    :cond_2
    invoke-direct {p0, v1, v0, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v7

    .line 132
    .local v7, "cont":Ljxl/write/biff/SSTContinueRecord;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    .line 135
    invoke-virtual {v7}, Ljxl/write/biff/SSTContinueRecord;->getOffset()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    .line 136
    .local v8, "relativePosition":I
    invoke-virtual {v7, v1}, Ljxl/write/biff/SSTContinueRecord;->add(Ljava/lang/String;)I

    move-result v0

    .line 137
    rem-int v9, v6, v4

    if-nez v9, :cond_3

    .line 138
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v9

    invoke-virtual {v3, v9, v8}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    .line 140
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 142
    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 145
    invoke-direct {p0, v1, v0, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v7

    .line 147
    .end local v8    # "relativePosition":I
    :cond_4
    goto :goto_1

    .line 149
    :cond_5
    invoke-virtual {p1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 152
    .end local v7    # "cont":Ljxl/write/biff/SSTContinueRecord;
    :cond_6
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 153
    return-void
.end method
