.class public Ljxl/format/PageOrder;
.super Ljava/lang/Object;
.source "PageOrder.java"


# static fields
.field public static DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

.field public static RIGHT_THEN_DOWN:Ljxl/format/PageOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljxl/format/PageOrder;

    invoke-direct {v0}, Ljxl/format/PageOrder;-><init>()V

    sput-object v0, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    .line 42
    new-instance v0, Ljxl/format/PageOrder;

    invoke-direct {v0}, Ljxl/format/PageOrder;-><init>()V

    sput-object v0, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
