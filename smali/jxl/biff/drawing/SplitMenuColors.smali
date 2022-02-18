.class Ljxl/biff/drawing/SplitMenuColors;
.super Ljxl/biff/drawing/EscherAtom;
.source "SplitMenuColors.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/SplitMenuColors;->setVersion(I)V

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/SplitMenuColors;->setInstance(I)V

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljxl/biff/drawing/SplitMenuColors;->data:[B

    .line 56
    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0x0t
        0x0t
        0x8t
        0xct
        0x0t
        0x0t
        0x8t
        0x17t
        0x0t
        0x0t
        0x8t
        -0x9t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 0
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 39
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 40
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Ljxl/biff/drawing/SplitMenuColors;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/SplitMenuColors;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method
