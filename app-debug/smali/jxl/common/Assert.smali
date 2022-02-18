.class public final Ljxl/common/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 35
    if-eqz p0, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljxl/common/AssertionFailed;

    invoke-direct {v0}, Ljxl/common/AssertionFailed;-><init>()V

    throw v0
.end method

.method public static verify(ZLjava/lang/String;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    if-eqz p0, :cond_0

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljxl/common/AssertionFailed;

    invoke-direct {v0, p1}, Ljxl/common/AssertionFailed;-><init>(Ljava/lang/String;)V

    throw v0
.end method
