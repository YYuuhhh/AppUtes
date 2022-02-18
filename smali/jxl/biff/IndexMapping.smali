.class public final Ljxl/biff/IndexMapping;
.super Ljava/lang/Object;
.source "IndexMapping.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private newIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/biff/IndexMapping;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/IndexMapping;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v0, p1, [I

    iput-object v0, p0, Ljxl/biff/IndexMapping;->newIndices:[I

    .line 49
    return-void
.end method


# virtual methods
.method public getNewIndex(I)I
    .locals 1
    .param p1, "oldIndex"    # I

    .line 68
    iget-object v0, p0, Ljxl/biff/IndexMapping;->newIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public setMapping(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .line 58
    iget-object v0, p0, Ljxl/biff/IndexMapping;->newIndices:[I

    aput p2, v0, p1

    .line 59
    return-void
.end method
