.class public final Lcom/google/firebase/database/core/utilities/ImmutableTree;
.super Ljava/lang/Object;
.source "ImmutableTree.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/firebase/database/core/Path;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

.field private static final EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;


# instance fields
.field private final children:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 39
    invoke-static {v0}, Lcom/google/firebase/database/collection/StandardComparator;->getComparator(Ljava/lang/Class;)Lcom/google/firebase/database/collection/StandardComparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 42
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    sput-object v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "children":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 52
    return-void
.end method

.method public static emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TV;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object v0
.end method

.method private fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "-TT;TR;>;TR;)TR;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "visitor":Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<-TT;TR;>;"
    .local p3, "accum":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    .local v1, "subtree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 274
    .end local v1    # "subtree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {p2, p1, v0, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 278
    :cond_1
    return-object p3
.end method


# virtual methods
.method public containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p1, "predicate":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<-TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "subtree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    return v1

    .line 156
    .end local v2    # "subtree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 329
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 330
    return v0

    .line 332
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 336
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 338
    .local v2, "that":Lcom/google/firebase/database/core/utilities/ImmutableTree;
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v3, :cond_3

    .line 339
    :goto_0
    return v1

    .line 341
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 342
    :goto_1
    return v1

    .line 345
    :cond_5
    return v0

    .line 333
    .end local v2    # "that":Lcom/google/firebase/database/core/utilities/ImmutableTree;
    :cond_6
    :goto_2
    return v1
.end method

.method public findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;
    .locals 6
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)",
            "Lcom/google/firebase/database/core/Path;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "predicate":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<-TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    return-object v1

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 79
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 80
    .local v2, "child":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 82
    .local v3, "path":Lcom/google/firebase/database/core/Path;
    if-eqz v3, :cond_2

    .line 84
    new-instance v1, Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v1, v4}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    return-object v1

    .line 86
    :cond_2
    return-object v1

    .line 89
    .end local v3    # "path":Lcom/google/firebase/database/core/Path;
    :cond_3
    return-object v1
.end method

.method public findRootMostPathWithValue(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .locals 1
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;

    .line 96
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p1, "accum":Ljava/lang/Object;, "TR;"
    .local p2, "visitor":Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<-TT;TR;>;"
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p1, "visitor":Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<TT;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .locals 3
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 234
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 235
    .local v1, "child":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 238
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 2
    .param p1, "child"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 163
    .local v0, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-eqz v0, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    return-object v1
.end method

.method public getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 350
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 351
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 352
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 68
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/firebase/database/core/Path;",
            "TT;>;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;TT;>;>;"
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .locals 1
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public leafMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "predicate":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<-TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "currentValue":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v1, p0

    .line 135
    .local v1, "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 136
    .local v3, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v4, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 137
    if-nez v1, :cond_1

    .line 138
    return-object v0

    .line 140
    :cond_1
    iget-object v4, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    invoke-interface {p2, v4}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v0, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 144
    .end local v3    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_2
    goto :goto_1

    .line 145
    :cond_3
    return-object v0
.end method

.method public remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 6
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 209
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 210
    .local v1, "child":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    .line 213
    .local v2, "newChild":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .local v3, "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    goto :goto_0

    .line 216
    .end local v3    # "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .line 218
    .restart local v3    # "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :goto_0
    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    return-object v4

    .line 221
    :cond_3
    new-instance v4, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v5, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v4

    .line 224
    .end local v2    # "newChild":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .end local v3    # "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :cond_4
    return-object p0
.end method

.method public rootMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .locals 1
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;
    .locals 5
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "predicate":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<-TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v0

    .line 107
    :cond_0
    move-object v0, p0

    .line 108
    .local v0, "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 109
    .local v2, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v4, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v4, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 110
    if-nez v0, :cond_1

    .line 111
    return-object v3

    .line 112
    :cond_1
    iget-object v3, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-interface {p2, v3}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    iget-object v1, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v1

    .line 115
    .end local v2    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_2
    goto :goto_0

    .line 116
    :cond_3
    return-object v3
.end method

.method public set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 6
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "TT;)",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {v0, p2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 189
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 190
    .local v1, "child":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-nez v1, :cond_1

    .line 191
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    .line 194
    .local v2, "newChild":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 195
    invoke-virtual {v3, v0, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .line 196
    .local v3, "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    new-instance v4, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v5, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v4
.end method

.method public setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 6
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;)",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    .local p2, "newTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    return-object p2

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 248
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 249
    .local v1, "child":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-nez v1, :cond_1

    .line 250
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    .line 254
    .local v2, "newChild":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .local v3, "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    goto :goto_0

    .line 257
    .end local v3    # "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .line 259
    .restart local v3    # "newChildren":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    :goto_0
    new-instance v4, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v5, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v4
.end method

.method public subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 3
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 175
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 176
    .local v1, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    return-object v2

    .line 179
    :cond_1
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 314
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ImmutableTree { value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ", children={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    .local v2, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .end local v2    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;>;"
    goto :goto_0

    .line 323
    :cond_0
    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree$1;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 291
    return-object v0
.end method
