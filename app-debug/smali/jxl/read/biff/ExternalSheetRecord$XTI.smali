.class Ljxl/read/biff/ExternalSheetRecord$XTI;
.super Ljava/lang/Object;
.source "ExternalSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/read/biff/ExternalSheetRecord;
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ljxl/read/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    .line 73
    iput p2, p0, Ljxl/read/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 74
    iput p3, p0, Ljxl/read/biff/ExternalSheetRecord$XTI;->lastTab:I

    .line 75
    return-void
.end method
