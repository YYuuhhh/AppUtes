.class Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database-collection@@17.0.1"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Base1_2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I

.field private value:J


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .param p1, "size"    # I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    add-int/lit8 v0, p1, 0x1

    .line 245
    .local v0, "toCalc":I
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->length:I

    .line 246
    int-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 247
    .local v1, "mask":J
    int-to-long v3, v0

    and-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->value:J

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    .line 238
    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->length:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    .line 238
    iget-wide v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->value:J

    return-wide v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;-><init>(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)V

    return-object v0
.end method
