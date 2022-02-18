.class public Ljxl/write/DateTime;
.super Ljxl/write/biff/DateRecord;
.source "DateTime.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/DateCell;


# static fields
.field public static final GMT:Ljxl/write/biff/DateRecord$GMTDate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljxl/write/biff/DateRecord$GMTDate;

    invoke-direct {v0}, Ljxl/write/biff/DateRecord$GMTDate;-><init>()V

    sput-object v0, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;)V

    .line 59
    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 87
    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;
    .param p5, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 101
    invoke-direct/range {p0 .. p5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 102
    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;
    .param p5, "tim"    # Z

    .line 118
    invoke-direct/range {p0 .. p5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(IILjxl/write/DateTime;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "dt"    # Ljxl/write/DateTime;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/DateRecord;-><init>(IILjxl/write/biff/DateRecord;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljxl/DateCell;)V
    .locals 0
    .param p1, "dc"    # Ljxl/DateCell;

    .line 129
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;-><init>(Ljxl/DateCell;)V

    .line 130
    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 175
    new-instance v0, Ljxl/write/DateTime;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/DateTime;-><init>(IILjxl/write/DateTime;)V

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "d"    # Ljava/util/Date;

    .line 152
    invoke-super {p0, p1}, Ljxl/write/biff/DateRecord;->setDate(Ljava/util/Date;)V

    .line 153
    return-void
.end method

.method public setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 163
    invoke-super {p0, p1, p2}, Ljxl/write/biff/DateRecord;->setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 164
    return-void
.end method
