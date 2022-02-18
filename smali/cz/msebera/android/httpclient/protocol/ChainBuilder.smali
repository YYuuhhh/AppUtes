.class final Lcz/msebera/android/httpclient/protocol/ChainBuilder;
.super Ljava/lang/Object;
.source "ChainBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final uniqueClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private ensureUnique(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "previous":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public addAllFirst(Ljava/util/Collection;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p1, :cond_0

    .line 81
    return-object p0

    .line 83
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 85
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 86
    :cond_1
    return-object p0
.end method

.method public varargs addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "c":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_0

    .line 91
    return-object p0

    .line 93
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 94
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 93
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-object p0
.end method

.method public addAllLast(Ljava/util/Collection;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p1, :cond_0

    .line 101
    return-object p0

    .line 103
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 105
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 106
    :cond_1
    return-object p0
.end method

.method public varargs addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "c":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_0

    .line 111
    return-object p0

    .line 113
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 114
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 113
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-object p0
.end method

.method public addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 63
    return-object p0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 67
    return-object p0
.end method

.method public addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 72
    return-object p0

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 76
    return-object p0
.end method

.method public build()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcz/msebera/android/httpclient/protocol/ChainBuilder;, "Lcz/msebera/android/httpclient/protocol/ChainBuilder<TE;>;"
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
