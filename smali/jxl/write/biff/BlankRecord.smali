.class public abstract Ljxl/write/biff/BlankRecord;
.super Ljxl/write/biff/CellValue;
.source "BlankRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/write/biff/BlankRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/BlankRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I

    .line 48
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 49
    return-void
.end method

.method protected constructor <init>(IILjxl/format/CellFormat;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "st"    # Ljxl/format/CellFormat;

    .line 61
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/BlankRecord;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "br"    # Ljxl/write/biff/BlankRecord;

    .line 84
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Ljxl/Cell;)V
    .locals 1
    .param p1, "c"    # Ljxl/Cell;

    .line 72
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 94
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method
