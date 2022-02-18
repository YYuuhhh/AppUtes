.class public Ljxl/common/BaseUnit;
.super Ljava/lang/Object;
.source "BaseUnit.java"


# instance fields
.field private index:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "ind"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Ljxl/common/BaseUnit;->index:I

    .line 29
    return-void
.end method


# virtual methods
.method protected getIndex()I
    .locals 1

    .line 33
    iget v0, p0, Ljxl/common/BaseUnit;->index:I

    return v0
.end method
