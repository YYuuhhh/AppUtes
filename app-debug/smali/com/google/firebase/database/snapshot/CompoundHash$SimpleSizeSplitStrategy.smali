.class Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;
.super Ljava/lang/Object;
.source "CompoundHash.java"

# interfaces
.implements Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/CompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSizeSplitStrategy"
.end annotation


# instance fields
.field private final splitThreshold:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .locals 6
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v0

    .line 65
    .local v0, "estimatedNodeSize":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x200

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;->splitThreshold:J

    .line 66
    return-void
.end method


# virtual methods
.method public shouldSplit(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Z
    .locals 4
    .param p1, "state"    # Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashLength()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;->splitThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0
.end method
