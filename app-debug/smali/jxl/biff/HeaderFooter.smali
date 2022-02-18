.class public abstract Ljxl/biff/HeaderFooter;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/HeaderFooter$Contents;
    }
.end annotation


# static fields
.field private static final BOLD_TOGGLE:Ljava/lang/String; = "&B"

.field private static final CENTRE:Ljava/lang/String; = "&C"

.field private static final DATE:Ljava/lang/String; = "&D"

.field private static final DOUBLE_UNDERLINE_TOGGLE:Ljava/lang/String; = "&E"

.field private static final ITALICS_TOGGLE:Ljava/lang/String; = "&I"

.field private static final LEFT_ALIGN:Ljava/lang/String; = "&L"

.field private static final OUTLINE_TOGGLE:Ljava/lang/String; = "&O"

.field private static final PAGENUM:Ljava/lang/String; = "&P"

.field private static final RIGHT_ALIGN:Ljava/lang/String; = "&R"

.field private static final SHADOW_TOGGLE:Ljava/lang/String; = "&H"

.field private static final STRIKETHROUGH_TOGGLE:Ljava/lang/String; = "&S"

.field private static final SUBSCRIPT_TOGGLE:Ljava/lang/String; = "&Y"

.field private static final SUPERSCRIPT_TOGGLE:Ljava/lang/String; = "&X"

.field private static final TIME:Ljava/lang/String; = "&T"

.field private static final TOTAL_PAGENUM:Ljava/lang/String; = "&N"

.field private static final UNDERLINE_TOGGLE:Ljava/lang/String; = "&U"

.field private static final WORKBOOK_NAME:Ljava/lang/String; = "&F"

.field private static final WORKSHEET_NAME:Ljava/lang/String; = "&A"

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private centre:Ljxl/biff/HeaderFooter$Contents;

.field private left:Ljxl/biff/HeaderFooter$Contents;

.field private right:Ljxl/biff/HeaderFooter$Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/HeaderFooter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/HeaderFooter;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 474
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 475
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 476
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 504
    :cond_0
    const-string v0, "&L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 505
    .local v0, "leftPos":I
    const-string v1, "&R"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 506
    .local v1, "rightPos":I
    const-string v2, "&C"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 508
    .local v2, "centrePos":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 511
    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    goto/16 :goto_3

    .line 516
    :cond_1
    if-eq v0, v3, :cond_4

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 520
    .local v4, "endLeftPos":I
    if-le v2, v0, :cond_2

    .line 523
    move v4, v2

    .line 524
    if-le v1, v0, :cond_3

    if-le v4, v1, :cond_3

    .line 527
    move v4, v1

    goto :goto_0

    .line 537
    :cond_2
    if-le v1, v0, :cond_3

    .line 540
    move v4, v1

    .line 550
    :cond_3
    :goto_0
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 554
    .end local v4    # "endLeftPos":I
    :cond_4
    if-eq v1, v3, :cond_7

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 558
    .local v4, "endRightPos":I
    if-le v2, v1, :cond_5

    .line 561
    move v4, v2

    .line 562
    if-le v0, v1, :cond_6

    if-le v4, v0, :cond_6

    .line 565
    move v4, v0

    goto :goto_1

    .line 574
    :cond_5
    if-le v0, v1, :cond_6

    .line 577
    move v4, v0

    .line 585
    :cond_6
    :goto_1
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 589
    .end local v4    # "endRightPos":I
    :cond_7
    if-eq v2, v3, :cond_a

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 593
    .local v3, "endCentrePos":I
    if-le v1, v2, :cond_8

    .line 596
    move v3, v1

    .line 597
    if-le v0, v2, :cond_9

    if-le v3, v0, :cond_9

    .line 600
    move v3, v0

    goto :goto_2

    .line 609
    :cond_8
    if-le v0, v2, :cond_9

    .line 612
    move v3, v0

    .line 620
    :cond_9
    :goto_2
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 625
    .end local v3    # "endCentrePos":I
    :cond_a
    :goto_3
    iget-object v3, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    if-nez v3, :cond_b

    .line 627
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 630
    :cond_b
    iget-object v3, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    if-nez v3, :cond_c

    .line 632
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 635
    :cond_c
    iget-object v3, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    if-nez v3, :cond_d

    .line 637
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 639
    :cond_d
    return-void

    .line 498
    .end local v0    # "leftPos":I
    .end local v1    # "rightPos":I
    .end local v2    # "centrePos":I
    :cond_e
    :goto_4
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 499
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 500
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 501
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter;)V
    .locals 1
    .param p1, "hf"    # Ljxl/biff/HeaderFooter;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 486
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 487
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 488
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 706
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 707
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 708
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 709
    return-void
.end method

.method protected abstract createContents()Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected getCentreText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 688
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getLeftText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 698
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method protected getRightText()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 678
    iget-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 650
    .local v0, "hf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const-string v1, "&L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_0
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    const-string v1, "&C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    :cond_1
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    const-string v1, "&R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
