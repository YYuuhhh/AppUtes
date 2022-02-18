.class public Lcom/google/firebase/database/core/ValidationPath;
.super Ljava/lang/Object;
.source "ValidationPath.java"


# static fields
.field public static final MAX_PATH_DEPTH:I = 0x20

.field public static final MAX_PATH_LENGTH_BYTES:I = 0x300


# instance fields
.field private byteLength:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 40
    .local v1, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v2, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v1    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    iget-object v2, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    .line 49
    return-void
.end method

.method private checkValid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 116
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path specified exceeds the maximum depth that can be written (32) or object contains a cycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->toErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data has a key path longer than 768 bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "delimeter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 126
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 128
    if-lez v1, :cond_0

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pop()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "last":Ljava/lang/String;
    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {v0}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 94
    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 97
    :cond_0
    return-object v0
.end method

.method private push(Ljava/lang/String;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {p1}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    .line 88
    return-void
.end method

.method private toErrorString()Ljava/lang/String;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in path \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    const-string v2, "/"

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/ValidationPath;->joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 143
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 144
    .local v3, "ch":C
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    .line 147
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    add-int/lit8 v0, v0, 0x4

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 142
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    return v0
.end method

.method public static validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V
    .locals 1
    .param p0, "path"    # Lcom/google/firebase/database/core/Path;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/firebase/database/core/ValidationPath;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/ValidationPath;-><init>(Lcom/google/firebase/database/core/Path;)V

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private withObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 56
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 58
    .local v0, "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "key":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    .line 65
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 66
    :cond_1
    return-void

    .line 69
    .end local v0    # "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 71
    .local v0, "listValue":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    .line 71
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "listValue":Ljava/util/List;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
