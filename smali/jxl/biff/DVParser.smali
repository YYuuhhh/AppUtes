.class public Ljxl/biff/DVParser;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/DVParser$Condition;,
        Ljxl/biff/DVParser$ErrorStyle;,
        Ljxl/biff/DVParser$DVType;
    }
.end annotation


# static fields
.field public static final ANY:Ljxl/biff/DVParser$DVType;

.field public static final BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final DATE:Ljxl/biff/DVParser$DVType;

.field public static final DECIMAL:Ljxl/biff/DVParser$DVType;

.field private static DECIMAL_FORMAT:Ljava/text/DecimalFormat; = null

.field private static final EMPTY_CELLS_ALLOWED_MASK:I = 0x100

.field public static final EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final FORMULA:Ljxl/biff/DVParser$DVType;

.field public static final GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final GREATER_THAN:Ljxl/biff/DVParser$Condition;

.field public static final INFO:Ljxl/biff/DVParser$ErrorStyle;

.field public static final INTEGER:Ljxl/biff/DVParser$DVType;

.field public static final LESS_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final LESS_THAN:Ljxl/biff/DVParser$Condition;

.field public static final LIST:Ljxl/biff/DVParser$DVType;

.field private static final MAX_COLUMNS:I = 0xff

.field private static final MAX_ROWS:I = 0xffff

.field private static final MAX_VALIDATION_LIST_LENGTH:I = 0xfe

.field public static final NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final NOT_EQUAL:Ljxl/biff/DVParser$Condition;

.field private static final SHOW_ERROR_MASK:I = 0x80000

.field private static final SHOW_PROMPT_MASK:I = 0x40000

.field public static final STOP:Ljxl/biff/DVParser$ErrorStyle;

.field private static final STRING_LIST_GIVEN_MASK:I = 0x80

.field private static final SUPPRESS_ARROW_MASK:I = 0x200

.field public static final TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

.field public static final TIME:Ljxl/biff/DVParser$DVType;

.field public static final WARNING:Ljxl/biff/DVParser$ErrorStyle;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column1:I

.field private column2:I

.field private condition:Ljxl/biff/DVParser$Condition;

.field private copied:Z

.field private emptyCellsAllowed:Z

.field private errorStyle:Ljxl/biff/DVParser$ErrorStyle;

.field private errorText:Ljava/lang/String;

.field private errorTitle:Ljava/lang/String;

.field private extendedCellsValidation:Z

.field private formula1:Ljxl/biff/formula/FormulaParser;

.field private formula1String:Ljava/lang/String;

.field private formula2:Ljxl/biff/formula/FormulaParser;

.field private formula2String:Ljava/lang/String;

.field private promptText:Ljava/lang/String;

.field private promptTitle:Ljava/lang/String;

.field private row1:I

.field private row2:I

.field private showError:Z

.field private showPrompt:Z

.field private stringListGiven:Z

.field private suppressArrow:Z

.field private type:Ljxl/biff/DVParser$DVType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-class v0, Ljxl/biff/DVParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    .line 167
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v1, 0x0

    const-string v2, "any"

    invoke-direct {v0, v1, v2}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->ANY:Ljxl/biff/DVParser$DVType;

    .line 168
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v2, 0x1

    const-string v3, "int"

    invoke-direct {v0, v2, v3}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->INTEGER:Ljxl/biff/DVParser$DVType;

    .line 169
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v3, 0x2

    const-string v4, "dec"

    invoke-direct {v0, v3, v4}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    .line 170
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v4, 0x3

    const-string v5, "list"

    invoke-direct {v0, v4, v5}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    .line 171
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v5, 0x4

    const-string v6, "date"

    invoke-direct {v0, v5, v6}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DATE:Ljxl/biff/DVParser$DVType;

    .line 172
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v6, 0x5

    const-string v7, "time"

    invoke-direct {v0, v6, v7}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TIME:Ljxl/biff/DVParser$DVType;

    .line 173
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v7, 0x6

    const-string v8, "strlen"

    invoke-direct {v0, v7, v8}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

    .line 174
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v8, 0x7

    const-string v9, "form"

    invoke-direct {v0, v8, v9}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->FORMULA:Ljxl/biff/DVParser$DVType;

    .line 177
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v1}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    .line 178
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v2}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->WARNING:Ljxl/biff/DVParser$ErrorStyle;

    .line 179
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v3}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->INFO:Ljxl/biff/DVParser$ErrorStyle;

    .line 182
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v9, "{0} <= x <= {1}"

    invoke-direct {v0, v1, v9}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 183
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "!({0} <= x <= {1}"

    invoke-direct {v0, v2, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 185
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x == {0}"

    invoke-direct {v0, v3, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    .line 186
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x != {0}"

    invoke-direct {v0, v4, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 187
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x > {0}"

    invoke-direct {v0, v5, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    .line 188
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x < {0}"

    invoke-direct {v0, v6, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    .line 189
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x >= {0}"

    invoke-direct {v0, v7, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 190
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string/jumbo v1, "x <= {0}"

    invoke-direct {v0, v8, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 200
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(DDLjxl/biff/DVParser$Condition;)V
    .locals 2
    .param p1, "val1"    # D
    .param p3, "val2"    # D
    .param p5, "c"    # Ljxl/biff/DVParser$Condition;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 610
    sget-object v1, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 611
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 612
    iput-object p5, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 613
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 616
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 617
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 618
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 619
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 620
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 622
    const-string v0, "\u0000"

    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 623
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 624
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 626
    sget-object v0, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 628
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    sget-object v0, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    .line 632
    :cond_0
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "c1"    # I
    .param p2, "r1"    # I
    .param p3, "c2"    # I
    .param p4, "r2"    # I

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 581
    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 582
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 583
    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v1, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 584
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 587
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 588
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 589
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 590
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 591
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 593
    const-string v0, "\u0000"

    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 595
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 596
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    .local v0, "formulaString":Ljava/lang/StringBuffer;
    invoke-static {p1, p2, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 599
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    invoke-static {p3, p4, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "namedRange"    # Ljava/lang/String;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\u0000"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 535
    iput-boolean v3, p0, Ljxl/biff/DVParser;->copied:Z

    .line 536
    sget-object v0, Ljxl/biff/DVParser;->FORMULA:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 537
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 538
    sget-object v0, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 539
    iput-boolean v3, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 541
    iput-boolean v3, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 542
    iput-boolean v3, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 543
    iput-boolean v3, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 544
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 545
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 547
    iput-object v2, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 548
    iput-object v2, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 549
    iput-object v2, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 550
    iput-object v2, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 551
    const-string v0, "\"\""

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 552
    return-void

    .line 555
    :cond_0
    iput-boolean v3, p0, Ljxl/biff/DVParser;->copied:Z

    .line 556
    sget-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 557
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 558
    sget-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 559
    iput-boolean v3, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 562
    iput-boolean v3, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 563
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 564
    iput-boolean v3, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 565
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 566
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 568
    iput-object v2, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 569
    iput-object v2, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 570
    iput-object v2, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 571
    iput-object v2, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 572
    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .param p1, "strings"    # Ljava/util/Collection;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 479
    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v1, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 480
    sget-object v1, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v1, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 481
    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v1, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 482
    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 486
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 487
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 488
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 489
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    .line 491
    const-string v1, "\u0000"

    iput-object v1, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 492
    iput-object v1, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 495
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 497
    sget-object v1, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    const-string v2, "no validation strings - ignoring"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 500
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 501
    .local v1, "i":Ljava/util/Iterator;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 503
    .local v2, "formulaString":Ljava/lang/StringBuffer;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 507
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v4, 0xfe

    if-le v3, v4, :cond_2

    .line 515
    sget-object v3, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    const-string v5, "Validation list exceeds maximum number of characters - truncating"

    invoke-virtual {v3, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 522
    :cond_2
    const/16 v3, 0x22

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public constructor <init>(Ljxl/biff/DVParser;)V
    .locals 4
    .param p1, "copy"    # Ljxl/biff/DVParser;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    .line 640
    iget-object v0, p1, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 641
    iget-object v0, p1, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 642
    iget-object v0, p1, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 643
    iget-boolean v0, p1, Ljxl/biff/DVParser;->stringListGiven:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 644
    iget-boolean v0, p1, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 645
    iget-boolean v0, p1, Ljxl/biff/DVParser;->suppressArrow:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 646
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showPrompt:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 647
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showError:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showError:Z

    .line 648
    iget-object v0, p1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 649
    iget-object v0, p1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 650
    iget-object v0, p1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 651
    iget-object v0, p1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 652
    iget-boolean v0, p1, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 654
    iget v0, p1, Ljxl/biff/DVParser;->row1:I

    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 655
    iget v0, p1, Ljxl/biff/DVParser;->row2:I

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 656
    iget v0, p1, Ljxl/biff/DVParser;->column1:I

    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 657
    iget v0, p1, Ljxl/biff/DVParser;->column2:I

    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    .line 660
    iget-object v0, p1, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 662
    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 663
    iget-object v0, p1, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    goto :goto_1

    .line 669
    :cond_0
    :try_start_0
    iget-object v0, p1, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 670
    iget-object v0, p1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_1

    .line 673
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v1, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse validation formula:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 679
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_1
    return-void
.end method

.method public constructor <init>([BLjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 23
    .param p1, "data"    # [B
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p3, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p4, "ws"    # Ljxl/WorkbookSettings;

    .line 327
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 330
    iput-boolean v0, v1, Ljxl/biff/DVParser;->copied:Z

    .line 331
    aget-byte v4, v2, v0

    aget-byte v5, v2, v3

    const/4 v6, 0x2

    aget-byte v7, v2, v6

    const/4 v8, 0x3

    aget-byte v9, v2, v8

    invoke-static {v4, v5, v7, v9}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v14

    .line 333
    .local v14, "options":I
    and-int/lit8 v15, v14, 0xf

    .line 334
    .local v15, "typeVal":I
    invoke-static {v15}, Ljxl/biff/DVParser$DVType;->getType(I)Ljxl/biff/DVParser$DVType;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 336
    and-int/lit8 v4, v14, 0x70

    shr-int/lit8 v16, v4, 0x4

    .line 337
    .local v16, "errorStyleVal":I
    invoke-static/range {v16 .. v16}, Ljxl/biff/DVParser$ErrorStyle;->getErrorStyle(I)Ljxl/biff/DVParser$ErrorStyle;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 339
    const/high16 v4, 0xf00000

    and-int/2addr v4, v14

    shr-int/lit8 v17, v4, 0x14

    .line 340
    .local v17, "conditionVal":I
    invoke-static/range {v17 .. v17}, Ljxl/biff/DVParser$Condition;->getCondition(I)Ljxl/biff/DVParser$Condition;

    move-result-object v4

    iput-object v4, v1, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 342
    and-int/lit16 v4, v14, 0x80

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iput-boolean v4, v1, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 343
    and-int/lit16 v4, v14, 0x100

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    iput-boolean v4, v1, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 344
    and-int/lit16 v4, v14, 0x200

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    iput-boolean v4, v1, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 345
    const/high16 v4, 0x40000

    and-int/2addr v4, v14

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    iput-boolean v4, v1, Ljxl/biff/DVParser;->showPrompt:Z

    .line 346
    const/high16 v4, 0x80000

    and-int/2addr v4, v14

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v0

    :goto_5
    iput-boolean v4, v1, Ljxl/biff/DVParser;->showError:Z

    .line 348
    const/4 v4, 0x4

    .line 349
    .local v4, "pos":I
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 350
    .local v5, "length":I
    if-lez v5, :cond_6

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v2, v7

    if-nez v7, :cond_6

    .line 352
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7, v13}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 353
    add-int/lit8 v7, v5, 0x3

    add-int/2addr v4, v7

    goto :goto_6

    .line 355
    :cond_6
    if-lez v5, :cond_7

    .line 357
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 358
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    goto :goto_6

    .line 362
    :cond_7
    add-int/2addr v4, v8

    .line 365
    :goto_6
    aget-byte v7, v2, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v2, v9

    invoke-static {v7, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 366
    if-lez v5, :cond_8

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v2, v7

    if-nez v7, :cond_8

    .line 368
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7, v13}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 369
    add-int/lit8 v7, v5, 0x3

    add-int/2addr v4, v7

    goto :goto_7

    .line 371
    :cond_8
    if-lez v5, :cond_9

    .line 373
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 374
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    goto :goto_7

    .line 378
    :cond_9
    add-int/2addr v4, v8

    .line 381
    :goto_7
    aget-byte v7, v2, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v2, v9

    invoke-static {v7, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 382
    if-lez v5, :cond_a

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v2, v7

    if-nez v7, :cond_a

    .line 384
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7, v13}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 385
    add-int/lit8 v7, v5, 0x3

    add-int/2addr v4, v7

    goto :goto_8

    .line 387
    :cond_a
    if-lez v5, :cond_b

    .line 389
    add-int/lit8 v7, v4, 0x3

    invoke-static {v2, v5, v7}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 390
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    goto :goto_8

    .line 394
    :cond_b
    add-int/2addr v4, v8

    .line 397
    :goto_8
    aget-byte v7, v2, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v2, v9

    invoke-static {v7, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v12

    .line 398
    .end local v5    # "length":I
    .local v12, "length":I
    if-lez v12, :cond_c

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    if-nez v5, :cond_c

    .line 400
    add-int/lit8 v5, v4, 0x3

    invoke-static {v2, v12, v5, v13}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 401
    add-int/lit8 v5, v12, 0x3

    add-int/2addr v4, v5

    goto :goto_9

    .line 403
    :cond_c
    if-lez v12, :cond_d

    .line 405
    add-int/lit8 v5, v4, 0x3

    invoke-static {v2, v12, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 406
    mul-int/lit8 v5, v12, 0x2

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    goto :goto_9

    .line 410
    :cond_d
    add-int/2addr v4, v8

    .line 413
    :goto_9
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v11

    .line 414
    .local v11, "formula1Length":I
    add-int/lit8 v4, v4, 0x4

    .line 415
    move v10, v4

    .line 416
    .local v10, "formula1Pos":I
    add-int/2addr v4, v11

    .line 418
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v9

    .line 419
    .local v9, "formula2Length":I
    add-int/lit8 v4, v4, 0x4

    .line 420
    move v8, v4

    .line 421
    .local v8, "formula2Pos":I
    add-int/2addr v4, v9

    .line 423
    add-int/2addr v4, v6

    .line 425
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    iput v5, v1, Ljxl/biff/DVParser;->row1:I

    .line 426
    add-int/2addr v4, v6

    .line 428
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    iput v5, v1, Ljxl/biff/DVParser;->row2:I

    .line 429
    add-int/2addr v4, v6

    .line 431
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    iput v5, v1, Ljxl/biff/DVParser;->column1:I

    .line 432
    add-int/2addr v4, v6

    .line 434
    aget-byte v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    invoke-static {v5, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    iput v5, v1, Ljxl/biff/DVParser;->column2:I

    .line 435
    add-int/lit8 v18, v4, 0x2

    .line 437
    .end local v4    # "pos":I
    .local v18, "pos":I
    iget v4, v1, Ljxl/biff/DVParser;->row1:I

    iget v6, v1, Ljxl/biff/DVParser;->row2:I

    if-ne v4, v6, :cond_e

    iget v4, v1, Ljxl/biff/DVParser;->column1:I

    if-ne v4, v5, :cond_e

    move v3, v0

    :cond_e
    iput-boolean v3, v1, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 445
    :try_start_0
    new-instance v5, Ljxl/biff/EmptyCell;

    iget v3, v1, Ljxl/biff/DVParser;->column1:I

    iget v4, v1, Ljxl/biff/DVParser;->row1:I

    invoke-direct {v5, v3, v4}, Ljxl/biff/EmptyCell;-><init>(II)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_4

    .line 447
    .local v5, "tmprt":Ljxl/biff/EmptyCell;
    if-eqz v11, :cond_f

    .line 449
    :try_start_1
    new-array v3, v11, [B

    move-object v7, v3

    .line 450
    .local v7, "tokens":[B
    invoke-static {v2, v10, v7, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    new-instance v6, Ljxl/biff/formula/FormulaParser;

    sget-object v19, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    move-object v4, v7

    move-object v0, v6

    move-object/from16 v6, p2

    move-object/from16 v21, v7

    .end local v7    # "tokens":[B
    .local v21, "tokens":[B
    move-object/from16 v7, p3

    move v13, v8

    .end local v8    # "formula2Pos":I
    .local v13, "formula2Pos":I
    move-object/from16 v8, p4

    move/from16 v22, v14

    move v14, v9

    .end local v9    # "formula2Length":I
    .local v14, "formula2Length":I
    .local v22, "options":I
    move-object/from16 v9, v19

    :try_start_2
    invoke-direct/range {v3 .. v9}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v0, v1, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 453
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_2
    .catch Ljxl/biff/formula/FormulaException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    .line 465
    .end local v5    # "tmprt":Ljxl/biff/EmptyCell;
    .end local v21    # "tokens":[B
    :catch_0
    move-exception v0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    goto/16 :goto_c

    .end local v13    # "formula2Pos":I
    .end local v22    # "options":I
    .restart local v8    # "formula2Pos":I
    .restart local v9    # "formula2Length":I
    .local v14, "options":I
    :catch_1
    move-exception v0

    move v13, v8

    move/from16 v22, v14

    move v14, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    .end local v8    # "formula2Pos":I
    .end local v9    # "formula2Length":I
    .restart local v13    # "formula2Pos":I
    .local v14, "formula2Length":I
    .restart local v22    # "options":I
    goto :goto_c

    .line 447
    .end local v13    # "formula2Pos":I
    .end local v22    # "options":I
    .restart local v5    # "tmprt":Ljxl/biff/EmptyCell;
    .restart local v8    # "formula2Pos":I
    .restart local v9    # "formula2Length":I
    .local v14, "options":I
    :cond_f
    move v13, v8

    move/from16 v22, v14

    move v14, v9

    .line 456
    .end local v8    # "formula2Pos":I
    .end local v9    # "formula2Length":I
    .restart local v13    # "formula2Pos":I
    .local v14, "formula2Length":I
    .restart local v22    # "options":I
    :goto_a
    if-eqz v14, :cond_10

    .line 458
    :try_start_3
    new-array v0, v14, [B

    .line 459
    .local v0, "tokens":[B
    const/4 v3, 0x0

    invoke-static {v2, v13, v0, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    new-instance v3, Ljxl/biff/formula/FormulaParser;

    sget-object v4, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;
    :try_end_3
    .catch Ljxl/biff/formula/FormulaException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v3

    move-object v7, v0

    move-object v8, v5

    move-object/from16 v9, p2

    move/from16 v19, v10

    .end local v10    # "formula1Pos":I
    .local v19, "formula1Pos":I
    move-object/from16 v10, p3

    move/from16 v20, v11

    .end local v11    # "formula1Length":I
    .local v20, "formula1Length":I
    move-object/from16 v11, p4

    move/from16 v21, v12

    .end local v12    # "length":I
    .local v21, "length":I
    move-object v12, v4

    :try_start_4
    invoke-direct/range {v6 .. v12}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v3, v1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 462
    invoke-virtual {v3}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_4
    .catch Ljxl/biff/formula/FormulaException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .line 465
    .end local v0    # "tokens":[B
    .end local v5    # "tmprt":Ljxl/biff/EmptyCell;
    :catch_2
    move-exception v0

    goto :goto_c

    .end local v19    # "formula1Pos":I
    .end local v20    # "formula1Length":I
    .end local v21    # "length":I
    .restart local v10    # "formula1Pos":I
    .restart local v11    # "formula1Length":I
    .restart local v12    # "length":I
    :catch_3
    move-exception v0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    .end local v10    # "formula1Pos":I
    .end local v11    # "formula1Length":I
    .end local v12    # "length":I
    .restart local v19    # "formula1Pos":I
    .restart local v20    # "formula1Length":I
    .restart local v21    # "length":I
    goto :goto_c

    .line 456
    .end local v19    # "formula1Pos":I
    .end local v20    # "formula1Length":I
    .end local v21    # "length":I
    .restart local v5    # "tmprt":Ljxl/biff/EmptyCell;
    .restart local v10    # "formula1Pos":I
    .restart local v11    # "formula1Length":I
    .restart local v12    # "length":I
    :cond_10
    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    .line 470
    .end local v5    # "tmprt":Ljxl/biff/EmptyCell;
    .end local v10    # "formula1Pos":I
    .end local v11    # "formula1Length":I
    .end local v12    # "length":I
    .restart local v19    # "formula1Pos":I
    .restart local v20    # "formula1Length":I
    .restart local v21    # "length":I
    :goto_b
    goto :goto_d

    .line 465
    .end local v13    # "formula2Pos":I
    .end local v19    # "formula1Pos":I
    .end local v20    # "formula1Length":I
    .end local v21    # "length":I
    .end local v22    # "options":I
    .restart local v8    # "formula2Pos":I
    .restart local v9    # "formula2Length":I
    .restart local v10    # "formula1Pos":I
    .restart local v11    # "formula1Length":I
    .restart local v12    # "length":I
    .local v14, "options":I
    :catch_4
    move-exception v0

    move v13, v8

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    move v14, v9

    .line 467
    .end local v8    # "formula2Pos":I
    .end local v9    # "formula2Length":I
    .end local v10    # "formula1Pos":I
    .end local v11    # "formula1Length":I
    .end local v12    # "length":I
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    .restart local v13    # "formula2Pos":I
    .local v14, "formula2Length":I
    .restart local v19    # "formula1Pos":I
    .restart local v20    # "formula1Length":I
    .restart local v21    # "length":I
    .restart local v22    # "options":I
    :goto_c
    sget-object v3, Ljxl/biff/DVParser;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for cells "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Ljxl/biff/DVParser;->column1:I

    iget v6, v1, Ljxl/biff/DVParser;->row1:I

    invoke-static {v5, v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Ljxl/biff/DVParser;->column2:I

    iget v6, v1, Ljxl/biff/DVParser;->row2:I

    invoke-static {v5, v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 471
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_d
    return-void
.end method


# virtual methods
.method public copied()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Ljxl/biff/DVParser;->copied:Z

    return v0
.end method

.method public extendCellValidation(II)V
    .locals 1
    .param p1, "cols"    # I
    .param p2, "rows"    # I

    .line 1024
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 1025
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    .line 1027
    return-void
.end method

.method public extendedCellsValidation()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    return v0
.end method

.method public getData()[B
    .locals 9

    .line 687
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [B

    .line 688
    .local v0, "f1Bytes":[B
    :goto_0
    iget-object v2, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-array v2, v1, [B

    .line 689
    .local v2, "f2Bytes":[B
    :goto_1
    iget-object v3, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    .line 700
    .local v3, "dataLength":I
    new-array v4, v3, [B

    .line 703
    .local v4, "data":[B
    const/4 v5, 0x0

    .line 706
    .local v5, "pos":I
    const/4 v6, 0x0

    .line 707
    .local v6, "options":I
    iget-object v7, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v7}, Ljxl/biff/DVParser$DVType;->getValue()I

    move-result v7

    or-int/2addr v6, v7

    .line 708
    iget-object v7, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    invoke-virtual {v7}, Ljxl/biff/DVParser$ErrorStyle;->getValue()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    .line 709
    iget-object v7, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v7}, Ljxl/biff/DVParser$Condition;->getValue()I

    move-result v7

    shl-int/lit8 v7, v7, 0x14

    or-int/2addr v6, v7

    .line 711
    iget-boolean v7, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    if-eqz v7, :cond_2

    .line 713
    or-int/lit16 v6, v6, 0x80

    .line 716
    :cond_2
    iget-boolean v7, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    if-eqz v7, :cond_3

    .line 718
    or-int/lit16 v6, v6, 0x100

    .line 721
    :cond_3
    iget-boolean v7, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    if-eqz v7, :cond_4

    .line 723
    or-int/lit16 v6, v6, 0x200

    .line 726
    :cond_4
    iget-boolean v7, p0, Ljxl/biff/DVParser;->showPrompt:Z

    if-eqz v7, :cond_5

    .line 728
    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    .line 731
    :cond_5
    iget-boolean v7, p0, Ljxl/biff/DVParser;->showError:Z

    if-eqz v7, :cond_6

    .line 733
    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    .line 737
    :cond_6
    invoke-static {v6, v4, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 738
    add-int/lit8 v5, v5, 0x4

    .line 740
    iget-object v7, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 741
    add-int/lit8 v5, v5, 0x2

    .line 743
    const/4 v7, 0x1

    aput-byte v7, v4, v5

    .line 744
    add-int/2addr v5, v7

    .line 746
    iget-object v8, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-static {v8, v4, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 747
    iget-object v8, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 749
    iget-object v8, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 750
    add-int/lit8 v5, v5, 0x2

    .line 752
    aput-byte v7, v4, v5

    .line 753
    add-int/2addr v5, v7

    .line 755
    iget-object v8, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-static {v8, v4, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 756
    iget-object v8, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 758
    iget-object v8, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 759
    add-int/lit8 v5, v5, 0x2

    .line 761
    aput-byte v7, v4, v5

    .line 762
    add-int/2addr v5, v7

    .line 764
    iget-object v8, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-static {v8, v4, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 765
    iget-object v8, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 767
    iget-object v8, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 768
    add-int/lit8 v5, v5, 0x2

    .line 770
    aput-byte v7, v4, v5

    .line 771
    add-int/2addr v5, v7

    .line 773
    iget-object v8, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-static {v8, v4, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 774
    iget-object v8, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 777
    array-length v8, v0

    invoke-static {v8, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 778
    add-int/lit8 v5, v5, 0x4

    .line 780
    array-length v8, v0

    invoke-static {v0, v1, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    array-length v8, v0

    add-int/2addr v5, v8

    .line 784
    array-length v8, v2

    invoke-static {v8, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 785
    add-int/lit8 v5, v5, 0x4

    .line 787
    array-length v8, v2

    invoke-static {v2, v1, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    array-length v1, v2

    add-int/2addr v5, v1

    .line 791
    invoke-static {v7, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 792
    add-int/lit8 v5, v5, 0x2

    .line 794
    iget v1, p0, Ljxl/biff/DVParser;->row1:I

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 795
    add-int/lit8 v5, v5, 0x2

    .line 797
    iget v1, p0, Ljxl/biff/DVParser;->row2:I

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 798
    add-int/lit8 v5, v5, 0x2

    .line 800
    iget v1, p0, Ljxl/biff/DVParser;->column1:I

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 801
    add-int/lit8 v5, v5, 0x2

    .line 803
    iget v1, p0, Ljxl/biff/DVParser;->column2:I

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 804
    add-int/lit8 v5, v5, 0x2

    .line 806
    return-object v4
.end method

.method public getFirstColumn()I
    .locals 1

    .line 928
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 948
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 938
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 958
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    return v0
.end method

.method getValidationFormula()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    if-ne v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 974
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "s1":Ljava/lang/String;
    iget-object v1, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 976
    .local v1, "s2":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v3, v0, v1}, Ljxl/biff/DVParser$Condition;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v3}, Ljxl/biff/DVParser$DVType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public insertColumn(I)V
    .locals 3
    .param p1, "col"    # I

    .line 844
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 849
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 854
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-lt v0, p1, :cond_2

    .line 856
    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 859
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    .line 861
    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    .line 863
    :cond_3
    return-void
.end method

.method public insertRow(I)V
    .locals 3
    .param p1, "row"    # I

    .line 816
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 821
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 826
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-lt v0, p1, :cond_2

    .line 828
    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 831
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    const v1, 0xffff

    if-eq v0, v1, :cond_3

    .line 833
    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 835
    :cond_3
    return-void
.end method

.method public removeColumn(I)V
    .locals 3
    .param p1, "col"    # I

    .line 900
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 905
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 910
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-le v0, p1, :cond_2

    .line 912
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 915
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    .line 917
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    .line 919
    :cond_3
    return-void
.end method

.method public removeRow(I)V
    .locals 3
    .param p1, "row"    # I

    .line 872
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 877
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 882
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-le v0, p1, :cond_2

    .line 884
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 887
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    .line 889
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    .line 891
    :cond_3
    return-void
.end method

.method public setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 992
    iget-boolean v0, p0, Ljxl/biff/DVParser;->extendedCellsValidation:Z

    if-eqz v0, :cond_0

    .line 994
    return-void

    .line 997
    :cond_0
    iput p2, p0, Ljxl/biff/DVParser;->row1:I

    .line 998
    iput p2, p0, Ljxl/biff/DVParser;->row2:I

    .line 999
    iput p1, p0, Ljxl/biff/DVParser;->column1:I

    .line 1000
    iput p1, p0, Ljxl/biff/DVParser;->column2:I

    .line 1002
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    sget-object v6, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 1005
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 1007
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1009
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    sget-object v6, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V

    iput-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 1012
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 1014
    :cond_1
    return-void
.end method
