.class Ljxl/write/biff/ExternalSheetRecord$XTI;
.super Ljava/lang/Object;
.source "ExternalSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/ExternalSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XTI"
.end annotation


# instance fields
.field firstTab:I

.field lastTab:I

.field supbookIndex:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "f"    # I
    .param p3, "l"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    .line 57
    iput p2, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 58
    iput p3, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    .line 59
    return-void
.end method


# virtual methods
.method sheetInserted(I)V
    .locals 1
    .param p1, "index"    # I

    .line 63
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    if-lt v0, p1, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 68
    :cond_0
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    if-lt v0, p1, :cond_1

    .line 70
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    .line 72
    :cond_1
    return-void
.end method

.method sheetRemoved(I)V
    .locals 2
    .param p1, "index"    # I

    .line 76
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 78
    iput v1, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 81
    :cond_0
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    if-ne v0, p1, :cond_1

    .line 83
    iput v1, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    .line 86
    :cond_1
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    if-le v0, p1, :cond_2

    .line 88
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 91
    :cond_2
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    if-le v0, p1, :cond_3

    .line 93
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    .line 95
    :cond_3
    return-void
.end method
