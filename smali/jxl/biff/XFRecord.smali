.class public Ljxl/biff/XFRecord;
.super Ljxl/biff/WritableRecordData;
.source "XFRecord.java"

# interfaces
.implements Ljxl/format/CellFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/XFRecord$XFType;,
        Ljxl/biff/XFRecord$BiffType;
    }
.end annotation


# static fields
.field private static final USE_ALIGNMENT:I = 0x10

.field private static final USE_BACKGROUND:I = 0x40

.field private static final USE_BORDER:I = 0x20

.field private static final USE_DEFAULT_VALUE:I = 0xf8

.field private static final USE_FONT:I = 0x4

.field private static final USE_FORMAT:I = 0x8

.field private static final USE_PROTECTION:I = 0x80

.field public static final biff7:Ljxl/biff/XFRecord$BiffType;

.field public static final biff8:Ljxl/biff/XFRecord$BiffType;

.field protected static final cell:Ljxl/biff/XFRecord$XFType;

.field private static final dateFormats:[I

.field private static final javaDateFormats:[Ljava/text/DateFormat;

.field private static javaNumberFormats:[Ljava/text/NumberFormat;

.field private static logger:Ljxl/common/Logger;

.field private static numberFormats:[I

.field protected static final style:Ljxl/biff/XFRecord$XFType;


# instance fields
.field private align:Ljxl/format/Alignment;

.field private backgroundColour:Ljxl/format/Colour;

.field private biffType:Ljxl/biff/XFRecord$BiffType;

.field private bottomBorder:Ljxl/format/BorderLineStyle;

.field private bottomBorderColour:Ljxl/format/Colour;

.field private copied:Z

.field private date:Z

.field private dateFormat:Ljava/text/DateFormat;

.field private excelFormat:Ljxl/format/Format;

.field private font:Ljxl/biff/FontRecord;

.field private fontIndex:I

.field private format:Ljxl/biff/DisplayFormat;

.field public formatIndex:I

.field private formatInfoInitialized:Z

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hidden:Z

.field private indentation:I

.field private initialized:Z

.field private leftBorder:Ljxl/format/BorderLineStyle;

.field private leftBorderColour:Ljxl/format/Colour;

.field private locked:Z

.field private number:Z

.field private numberFormat:Ljava/text/NumberFormat;

.field private options:I

.field private orientation:Ljxl/format/Orientation;

.field private parentFormat:I

.field private pattern:Ljxl/format/Pattern;

.field private read:Z

.field private rightBorder:Ljxl/format/BorderLineStyle;

.field private rightBorderColour:Ljxl/format/Colour;

.field private shrinkToFit:Z

.field private topBorder:Ljxl/format/BorderLineStyle;

.field private topBorderColour:Ljxl/format/Colour;

.field private usedAttributes:B

.field private valign:Ljxl/format/VerticalAlignment;

.field private wrap:Z

.field private xfFormatType:Ljxl/biff/XFRecord$XFType;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 53
    const-class v0, Ljxl/biff/XFRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/XFRecord;->logger:Ljxl/common/Logger;

    .line 250
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljxl/biff/XFRecord;->dateFormats:[I

    .line 267
    new-array v1, v0, [Ljava/text/DateFormat;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "d-MMM"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM-yy"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "h:mm a"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mm:ss a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v5, v1, v8

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "H:mm"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v5, v1, v9

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "H:mm:ss"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x7

    aput-object v5, v1, v11

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "M/d/yy H:mm"

    invoke-direct {v5, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x8

    aput-object v5, v1, v12

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "mm:ss"

    invoke-direct {v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x9

    aput-object v5, v1, v13

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v14, "mm:ss.S"

    invoke-direct {v5, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v5, v1, v14

    sput-object v1, Ljxl/biff/XFRecord;->javaDateFormats:[Ljava/text/DateFormat;

    .line 284
    const/16 v1, 0x14

    new-array v5, v1, [I

    fill-array-data v5, :array_1

    sput-object v5, Ljxl/biff/XFRecord;->numberFormats:[I

    .line 309
    new-array v1, v1, [Ljava/text/NumberFormat;

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v15, "0"

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v4

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v6

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "$#,##0;($#,##0)"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "$#,##0.00;($#,##0.00)"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0%"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0.00%"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "0.00E00"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "#,##0;(#,##0)"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v14

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00;(#,##0.00)"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xd

    aput-object v0, v1, v6

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xe

    aput-object v0, v1, v6

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xf

    aput-object v0, v1, v5

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##0.0E0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sput-object v1, Ljxl/biff/XFRecord;->javaNumberFormats:[Ljava/text/NumberFormat;

    .line 334
    new-instance v0, Ljxl/biff/XFRecord$BiffType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$BiffType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    .line 335
    new-instance v0, Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$BiffType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->biff7:Ljxl/biff/XFRecord$BiffType;

    .line 346
    new-instance v0, Ljxl/biff/XFRecord$XFType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$XFType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    .line 347
    new-instance v0, Ljxl/biff/XFRecord$XFType;

    invoke-direct {v0, v1}, Ljxl/biff/XFRecord$XFType;-><init>(Ljxl/biff/XFRecord$1;)V

    sput-object v0, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    return-void

    :array_0
    .array-data 4
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x2d
        0x2e
        0x2f
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x30
    .end array-data
.end method

.method public constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .locals 3
    .param p1, "fnt"    # Ljxl/biff/FontRecord;
    .param p2, "form"    # Ljxl/biff/DisplayFormat;

    .line 425
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 429
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 430
    sget-object v2, Ljxl/format/Alignment;->GENERAL:Ljxl/format/Alignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 431
    sget-object v2, Ljxl/format/VerticalAlignment;->BOTTOM:Ljxl/format/VerticalAlignment;

    iput-object v2, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 432
    sget-object v2, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    iput-object v2, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 433
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 434
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 435
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 436
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 437
    sget-object v2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 438
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 439
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 440
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 441
    sget-object v2, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 442
    sget-object v2, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    iput-object v2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 443
    sget-object v2, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v2, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 444
    iput v0, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 445
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 446
    const/16 v2, 0x7c

    iput-byte v2, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 450
    iput v0, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 451
    const/4 v2, 0x0

    iput-object v2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 453
    iput-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 454
    iput-object p2, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 455
    sget-object v2, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object v2, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 456
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    .line 457
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 458
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 460
    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 461
    iget-object v2, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 462
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/XFRecord;)V
    .locals 2
    .param p1, "fmt"    # Ljxl/biff/XFRecord;

    .line 472
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 475
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->locked:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 476
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->hidden:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 477
    iget-object v1, p1, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iput-object v1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 478
    iget-object v1, p1, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iput-object v1, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 479
    iget-object v1, p1, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iput-object v1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 480
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->wrap:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 481
    iget-object v1, p1, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 482
    iget-object v1, p1, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 483
    iget-object v1, p1, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 484
    iget-object v1, p1, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iput-object v1, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 485
    iget-object v1, p1, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 486
    iget-object v1, p1, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 487
    iget-object v1, p1, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 488
    iget-object v1, p1, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 489
    iget-object v1, p1, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iput-object v1, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 490
    iget-object v1, p1, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iput-object v1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 491
    iget v1, p1, Ljxl/biff/XFRecord;->indentation:I

    iput v1, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 492
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 493
    iget v1, p1, Ljxl/biff/XFRecord;->parentFormat:I

    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 494
    iget-object v1, p1, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iput-object v1, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 497
    iget-object v1, p1, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    iput-object v1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 498
    iget-object v1, p1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iput-object v1, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 500
    iget v1, p1, Ljxl/biff/XFRecord;->fontIndex:I

    iput v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 501
    iget v1, p1, Ljxl/biff/XFRecord;->formatIndex:I

    iput v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 503
    iget-boolean v1, p1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    iput-boolean v1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 505
    sget-object v1, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object v1, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 506
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 508
    return-void
.end method

.method protected constructor <init>(Ljxl/format/CellFormat;)V
    .locals 5
    .param p1, "cellFormat"    # Ljxl/format/CellFormat;

    .line 519
    sget-object v0, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 521
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 522
    instance-of v2, p1, Ljxl/biff/XFRecord;

    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 523
    move-object v2, p1

    check-cast v2, Ljxl/biff/XFRecord;

    .line 525
    .local v2, "fmt":Ljxl/biff/XFRecord;
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v3, :cond_1

    .line 527
    invoke-direct {v2}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 530
    :cond_1
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->locked:Z

    iput-boolean v3, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 531
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->hidden:Z

    iput-boolean v3, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 532
    iget-object v3, v2, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iput-object v3, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 533
    iget-object v3, v2, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iput-object v3, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 534
    iget-object v3, v2, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iput-object v3, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 535
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->wrap:Z

    iput-boolean v3, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 536
    iget-object v3, v2, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iput-object v3, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 537
    iget-object v3, v2, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iput-object v3, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 538
    iget-object v3, v2, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iput-object v3, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 539
    iget-object v3, v2, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iput-object v3, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 540
    iget-object v3, v2, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iput-object v3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 541
    iget-object v3, v2, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iput-object v3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 542
    iget-object v3, v2, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iput-object v3, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 543
    iget-object v3, v2, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iput-object v3, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 544
    iget-object v3, v2, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iput-object v3, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 545
    iget-object v3, v2, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iput-object v3, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 546
    iget v3, v2, Ljxl/biff/XFRecord;->parentFormat:I

    iput v3, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 547
    iget v3, v2, Ljxl/biff/XFRecord;->indentation:I

    iput v3, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 548
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iput-boolean v3, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 549
    iget-object v3, v2, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iput-object v3, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 552
    new-instance v3, Ljxl/biff/FontRecord;

    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/biff/FontRecord;-><init>(Ljxl/format/Font;)V

    iput-object v3, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 555
    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getFormat()Ljxl/format/Format;

    move-result-object v3

    if-nez v3, :cond_3

    .line 558
    iget-object v3, v2, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {v3}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    iget-object v3, v2, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iput-object v3, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_1

    .line 565
    :cond_2
    new-instance v3, Ljxl/biff/FormatRecord;

    iget-object v4, v2, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    check-cast v4, Ljxl/biff/FormatRecord;

    invoke-direct {v3, v4}, Ljxl/biff/FormatRecord;-><init>(Ljxl/biff/FormatRecord;)V

    iput-object v3, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_1

    .line 568
    :cond_3
    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getFormat()Ljxl/format/Format;

    move-result-object v3

    instance-of v3, v3, Ljxl/biff/BuiltInFormat;

    if-eqz v3, :cond_4

    .line 571
    iget-object v3, v2, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast v3, Ljxl/biff/BuiltInFormat;

    iput-object v3, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 572
    iget-object v3, v2, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast v3, Ljxl/biff/BuiltInFormat;

    iput-object v3, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    goto :goto_1

    .line 577
    :cond_4
    iget-boolean v3, v2, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 581
    iget-object v3, v2, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    instance-of v3, v3, Ljxl/biff/FormatRecord;

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 584
    new-instance v3, Ljxl/biff/FormatRecord;

    iget-object v4, v2, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    check-cast v4, Ljxl/biff/FormatRecord;

    invoke-direct {v3, v4}, Ljxl/biff/FormatRecord;-><init>(Ljxl/biff/FormatRecord;)V

    .line 588
    .local v3, "fr":Ljxl/biff/FormatRecord;
    iput-object v3, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 589
    iput-object v3, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    .line 592
    .end local v3    # "fr":Ljxl/biff/FormatRecord;
    :goto_1
    sget-object v3, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    iput-object v3, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 595
    iput-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 598
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->read:Z

    .line 601
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 604
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 605
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V
    .locals 8
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "bt"    # Ljxl/biff/XFRecord$BiffType;

    .line 357
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 359
    iput-object p3, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    .line 361
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 363
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 364
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 365
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->date:Z

    .line 366
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->number:Z

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Ljxl/biff/XFRecord;->dateFormats:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    iget-boolean v5, p0, Ljxl/biff/XFRecord;->date:Z

    if-nez v5, :cond_1

    .line 372
    iget v5, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget v4, v4, v2

    if-ne v5, v4, :cond_0

    .line 374
    iput-boolean v3, p0, Ljxl/biff/XFRecord;->date:Z

    .line 375
    sget-object v4, Ljxl/biff/XFRecord;->javaDateFormats:[Ljava/text/DateFormat;

    aget-object v4, v4, v2

    iput-object v4, p0, Ljxl/biff/XFRecord;->dateFormat:Ljava/text/DateFormat;

    .line 370
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v4, Ljxl/biff/XFRecord;->numberFormats:[I

    array-length v5, v4

    if-ge v2, v5, :cond_3

    iget-boolean v5, p0, Ljxl/biff/XFRecord;->number:Z

    if-nez v5, :cond_3

    .line 382
    iget v5, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget v4, v4, v2

    if-ne v5, v4, :cond_2

    .line 384
    iput-boolean v3, p0, Ljxl/biff/XFRecord;->number:Z

    .line 385
    sget-object v4, Ljxl/biff/XFRecord;->javaNumberFormats:[Ljava/text/NumberFormat;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/DecimalFormat;

    .line 386
    .local v4, "df":Ljava/text/DecimalFormat;
    new-instance v5, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Ljxl/WorkbookSettings;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 388
    .local v5, "symbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 389
    iput-object v4, p0, Ljxl/biff/XFRecord;->numberFormat:Ljava/text/NumberFormat;

    .line 380
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x4

    aget-byte v4, v0, v2

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 396
    .local v4, "cellAttributes":I
    const v5, 0xfff0

    and-int/2addr v5, v4

    shr-int/lit8 v2, v5, 0x4

    iput v2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 398
    and-int/lit8 v5, v4, 0x4

    .line 399
    .local v5, "formatType":I
    if-nez v5, :cond_4

    sget-object v6, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    goto :goto_2

    :cond_4
    sget-object v6, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    :goto_2
    iput-object v6, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 400
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    iput-boolean v7, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 401
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_6

    move v7, v3

    goto :goto_4

    :cond_6
    move v7, v1

    :goto_4
    iput-boolean v7, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 403
    sget-object v7, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v6, v7, :cond_7

    const/16 v6, 0xfff

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_7

    .line 407
    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 408
    sget-object v2, Ljxl/biff/XFRecord;->logger:Ljxl/common/Logger;

    const-string v6, "Invalid parent format found - ignoring"

    invoke-virtual {v2, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 411
    :cond_7
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 412
    iput-boolean v3, p0, Ljxl/biff/XFRecord;->read:Z

    .line 413
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 414
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->copied:Z

    .line 415
    return-void
.end method

.method private initializeFormatInformation()V
    .locals 13

    .line 1348
    iget v0, p0, Ljxl/biff/XFRecord;->formatIndex:I

    sget-object v1, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1351
    sget-object v0, Ljxl/biff/BuiltInFormat;->builtIns:[Ljxl/biff/BuiltInFormat;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    goto :goto_0

    .line 1355
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getFormatRecord(I)Ljxl/biff/FormatRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    .line 1359
    :goto_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/biff/FormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v0

    iget v1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 1362
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 1365
    .local v0, "data":[B
    const/4 v1, 0x4

    aget-byte v2, v0, v1

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 1366
    .local v2, "cellAttributes":I
    const v3, 0xfff0

    and-int/2addr v3, v2

    shr-int/lit8 v1, v3, 0x4

    iput v1, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 1367
    and-int/lit8 v3, v2, 0x4

    .line 1368
    .local v3, "formatType":I
    if-nez v3, :cond_1

    sget-object v4, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    goto :goto_1

    :cond_1
    sget-object v4, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    :goto_1
    iput-object v4, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 1369
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 1370
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Ljxl/biff/XFRecord;->hidden:Z

    .line 1372
    sget-object v5, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v4, v5, :cond_4

    const/16 v4, 0xfff

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 1376
    iput v6, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 1377
    sget-object v1, Ljxl/biff/XFRecord;->logger:Ljxl/common/Logger;

    const-string v4, "Invalid parent format found - ignoring"

    invoke-virtual {v1, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1381
    :cond_4
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v4, 0x7

    aget-byte v5, v0, v4

    invoke-static {v1, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 1384
    .local v1, "alignMask":I
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_5

    .line 1386
    iput-boolean v7, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 1390
    :cond_5
    and-int/lit8 v5, v1, 0x7

    invoke-static {v5}, Ljxl/format/Alignment;->getAlignment(I)Ljxl/format/Alignment;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 1393
    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v4

    invoke-static {v5}, Ljxl/format/VerticalAlignment;->getAlignment(I)Ljxl/format/VerticalAlignment;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 1396
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljxl/format/Orientation;->getOrientation(I)Ljxl/format/Orientation;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 1398
    const/16 v5, 0x8

    aget-byte v5, v0, v5

    const/16 v8, 0x9

    aget-byte v9, v0, v8

    invoke-static {v5, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 1401
    .local v5, "attr":I
    and-int/lit8 v9, v5, 0xf

    iput v9, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 1404
    and-int/lit8 v9, v5, 0x10

    if-eqz v9, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 1407
    iget-object v6, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    sget-object v9, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    if-ne v6, v9, :cond_7

    .line 1409
    aget-byte v6, v0, v8

    iput-byte v6, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 1413
    :cond_7
    const/16 v6, 0xa

    aget-byte v8, v0, v6

    const/16 v10, 0xb

    aget-byte v10, v0, v10

    invoke-static {v8, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    .line 1415
    .local v8, "borderMask":I
    and-int/lit8 v10, v8, 0x7

    invoke-static {v10}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v10

    iput-object v10, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 1416
    shr-int/lit8 v10, v8, 0x4

    and-int/2addr v10, v4

    invoke-static {v10}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v10

    iput-object v10, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 1417
    shr-int/lit8 v10, v8, 0x8

    and-int/2addr v10, v4

    invoke-static {v10}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v10

    iput-object v10, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 1418
    shr-int/lit8 v10, v8, 0xc

    and-int/2addr v10, v4

    invoke-static {v10}, Ljxl/format/BorderLineStyle;->getStyle(I)Ljxl/format/BorderLineStyle;

    move-result-object v10

    iput-object v10, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 1420
    const/16 v10, 0xc

    aget-byte v10, v0, v10

    const/16 v11, 0xd

    aget-byte v11, v0, v11

    invoke-static {v10, v11}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    .line 1422
    .local v10, "borderColourMask":I
    and-int/lit8 v11, v10, 0x7f

    invoke-static {v11}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v11

    iput-object v11, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    .line 1423
    and-int/lit16 v11, v10, 0x3f80

    shr-int/2addr v11, v4

    invoke-static {v11}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v11

    iput-object v11, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    .line 1426
    const/16 v11, 0xe

    aget-byte v11, v0, v11

    const/16 v12, 0xf

    aget-byte v12, v0, v12

    invoke-static {v11, v12}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    .line 1427
    and-int/lit8 v11, v10, 0x7f

    invoke-static {v11}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v11

    iput-object v11, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    .line 1428
    and-int/lit16 v11, v10, 0x3f80

    shr-int/lit8 v4, v11, 0x7

    invoke-static {v4}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 1431
    iget-object v4, p0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    if-ne v4, v9, :cond_a

    .line 1434
    const/16 v4, 0x10

    aget-byte v4, v0, v4

    const/16 v9, 0x11

    aget-byte v9, v0, v9

    invoke-static {v4, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 1435
    .local v4, "patternVal":I
    const v9, 0xfc00

    and-int/2addr v4, v9

    .line 1436
    shr-int/2addr v4, v6

    .line 1437
    invoke-static {v4}, Ljxl/format/Pattern;->getPattern(I)Ljxl/format/Pattern;

    move-result-object v6

    iput-object v6, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 1440
    const/16 v6, 0x12

    aget-byte v6, v0, v6

    const/16 v9, 0x13

    aget-byte v9, v0, v9

    invoke-static {v6, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    .line 1441
    .local v6, "colourPaletteMask":I
    and-int/lit8 v9, v6, 0x3f

    invoke-static {v9}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v9

    iput-object v9, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 1443
    sget-object v11, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    if-eq v9, v11, :cond_8

    iget-object v9, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    sget-object v11, Ljxl/format/Colour;->DEFAULT_BACKGROUND1:Ljxl/format/Colour;

    if-ne v9, v11, :cond_9

    .line 1446
    :cond_8
    sget-object v9, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v9, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 1448
    .end local v4    # "patternVal":I
    .end local v6    # "colourPaletteMask":I
    :cond_9
    goto :goto_4

    .line 1451
    :cond_a
    sget-object v4, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    iput-object v4, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 1452
    sget-object v4, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    iput-object v4, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 1456
    :goto_4
    iput-boolean v7, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    .line 1457
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1525
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1527
    return v0

    .line 1530
    :cond_0
    instance-of v1, p1, Ljxl/biff/XFRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1532
    return v2

    .line 1535
    :cond_1
    move-object v1, p1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 1538
    .local v1, "xfr":Ljxl/biff/XFRecord;
    iget-boolean v3, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v3, :cond_2

    .line 1540
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1543
    :cond_2
    iget-boolean v3, v1, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v3, :cond_3

    .line 1545
    invoke-direct {v1}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1548
    :cond_3
    iget-object v3, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    iget-object v4, v1, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    if-ne v3, v4, :cond_11

    iget v3, p0, Ljxl/biff/XFRecord;->parentFormat:I

    iget v4, v1, Ljxl/biff/XFRecord;->parentFormat:I

    if-ne v3, v4, :cond_11

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->locked:Z

    iget-boolean v4, v1, Ljxl/biff/XFRecord;->locked:Z

    if-ne v3, v4, :cond_11

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->hidden:Z

    iget-boolean v4, v1, Ljxl/biff/XFRecord;->hidden:Z

    if-ne v3, v4, :cond_11

    iget-byte v3, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    iget-byte v4, v1, Ljxl/biff/XFRecord;->usedAttributes:B

    if-eq v3, v4, :cond_4

    goto/16 :goto_5

    .line 1557
    :cond_4
    iget-object v3, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    iget-object v4, v1, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    iget-object v4, v1, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    iget-object v4, v1, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    if-ne v3, v4, :cond_10

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->wrap:Z

    iget-boolean v4, v1, Ljxl/biff/XFRecord;->wrap:Z

    if-ne v3, v4, :cond_10

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    iget-boolean v4, v1, Ljxl/biff/XFRecord;->shrinkToFit:Z

    if-ne v3, v4, :cond_10

    iget v3, p0, Ljxl/biff/XFRecord;->indentation:I

    iget v4, v1, Ljxl/biff/XFRecord;->indentation:I

    if-eq v3, v4, :cond_5

    goto/16 :goto_4

    .line 1567
    :cond_5
    iget-object v3, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    iget-object v4, v1, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    iget-object v4, v1, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    iget-object v4, v1, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    iget-object v4, v1, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    if-eq v3, v4, :cond_6

    goto :goto_3

    .line 1575
    :cond_6
    iget-object v3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    iget-object v4, v1, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    iget-object v4, v1, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    iget-object v4, v1, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    iget-object v4, v1, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    if-eq v3, v4, :cond_7

    goto :goto_2

    .line 1583
    :cond_7
    iget-object v3, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    iget-object v4, v1, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    iget-object v4, v1, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    if-eq v3, v4, :cond_8

    goto :goto_1

    .line 1589
    :cond_8
    iget-boolean v3, p0, Ljxl/biff/XFRecord;->initialized:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Ljxl/biff/XFRecord;->initialized:Z

    if-eqz v3, :cond_a

    .line 1596
    iget v3, p0, Ljxl/biff/XFRecord;->fontIndex:I

    iget v4, v1, Ljxl/biff/XFRecord;->fontIndex:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Ljxl/biff/XFRecord;->formatIndex:I

    iget v4, v1, Ljxl/biff/XFRecord;->formatIndex:I

    if-eq v3, v4, :cond_b

    .line 1599
    :cond_9
    return v2

    .line 1605
    :cond_a
    iget-object v3, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    iget-object v4, v1, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {v3, v4}, Ljxl/biff/FontRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    iget-object v4, v1, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    .line 1612
    :cond_b
    return v0

    .line 1608
    :cond_c
    :goto_0
    return v2

    .line 1586
    :cond_d
    :goto_1
    return v2

    .line 1580
    :cond_e
    :goto_2
    return v2

    .line 1572
    :cond_f
    :goto_3
    return v2

    .line 1564
    :cond_10
    :goto_4
    return v2

    .line 1554
    :cond_11
    :goto_5
    return v2
.end method

.method public getAlignment()Ljxl/format/Alignment;
    .locals 1

    .line 859
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 864
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    return-object v0
.end method

.method public getBackgroundColour()Ljxl/format/Colour;
    .locals 1

    .line 966
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 968
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 971
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    return-object v0
.end method

.method public getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;
    .locals 1
    .param p1, "border"    # Ljxl/format/Border;

    .line 1102
    invoke-virtual {p0, p1}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;
    .locals 1
    .param p1, "border"    # Ljxl/format/Border;

    .line 1158
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_1

    .line 1166
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1169
    :cond_1
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_2

    .line 1171
    iget-object v0, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    return-object v0

    .line 1173
    :cond_2
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_3

    .line 1175
    iget-object v0, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    return-object v0

    .line 1177
    :cond_3
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_4

    .line 1179
    iget-object v0, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    return-object v0

    .line 1181
    :cond_4
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_5

    .line 1183
    iget-object v0, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    return-object v0

    .line 1186
    :cond_5
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    return-object v0

    .line 1161
    :cond_6
    :goto_0
    sget-object v0, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    return-object v0
.end method

.method public getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;
    .locals 1
    .param p1, "border"    # Ljxl/format/Border;

    .line 1116
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_1

    .line 1124
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1127
    :cond_1
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_2

    .line 1129
    iget-object v0, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    return-object v0

    .line 1131
    :cond_2
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_3

    .line 1133
    iget-object v0, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    return-object v0

    .line 1135
    :cond_3
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_4

    .line 1137
    iget-object v0, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    return-object v0

    .line 1139
    :cond_4
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_5

    .line 1141
    iget-object v0, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    return-object v0

    .line 1144
    :cond_5
    sget-object v0, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    return-object v0

    .line 1119
    :cond_6
    :goto_0
    sget-object v0, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    return-object v0
.end method

.method public getData()[B
    .locals 17

    .line 670
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v1, :cond_0

    .line 672
    invoke-direct/range {p0 .. p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 675
    :cond_0
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 677
    .local v1, "data":[B
    iget v2, v0, Ljxl/biff/XFRecord;->fontIndex:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 678
    iget v2, v0, Ljxl/biff/XFRecord;->formatIndex:I

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 681
    const/4 v2, 0x0

    .line 683
    .local v2, "cellAttributes":I
    invoke-virtual/range {p0 .. p0}, Ljxl/biff/XFRecord;->getLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 685
    or-int/lit8 v2, v2, 0x1

    .line 688
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljxl/biff/XFRecord;->getHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 690
    or-int/lit8 v2, v2, 0x2

    .line 693
    :cond_2
    iget-object v3, v0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v4, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    if-ne v3, v4, :cond_3

    .line 695
    or-int/lit8 v2, v2, 0x4

    .line 696
    const v3, 0xffff

    iput v3, v0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 699
    :cond_3
    iget v3, v0, Ljxl/biff/XFRecord;->parentFormat:I

    const/4 v4, 0x4

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 701
    invoke-static {v2, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 703
    iget-object v3, v0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    invoke-virtual {v3}, Ljxl/format/Alignment;->getValue()I

    move-result v3

    .line 705
    .local v3, "alignMask":I
    iget-boolean v5, v0, Ljxl/biff/XFRecord;->wrap:Z

    if-eqz v5, :cond_4

    .line 707
    or-int/lit8 v3, v3, 0x8

    .line 710
    :cond_4
    iget-object v5, v0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    invoke-virtual {v5}, Ljxl/format/VerticalAlignment;->getValue()I

    move-result v5

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 712
    iget-object v5, v0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    invoke-virtual {v5}, Ljxl/format/Orientation;->getValue()I

    move-result v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 714
    const/4 v5, 0x6

    invoke-static {v3, v1, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 716
    const/16 v5, 0x9

    const/16 v7, 0x10

    aput-byte v7, v1, v5

    .line 719
    iget-object v8, v0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v8}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v8

    .line 720
    .local v8, "borderMask":I
    iget-object v9, v0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v9}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v9

    shl-int/lit8 v4, v9, 0x4

    or-int/2addr v4, v8

    .line 721
    .end local v8    # "borderMask":I
    .local v4, "borderMask":I
    iget-object v8, v0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v8}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v8

    shl-int/2addr v8, v6

    or-int/2addr v4, v8

    .line 722
    iget-object v8, v0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v8}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v8

    const/16 v9, 0xc

    shl-int/2addr v8, v9

    or-int/2addr v4, v8

    .line 724
    const/16 v8, 0xa

    invoke-static {v4, v1, v8}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 728
    if-eqz v4, :cond_5

    .line 730
    iget-object v10, v0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    invoke-virtual {v10}, Ljxl/format/Colour;->getValue()I

    move-result v10

    int-to-byte v10, v10

    .line 731
    .local v10, "lc":B
    iget-object v11, v0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    invoke-virtual {v11}, Ljxl/format/Colour;->getValue()I

    move-result v11

    int-to-byte v11, v11

    .line 732
    .local v11, "rc":B
    iget-object v12, v0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    invoke-virtual {v12}, Ljxl/format/Colour;->getValue()I

    move-result v12

    int-to-byte v12, v12

    .line 733
    .local v12, "tc":B
    iget-object v13, v0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    invoke-virtual {v13}, Ljxl/format/Colour;->getValue()I

    move-result v13

    int-to-byte v13, v13

    .line 735
    .local v13, "bc":B
    and-int/lit8 v14, v10, 0x7f

    and-int/lit8 v15, v11, 0x7f

    shl-int/lit8 v15, v15, 0x7

    or-int/2addr v14, v15

    .line 736
    .local v14, "sideColourMask":I
    and-int/lit8 v15, v12, 0x7f

    and-int/lit8 v16, v13, 0x7f

    shl-int/lit8 v16, v16, 0x7

    or-int v15, v15, v16

    .line 738
    .local v15, "topColourMask":I
    invoke-static {v14, v1, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 739
    const/16 v9, 0xe

    invoke-static {v15, v1, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 743
    .end local v10    # "lc":B
    .end local v11    # "rc":B
    .end local v12    # "tc":B
    .end local v13    # "bc":B
    .end local v14    # "sideColourMask":I
    .end local v15    # "topColourMask":I
    :cond_5
    iget-object v9, v0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    invoke-virtual {v9}, Ljxl/format/Pattern;->getValue()I

    move-result v9

    shl-int/lit8 v8, v9, 0xa

    .line 744
    .local v8, "patternVal":I
    invoke-static {v8, v1, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 747
    iget-object v9, v0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    invoke-virtual {v9}, Ljxl/format/Colour;->getValue()I

    move-result v9

    .line 748
    .local v9, "colourPaletteMask":I
    or-int/lit16 v9, v9, 0x2000

    .line 749
    const/16 v10, 0x12

    invoke-static {v9, v1, v10}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 752
    iget v10, v0, Ljxl/biff/XFRecord;->options:I

    iget v11, v0, Ljxl/biff/XFRecord;->indentation:I

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    iput v10, v0, Ljxl/biff/XFRecord;->options:I

    .line 754
    iget-boolean v11, v0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    if-eqz v11, :cond_6

    .line 756
    or-int/2addr v7, v10

    iput v7, v0, Ljxl/biff/XFRecord;->options:I

    goto :goto_0

    .line 760
    :cond_6
    and-int/lit16 v7, v10, 0xef

    iput v7, v0, Ljxl/biff/XFRecord;->options:I

    .line 763
    :goto_0
    iget v7, v0, Ljxl/biff/XFRecord;->options:I

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 765
    iget-object v6, v0, Ljxl/biff/XFRecord;->biffType:Ljxl/biff/XFRecord$BiffType;

    sget-object v7, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    if-ne v6, v7, :cond_7

    .line 767
    iget-byte v6, v0, Ljxl/biff/XFRecord;->usedAttributes:B

    aput-byte v6, v1, v5

    .line 770
    :cond_7
    return-object v1
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 614
    iget-object v0, p0, Ljxl/biff/XFRecord;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getFont()Ljxl/format/Font;
    .locals 1

    .line 1335
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 1337
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1339
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    return-object v0
.end method

.method public getFontIndex()I
    .locals 1

    .line 1632
    iget v0, p0, Ljxl/biff/XFRecord;->fontIndex:I

    return v0
.end method

.method public getFormat()Ljxl/format/Format;
    .locals 1

    .line 1321
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 1323
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1325
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->excelFormat:Ljxl/format/Format;

    return-object v0
.end method

.method public getFormatRecord()I
    .locals 1

    .line 634
    iget v0, p0, Ljxl/biff/XFRecord;->formatIndex:I

    return v0
.end method

.method protected final getHidden()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->hidden:Z

    return v0
.end method

.method public getIndentation()I
    .locals 1

    .line 874
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 876
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 879
    :cond_0
    iget v0, p0, Ljxl/biff/XFRecord;->indentation:I

    return v0
.end method

.method protected final getLocked()Z
    .locals 1

    .line 780
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->locked:Z

    return v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 624
    iget-object v0, p0, Ljxl/biff/XFRecord;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getOrientation()Ljxl/format/Orientation;
    .locals 1

    .line 935
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 937
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 940
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    return-object v0
.end method

.method public getPattern()Ljxl/format/Pattern;
    .locals 1

    .line 981
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 983
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 986
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    return-object v0
.end method

.method public getVerticalAlignment()Ljxl/format/VerticalAlignment;
    .locals 1

    .line 920
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 922
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 925
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    return-object v0
.end method

.method public getWrap()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 1042
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1045
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->wrap:Z

    return v0
.end method

.method public final getXFIndex()I
    .locals 1

    .line 1289
    iget v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    return v0
.end method

.method public final hasBorders()Z
    .locals 2

    .line 1198
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 1200
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1203
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v0, v1, :cond_1

    .line 1208
    const/4 v0, 0x0

    return v0

    .line 1211
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1466
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 1468
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 1471
    :cond_0
    const/16 v0, 0x11

    .line 1472
    .local v0, "hashValue":I
    const/16 v1, 0x25

    .line 1475
    .local v1, "oddPrimeNumber":I
    mul-int v2, v1, v0

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->hidden:Z

    add-int/2addr v2, v3

    .line 1476
    .end local v0    # "hashValue":I
    .local v2, "hashValue":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->locked:Z

    add-int/2addr v0, v3

    .line 1477
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->wrap:Z

    add-int/2addr v2, v3

    .line 1478
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    add-int/2addr v0, v3

    .line 1481
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    iget-object v2, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v3, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v2, v3, :cond_1

    .line 1483
    mul-int v2, v1, v0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 1485
    :cond_1
    sget-object v3, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    if-ne v2, v3, :cond_2

    .line 1487
    mul-int v2, v1, v0

    add-int/lit8 v0, v2, 0x2

    .line 1490
    :cond_2
    :goto_0
    mul-int v2, v1, v0

    iget-object v3, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    invoke-virtual {v3}, Ljxl/format/Alignment;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1491
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget-object v3, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    invoke-virtual {v3}, Ljxl/format/VerticalAlignment;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1492
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget-object v3, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    invoke-virtual {v3}, Ljxl/format/Orientation;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 1494
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    iget-object v0, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    .line 1495
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    iget-object v2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 1496
    iget-object v2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 1497
    iget-object v2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    invoke-virtual {v2}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 1499
    mul-int v2, v1, v0

    iget-object v3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 1500
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget-object v3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    add-int/2addr v0, v3

    .line 1501
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget-object v3, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 1502
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget-object v3, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    add-int/2addr v0, v3

    .line 1503
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget-object v3, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    invoke-virtual {v3}, Ljxl/format/Colour;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 1504
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget-object v3, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    invoke-virtual {v3}, Ljxl/format/Pattern;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1507
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget-byte v3, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    add-int/2addr v2, v3

    .line 1508
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget v3, p0, Ljxl/biff/XFRecord;->parentFormat:I

    add-int/2addr v0, v3

    .line 1509
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget v3, p0, Ljxl/biff/XFRecord;->fontIndex:I

    add-int/2addr v2, v3

    .line 1510
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    mul-int v0, v1, v2

    iget v3, p0, Ljxl/biff/XFRecord;->formatIndex:I

    add-int/2addr v0, v3

    .line 1511
    .end local v2    # "hashValue":I
    .restart local v0    # "hashValue":I
    mul-int v2, v1, v0

    iget v3, p0, Ljxl/biff/XFRecord;->indentation:I

    add-int/2addr v2, v3

    .line 1513
    .end local v0    # "hashValue":I
    .restart local v2    # "hashValue":I
    return v2
.end method

.method public final initialize(ILjxl/biff/FormattingRecords;Ljxl/biff/Fonts;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "fonts"    # Ljxl/biff/Fonts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 1227
    iput p1, p0, Ljxl/biff/XFRecord;->xfIndex:I

    .line 1228
    iput-object p2, p0, Ljxl/biff/XFRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 1234
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ljxl/biff/XFRecord;->copied:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    iget-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {v0}, Ljxl/biff/FontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    iget-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {p3, v0}, Ljxl/biff/Fonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 1245
    :cond_1
    iget-object v0, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {v0}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1247
    iget-object v0, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-virtual {p2, v0}, Ljxl/biff/FormattingRecords;->addFormat(Ljxl/biff/DisplayFormat;)V

    .line 1250
    :cond_2
    iget-object v0, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    invoke-virtual {v0}, Ljxl/biff/FontRecord;->getFontIndex()I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 1251
    iget-object v0, p0, Ljxl/biff/XFRecord;->format:Ljxl/biff/DisplayFormat;

    invoke-interface {v0}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 1253
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 1254
    return-void

    .line 1236
    :cond_3
    :goto_0
    iput-boolean v1, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 1237
    return-void
.end method

.method public isDate()Z
    .locals 1

    .line 644
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->date:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1299
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 904
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 909
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->locked:Z

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->number:Z

    return v0
.end method

.method public final isRead()Z
    .locals 1

    .line 1311
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->read:Z

    return v0
.end method

.method public isShrinkToFit()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->formatInfoInitialized:Z

    if-nez v0, :cond_0

    .line 891
    invoke-direct {p0}, Ljxl/biff/XFRecord;->initializeFormatInformation()V

    .line 894
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .locals 2
    .param p1, "xfMapping"    # Ljxl/biff/IndexMapping;

    .line 1663
    iget v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->xfIndex:I

    .line 1665
    iget-object v0, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    sget-object v1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    if-ne v0, v1, :cond_0

    .line 1667
    iget v0, p0, Ljxl/biff/XFRecord;->parentFormat:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v0

    iput v0, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 1669
    :cond_0
    return-void
.end method

.method public setFont(Ljxl/biff/FontRecord;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/FontRecord;

    .line 1684
    iput-object p1, p0, Ljxl/biff/XFRecord;->font:Ljxl/biff/FontRecord;

    .line 1685
    return-void
.end method

.method setFontIndex(I)V
    .locals 0
    .param p1, "newindex"    # I

    .line 1643
    iput p1, p0, Ljxl/biff/XFRecord;->fontIndex:I

    .line 1644
    return-void
.end method

.method setFormatIndex(I)V
    .locals 0
    .param p1, "newindex"    # I

    .line 1622
    iput p1, p0, Ljxl/biff/XFRecord;->formatIndex:I

    .line 1623
    return-void
.end method

.method protected setXFAlignment(Ljxl/format/Alignment;)V
    .locals 1
    .param p1, "a"    # Ljxl/format/Alignment;

    .line 823
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 824
    iput-object p1, p0, Ljxl/biff/XFRecord;->align:Ljxl/format/Alignment;

    .line 825
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 826
    return-void
.end method

.method protected setXFBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "p"    # Ljxl/format/Pattern;

    .line 953
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 954
    iput-object p1, p0, Ljxl/biff/XFRecord;->backgroundColour:Ljxl/format/Colour;

    .line 955
    iput-object p2, p0, Ljxl/biff/XFRecord;->pattern:Ljxl/format/Pattern;

    .line 956
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 957
    return-void
.end method

.method protected setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .locals 1
    .param p1, "b"    # Ljxl/format/Border;
    .param p2, "ls"    # Ljxl/format/BorderLineStyle;
    .param p3, "c"    # Ljxl/format/Colour;

    .line 1058
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1060
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    if-eq p3, v0, :cond_0

    sget-object v0, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    if-ne p3, v0, :cond_1

    .line 1062
    :cond_0
    sget-object p3, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    .line 1065
    :cond_1
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    if-ne p1, v0, :cond_2

    .line 1067
    iput-object p2, p0, Ljxl/biff/XFRecord;->leftBorder:Ljxl/format/BorderLineStyle;

    .line 1068
    iput-object p3, p0, Ljxl/biff/XFRecord;->leftBorderColour:Ljxl/format/Colour;

    goto :goto_0

    .line 1070
    :cond_2
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    if-ne p1, v0, :cond_3

    .line 1072
    iput-object p2, p0, Ljxl/biff/XFRecord;->rightBorder:Ljxl/format/BorderLineStyle;

    .line 1073
    iput-object p3, p0, Ljxl/biff/XFRecord;->rightBorderColour:Ljxl/format/Colour;

    goto :goto_0

    .line 1075
    :cond_3
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    if-ne p1, v0, :cond_4

    .line 1077
    iput-object p2, p0, Ljxl/biff/XFRecord;->topBorder:Ljxl/format/BorderLineStyle;

    .line 1078
    iput-object p3, p0, Ljxl/biff/XFRecord;->topBorderColour:Ljxl/format/Colour;

    goto :goto_0

    .line 1080
    :cond_4
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    if-ne p1, v0, :cond_5

    .line 1082
    iput-object p2, p0, Ljxl/biff/XFRecord;->bottomBorder:Ljxl/format/BorderLineStyle;

    .line 1083
    iput-object p3, p0, Ljxl/biff/XFRecord;->bottomBorderColour:Ljxl/format/Colour;

    .line 1086
    :cond_5
    :goto_0
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 1088
    return-void
.end method

.method protected final setXFCellOptions(I)V
    .locals 1
    .param p1, "opt"    # I

    .line 811
    iget v0, p0, Ljxl/biff/XFRecord;->options:I

    or-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/XFRecord;->options:I

    .line 812
    return-void
.end method

.method protected setXFDetails(Ljxl/biff/XFRecord$XFType;I)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/XFRecord$XFType;
    .param p2, "pf"    # I

    .line 1653
    iput-object p1, p0, Ljxl/biff/XFRecord;->xfFormatType:Ljxl/biff/XFRecord$XFType;

    .line 1654
    iput p2, p0, Ljxl/biff/XFRecord;->parentFormat:I

    .line 1655
    return-void
.end method

.method protected setXFIndentation(I)V
    .locals 1
    .param p1, "i"    # I

    .line 835
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 836
    iput p1, p0, Ljxl/biff/XFRecord;->indentation:I

    .line 837
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 838
    return-void
.end method

.method final setXFIndex(I)V
    .locals 0
    .param p1, "xfi"    # I

    .line 1279
    iput p1, p0, Ljxl/biff/XFRecord;->xfIndex:I

    .line 1280
    return-void
.end method

.method protected final setXFLocked(Z)V
    .locals 1
    .param p1, "l"    # Z

    .line 800
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->locked:Z

    .line 801
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 802
    return-void
.end method

.method protected setXFOrientation(Ljxl/format/Orientation;)V
    .locals 1
    .param p1, "o"    # Ljxl/format/Orientation;

    .line 1014
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1015
    iput-object p1, p0, Ljxl/biff/XFRecord;->orientation:Ljxl/format/Orientation;

    .line 1016
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 1017
    return-void
.end method

.method protected setXFShrinkToFit(Z)V
    .locals 1
    .param p1, "s"    # Z

    .line 847
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 848
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->shrinkToFit:Z

    .line 849
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 850
    return-void
.end method

.method protected setXFVerticalAlignment(Ljxl/format/VerticalAlignment;)V
    .locals 1
    .param p1, "va"    # Ljxl/format/VerticalAlignment;

    .line 999
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1000
    iput-object p1, p0, Ljxl/biff/XFRecord;->valign:Ljxl/format/VerticalAlignment;

    .line 1001
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 1002
    return-void
.end method

.method protected setXFWrap(Z)V
    .locals 1
    .param p1, "w"    # Z

    .line 1028
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1029
    iput-boolean p1, p0, Ljxl/biff/XFRecord;->wrap:Z

    .line 1030
    iget-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Ljxl/biff/XFRecord;->usedAttributes:B

    .line 1031
    return-void
.end method

.method public final uninitialize()V
    .locals 2

    .line 1264
    iget-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1266
    sget-object v0, Ljxl/biff/XFRecord;->logger:Ljxl/common/Logger;

    const-string v1, "A default format has been initialized"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1268
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/XFRecord;->initialized:Z

    .line 1269
    return-void
.end method
