.class public Lcom/google/firebase/database/connection/util/StringListReader;
.super Ljava/io/Reader;
.source "StringListReader.java"


# instance fields
.field private charPos:I

.field private closed:Z

.field private frozen:Z

.field private markedCharPos:I

.field private markedStringListPos:I

.field private stringListPos:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    .line 31
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    iput v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    .line 32
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iput v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    .line 34
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    .line 38
    return-void
.end method

.method private advance(J)J
    .locals 7
    .param p1, "numChars"    # J

    .line 90
    const-wide/16 v0, 0x0

    .line 91
    .local v0, "advanced":J
    :goto_0
    iget v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    .line 93
    .local v2, "remainingStringChars":I
    sub-long v3, p1, v0

    .line 94
    .local v3, "remainingChars":J
    int-to-long v5, v2

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 95
    iget v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    long-to-int v5, v5

    iput v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    .line 96
    add-long/2addr v0, v3

    goto :goto_1

    .line 98
    :cond_0
    int-to-long v5, v2

    add-long/2addr v0, v5

    .line 99
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    .line 100
    iget v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    .line 102
    .end local v2    # "remainingStringChars":I
    .end local v3    # "remainingChars":J
    :goto_1
    goto :goto_0

    .line 103
    :cond_1
    return-wide v0
.end method

.method private checkState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    if-nez v0, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private currentString()Ljava/lang/String;
    .locals 2

    .line 72
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iget-object v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private currentStringRemainingChars()I
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    sub-int/2addr v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 41
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add string after reading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    .line 187
    return-void
.end method

.method public freeze()V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 160
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    .line 161
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    .line 162
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, -0x1

    return v1

    .line 134
    :cond_0
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 135
    .local v1, "c":C
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    .line 136
    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 7
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 109
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 110
    .local v0, "remaining":I
    const/4 v1, 0x0

    .line 111
    .local v1, "total":I
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "current":Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_0

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    .local v3, "strLength":I
    iget-object v4, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    iget v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    add-int v6, v5, v3

    invoke-virtual {p1, v4, v5, v6}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    .line 115
    sub-int/2addr v0, v3

    .line 116
    add-int/2addr v1, v3

    .line 117
    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v3    # "strLength":I
    goto :goto_0

    .line 120
    :cond_0
    if-gtz v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    const/4 v3, -0x1

    return v3

    .line 121
    :cond_2
    :goto_1
    return v1
.end method

.method public read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "charsCopied":I
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "current":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    if-ge v0, p3, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    sub-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 171
    .local v2, "copyLength":I
    iget v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    add-int v4, v3, v2

    add-int v5, p2, v0

    invoke-virtual {v1, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 172
    add-int/2addr v0, v2

    .line 173
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    .line 174
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .end local v2    # "copyLength":I
    goto :goto_0

    .line 176
    :cond_0
    if-gtz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 177
    :cond_2
    :goto_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    .line 68
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    .line 69
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .end local v2    # "string":Ljava/lang/String;
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
