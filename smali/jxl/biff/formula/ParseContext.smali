.class public Ljxl/biff/formula/ParseContext;
.super Ljava/lang/Object;
.source "ParseContext.java"


# static fields
.field public static DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

.field public static DEFAULT:Ljxl/biff/formula/ParseContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljxl/biff/formula/ParseContext;

    invoke-direct {v0}, Ljxl/biff/formula/ParseContext;-><init>()V

    sput-object v0, Ljxl/biff/formula/ParseContext;->DEFAULT:Ljxl/biff/formula/ParseContext;

    .line 28
    new-instance v0, Ljxl/biff/formula/ParseContext;

    invoke-direct {v0}, Ljxl/biff/formula/ParseContext;-><init>()V

    sput-object v0, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
