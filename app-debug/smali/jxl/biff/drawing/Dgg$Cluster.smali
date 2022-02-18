.class final Ljxl/biff/drawing/Dgg$Cluster;
.super Ljava/lang/Object;
.source "Dgg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/drawing/Dgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cluster"
.end annotation


# instance fields
.field drawingGroupId:I

.field shapeIdsUsed:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "dgId"    # I
    .param p2, "sids"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    .line 92
    iput p2, p0, Ljxl/biff/drawing/Dgg$Cluster;->shapeIdsUsed:I

    .line 93
    return-void
.end method
