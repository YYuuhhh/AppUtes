.class Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;
.super Ljava/lang/Object;
.source "WritableSheetImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/WritableSheetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnInfoComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljxl/write/biff/WritableSheetImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljxl/write/biff/WritableSheetImpl$1;

    .line 274
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 296
    if-ne p1, p2, :cond_0

    .line 298
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_0
    instance-of v0, p1, Ljxl/write/biff/ColumnInfoRecord;

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 302
    instance-of v0, p2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 304
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/ColumnInfoRecord;

    .line 305
    .local v0, "ci1":Ljxl/write/biff/ColumnInfoRecord;
    move-object v1, p2

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 307
    .local v1, "ci2":Ljxl/write/biff/ColumnInfoRecord;
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v2

    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 284
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
