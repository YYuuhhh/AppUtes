.class public Ljxl/biff/BaseCellFeatures$ValidationCondition;
.super Ljava/lang/Object;
.source "BaseCellFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/BaseCellFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValidationCondition"
.end annotation


# static fields
.field private static types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;


# instance fields
.field private condition:Ljxl/biff/DVParser$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sput-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    return-void
.end method

.method constructor <init>(Ljxl/biff/DVParser$Condition;)V
    .locals 4
    .param p1, "c"    # Ljxl/biff/DVParser$Condition;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->condition:Ljxl/biff/DVParser$Condition;

    .line 107
    sget-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 108
    .local v0, "oldtypes":[Ljxl/biff/BaseCellFeatures$ValidationCondition;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sput-object v1, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 109
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    sget-object v1, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 111
    return-void
.end method


# virtual methods
.method public getCondition()Ljxl/biff/DVParser$Condition;
    .locals 1

    .line 115
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->condition:Ljxl/biff/DVParser$Condition;

    return-object v0
.end method
