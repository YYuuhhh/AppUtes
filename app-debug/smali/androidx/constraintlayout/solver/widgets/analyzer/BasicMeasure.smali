.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 72
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 8
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "measureStrategy"    # I

    .line 457
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 458
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 460
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 462
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 464
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 465
    .local v0, "horizontalMatchConstraints":Z
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 466
    .local v2, "verticalMatchConstraints":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    .line 467
    .local v5, "horizontalUseRatio":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    .line 469
    .local v4, "verticalUseRatio":Z
    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 470
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v7, v1

    if-ne v1, v6, :cond_4

    .line 471
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v7, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 474
    :cond_4
    if-eqz v4, :cond_5

    .line 475
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v1, v3

    if-ne v1, v6, :cond_5

    .line 476
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 480
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 481
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 482
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 483
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 484
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 485
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 486
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 13
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 75
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "childCount":I
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    .line 77
    .local v1, "optimize":Z
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    .line 78
    .local v2, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_b

    .line 79
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 80
    .local v4, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_0

    .line 81
    goto/16 :goto_1

    .line 83
    :cond_0
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v5, :cond_1

    .line 84
    goto/16 :goto_1

    .line 86
    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    goto/16 :goto_1

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    .line 93
    goto/16 :goto_1

    .line 96
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 97
    .local v6, "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    .line 99
    .local v8, "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_4

    iget v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v7, :cond_4

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_4

    iget v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v9, v7, :cond_4

    move v5, v7

    .line 104
    .local v5, "skip":Z
    :cond_4
    if-nez v5, :cond_8

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v7, v4, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v7, :cond_8

    .line 106
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_5

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v7, :cond_5

    .line 109
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_5

    .line 110
    const/4 v5, 0x1

    .line 113
    :cond_5
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_6

    iget v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_6

    .line 116
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    const/4 v5, 0x1

    .line 121
    :cond_6
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_8

    :cond_7
    iget v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_8

    .line 124
    const/4 v5, 0x1

    .line 128
    :cond_8
    if-eqz v5, :cond_9

    .line 131
    goto :goto_1

    .line 134
    :cond_9
    sget v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-direct {p0, v2, v4, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    .line 135
    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_a

    .line 136
    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v9, v7, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v7, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    .line 78
    .end local v4    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "skip":Z
    .end local v6    # "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v8    # "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3    # "i":I
    :cond_b
    invoke-interface {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 140
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 149
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 150
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 151
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 153
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 164
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 35
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 186
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 188
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 189
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    .line 190
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    .line 192
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 193
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_1

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    .line 195
    .local v14, "optimize":Z
    :goto_1
    if-eqz v14, :cond_b

    .line 196
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v8, :cond_a

    .line 197
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 198
    .local v13, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 199
    .local v2, "matchWidth":Z
    :goto_3
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    .line 200
    .local v12, "matchHeight":Z
    :goto_4
    if-eqz v2, :cond_4

    if-eqz v12, :cond_4

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    .line 201
    .local v14, "ratio":Z
    :goto_5
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v14, :cond_5

    .line 202
    const/16 v18, 0x0

    .line 203
    move/from16 v14, v18

    goto :goto_8

    .line 205
    :cond_5
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v14, :cond_6

    .line 206
    const/16 v18, 0x0

    .line 207
    move/from16 v14, v18

    goto :goto_8

    .line 209
    :cond_6
    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    instance-of v2, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_7

    .line 210
    const/4 v2, 0x0

    .line 211
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    move v14, v2

    goto :goto_8

    .line 213
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_7
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9

    .line 214
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 196
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "ratio":Z
    .end local v19    # "matchWidth":Z
    :cond_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_2

    .line 215
    .restart local v12    # "matchHeight":Z
    .restart local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v14    # "ratio":Z
    .restart local v19    # "matchWidth":Z
    :cond_9
    :goto_6
    const/4 v2, 0x0

    .line 216
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    move v14, v2

    goto :goto_8

    .line 196
    .end local v2    # "optimize":Z
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .local v14, "optimize":Z
    :cond_a
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_7

    .line 195
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_b
    move/from16 v18, v14

    .line 221
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_8
    const-wide/16 v12, 0x1

    if-eqz v14, :cond_c

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_c

    .line 222
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-wide/from16 v18, v6

    .end local v6    # "layoutTime":J
    .local v18, "layoutTime":J
    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    goto :goto_9

    .line 221
    .end local v18    # "layoutTime":J
    .restart local v6    # "layoutTime":J
    :cond_c
    move-wide/from16 v18, v6

    .line 225
    .end local v6    # "layoutTime":J
    .restart local v18    # "layoutTime":J
    :goto_9
    const/4 v2, 0x0

    .line 227
    .local v2, "allSolved":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_d

    if-eq v4, v6, :cond_e

    :cond_d
    if-eqz v11, :cond_f

    :cond_e
    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    and-int/2addr v7, v14

    .line 229
    .end local v14    # "optimize":Z
    .local v7, "optimize":Z
    const/4 v14, 0x0

    .line 231
    .local v14, "computations":I
    if-eqz v7, :cond_18

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 236
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 238
    .end local p8    # "heightSize":I
    .local v13, "heightSize":I
    if-ne v3, v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_10

    .line 239
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 242
    :cond_10
    if-ne v4, v6, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v13, :cond_11

    .line 243
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 246
    :cond_11
    if-ne v3, v6, :cond_12

    if-ne v4, v6, :cond_12

    .line 247
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 248
    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_c

    .line 250
    :cond_12
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 251
    if-ne v3, v6, :cond_13

    .line 252
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 253
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 251
    :cond_13
    const/4 v15, 0x0

    .line 255
    :goto_b
    if-ne v4, v6, :cond_14

    .line 256
    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v16

    and-int v2, v2, v16

    .line 257
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 255
    :cond_14
    const/4 v15, 0x1

    .line 260
    :goto_c
    if-eqz v2, :cond_17

    .line 261
    if-ne v3, v6, :cond_15

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    if-ne v4, v6, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v1, v15, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 274
    :cond_17
    const/4 v15, 0x0

    goto :goto_f

    .line 231
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_18
    move/from16 v12, p6

    const/4 v15, 0x0

    move/from16 v13, p8

    .line 274
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightSize":I
    :goto_f
    if-eqz v2, :cond_1a

    const/4 v6, 0x2

    if-eq v14, v6, :cond_19

    goto :goto_10

    :cond_19
    move/from16 p6, v2

    move-object/from16 v32, v5

    move/from16 v27, v7

    move/from16 v16, v8

    move v5, v9

    move/from16 v17, v11

    move/from16 p8, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_25

    .line 275
    :cond_1a
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v6

    .line 276
    .local v6, "optimizations":I
    if-lez v8, :cond_1b

    .line 277
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 283
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 286
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 289
    .local v15, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_1c

    .line 290
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_11

    .line 289
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_1c
    move/from16 p6, v2

    .line 297
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_11
    if-lez v15, :cond_38

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    .line 301
    .local v2, "containerWrapWidth":Z
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    const/16 v16, 0x1

    goto :goto_13

    :cond_1e
    const/16 v16, 0x0

    :goto_13
    move/from16 v3, v16

    .line 303
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v16, v8

    .end local v8    # "childCount":I
    .local v16, "childCount":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 304
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    move/from16 v17, v4

    .end local v4    # "minWidth":I
    .local v17, "minWidth":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 309
    .local v4, "minHeight":I
    const/4 v8, 0x0

    move/from16 v34, v4

    move/from16 v4, p8

    move/from16 p8, v12

    move v12, v8

    move/from16 v8, v17

    move/from16 v17, v11

    move/from16 v11, v34

    .local v4, "needSolverPass":Z
    .local v8, "minWidth":I
    .local v11, "minHeight":I
    .local v12, "i":I
    .local v17, "optimizeWrap":Z
    .local p8, "widthSize":I
    :goto_14
    if-ge v12, v15, :cond_25

    .line 310
    move/from16 v22, v13

    .end local v13    # "heightSize":I
    .local v22, "heightSize":I
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 311
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v23, v14

    .end local v14    # "computations":I
    .local v23, "computations":I
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v14, :cond_1f

    .line 312
    move-object/from16 v26, v5

    move/from16 v24, v6

    move/from16 v25, v9

    goto/16 :goto_1a

    .line 314
    :cond_1f
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 315
    .local v14, "preWidth":I
    move/from16 v24, v6

    .end local v6    # "optimizations":I
    .local v24, "optimizations":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    .line 316
    .local v6, "preHeight":I
    move/from16 v25, v9

    .end local v9    # "startingWidth":I
    .local v25, "startingWidth":I
    sget v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    invoke-direct {v0, v5, v13, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 317
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v9, :cond_20

    .line 318
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v27, v4

    move-object/from16 v26, v5

    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v26, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v27, "needSolverPass":Z
    iget-wide v4, v9, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v9, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_15

    .line 317
    .end local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v27    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_20
    move/from16 v27, v4

    move-object/from16 v26, v5

    .line 320
    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "needSolverPass":Z
    :goto_15
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 321
    .local v4, "measuredWidth":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 322
    .local v5, "measuredHeight":I
    if-eq v4, v14, :cond_22

    .line 323
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 324
    if-eqz v2, :cond_21

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    if-le v9, v8, :cond_21

    .line 325
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move/from16 v28, v4

    .end local v4    # "measuredWidth":I
    .local v28, "measuredWidth":I
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 326
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 327
    .local v9, "w":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v4

    .end local v8    # "minWidth":I
    .local v4, "minWidth":I
    goto :goto_16

    .line 324
    .end local v9    # "w":I
    .end local v28    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v8    # "minWidth":I
    :cond_21
    move/from16 v28, v4

    .line 329
    .end local v4    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    :goto_16
    const/4 v4, 0x1

    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    goto :goto_17

    .line 322
    .end local v28    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v27    # "needSolverPass":Z
    :cond_22
    move/from16 v28, v4

    .end local v4    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    move/from16 v4, v27

    .line 331
    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_17
    if-eq v5, v6, :cond_24

    .line 332
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 333
    if-eqz v3, :cond_23

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    if-le v9, v11, :cond_23

    .line 334
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move/from16 v27, v4

    .end local v4    # "needSolverPass":Z
    .restart local v27    # "needSolverPass":Z
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 335
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 336
    .local v9, "h":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v11, v4

    .end local v11    # "minHeight":I
    .local v4, "minHeight":I
    goto :goto_18

    .line 333
    .end local v9    # "h":I
    .end local v27    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v11    # "minHeight":I
    :cond_23
    move/from16 v27, v4

    .line 338
    .end local v4    # "needSolverPass":Z
    .restart local v27    # "needSolverPass":Z
    :goto_18
    const/4 v4, 0x1

    .end local v27    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_19

    .line 331
    :cond_24
    move/from16 v27, v4

    .line 340
    :goto_19
    move-object v9, v13

    check-cast v9, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 341
    .local v9, "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v27

    or-int v4, v4, v27

    .line 309
    .end local v5    # "measuredHeight":I
    .end local v6    # "preHeight":I
    .end local v9    # "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v28    # "measuredWidth":I
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v6, v24

    move/from16 v9, v25

    move-object/from16 v5, v26

    goto/16 :goto_14

    .end local v22    # "heightSize":I
    .end local v23    # "computations":I
    .end local v24    # "optimizations":I
    .end local v25    # "startingWidth":I
    .end local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "optimizations":I
    .local v9, "startingWidth":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    :cond_25
    move-object/from16 v26, v5

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v22, v13

    move/from16 v23, v14

    .line 345
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "optimizations":I
    .end local v9    # "startingWidth":I
    .end local v12    # "i":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .restart local v22    # "heightSize":I
    .restart local v23    # "computations":I
    .restart local v24    # "optimizations":I
    .restart local v25    # "startingWidth":I
    .restart local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v5, 0x2

    .line 346
    .local v5, "maxIterations":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_35

    .line 347
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1c
    if-ge v9, v15, :cond_33

    .line 348
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 349
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v13, :cond_26

    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2a

    :cond_26
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v13, :cond_27

    .line 350
    goto :goto_1d

    .line 352
    :cond_27
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_28

    .line 353
    goto :goto_1d

    .line 355
    :cond_28
    if-eqz v7, :cond_29

    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_29

    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_29

    .line 357
    goto :goto_1d

    .line 359
    :cond_29
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2b

    .line 360
    nop

    .line 347
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2a
    :goto_1d
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move-object/from16 v32, v26

    const-wide/16 v20, 0x1

    goto/16 :goto_22

    .line 363
    .restart local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2b
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    .line 364
    .local v13, "preWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 365
    .local v14, "preHeight":I
    move/from16 v27, v7

    .end local v7    # "optimize":Z
    .local v27, "optimize":Z
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    .line 367
    .local v7, "preBaselineDistance":I
    sget v28, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 368
    .local v28, "measureStrategy":I
    move/from16 v29, v15

    .end local v15    # "sizeDependentWidgetsCount":I
    .local v29, "sizeDependentWidgetsCount":I
    add-int/lit8 v15, v5, -0x1

    if-ne v6, v15, :cond_2c

    .line 369
    sget v28, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    move/from16 v15, v28

    goto :goto_1e

    .line 368
    :cond_2c
    move/from16 v15, v28

    .line 371
    .end local v28    # "measureStrategy":I
    .local v15, "measureStrategy":I
    :goto_1e
    move/from16 v28, v5

    move-object/from16 v5, v26

    .end local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "maxIterations":I
    invoke-direct {v0, v5, v12, v15}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v26

    .line 375
    .local v26, "hasMeasure":Z
    or-int v4, v4, v26

    .line 379
    move/from16 v30, v4

    .end local v4    # "needSolverPass":Z
    .local v30, "needSolverPass":Z
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_2d

    .line 380
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v32, v5

    move/from16 v31, v6

    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "j":I
    .local v31, "j":I
    .local v32, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v5, v5, v20

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_1f

    .line 379
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v6    # "j":I
    :cond_2d
    move-object/from16 v32, v5

    move/from16 v31, v6

    const-wide/16 v20, 0x1

    .line 383
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "j":I
    .restart local v31    # "j":I
    .restart local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :goto_1f
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 384
    .local v4, "measuredWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 386
    .local v5, "measuredHeight":I
    if-eq v4, v13, :cond_2f

    .line 387
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 388
    if-eqz v2, :cond_2e

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    if-le v6, v8, :cond_2e

    .line 389
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    move/from16 v33, v2

    .end local v2    # "containerWrapWidth":Z
    .local v33, "containerWrapWidth":Z
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 390
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v6, v2

    .line 391
    .local v6, "w":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_20

    .line 388
    .end local v6    # "w":I
    .end local v33    # "containerWrapWidth":Z
    .restart local v2    # "containerWrapWidth":Z
    :cond_2e
    move/from16 v33, v2

    .line 396
    .end local v2    # "containerWrapWidth":Z
    .restart local v33    # "containerWrapWidth":Z
    :goto_20
    const/4 v2, 0x1

    move/from16 v30, v2

    .end local v30    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_21

    .line 386
    .end local v33    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .restart local v30    # "needSolverPass":Z
    :cond_2f
    move/from16 v33, v2

    .line 398
    .end local v2    # "containerWrapWidth":Z
    .restart local v33    # "containerWrapWidth":Z
    :goto_21
    if-eq v5, v14, :cond_31

    .line 399
    invoke-virtual {v12, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 400
    if-eqz v3, :cond_30

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v11, :cond_30

    .line 401
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 402
    invoke-virtual {v12, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v2, v6

    .line 403
    .local v2, "h":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    .line 408
    .end local v2    # "h":I
    :cond_30
    const/4 v2, 0x1

    move/from16 v30, v2

    .line 410
    :cond_31
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v7, v2, :cond_32

    .line 414
    const/4 v2, 0x1

    move v4, v2

    .end local v30    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_22

    .line 347
    .end local v2    # "needSolverPass":Z
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredHeight":I
    .end local v7    # "preBaselineDistance":I
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "preWidth":I
    .end local v14    # "preHeight":I
    .end local v15    # "measureStrategy":I
    .end local v26    # "hasMeasure":Z
    .restart local v30    # "needSolverPass":Z
    :cond_32
    move/from16 v4, v30

    .end local v30    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_22
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v15, v29

    move/from16 v6, v31

    move-object/from16 v26, v32

    move/from16 v2, v33

    goto/16 :goto_1c

    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .local v5, "maxIterations":I
    .local v6, "j":I
    .local v7, "optimize":Z
    .local v15, "sizeDependentWidgetsCount":I
    .local v26, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_33
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move-object/from16 v32, v26

    const-wide/16 v20, 0x1

    .line 417
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "maxIterations":I
    .end local v6    # "j":I
    .end local v7    # "optimize":Z
    .end local v9    # "i":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .end local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v31    # "j":I
    .restart local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v33    # "containerWrapWidth":Z
    if-eqz v4, :cond_34

    .line 418
    const-string v2, "intermediate pass"

    move/from16 v5, v25

    .end local v25    # "startingWidth":I
    .local v5, "startingWidth":I
    invoke-direct {v0, v1, v2, v5, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 419
    const/4 v4, 0x0

    .line 346
    add-int/lit8 v6, v31, 0x1

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v15, v29

    move-object/from16 v26, v32

    move/from16 v2, v33

    .end local v31    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_1b

    .line 417
    .end local v5    # "startingWidth":I
    .end local v6    # "j":I
    .restart local v25    # "startingWidth":I
    .restart local v31    # "j":I
    :cond_34
    move/from16 v5, v25

    .end local v25    # "startingWidth":I
    .restart local v5    # "startingWidth":I
    goto :goto_23

    .line 346
    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v31    # "j":I
    .end local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .restart local v2    # "containerWrapWidth":Z
    .local v5, "maxIterations":I
    .restart local v6    # "j":I
    .restart local v7    # "optimize":Z
    .restart local v15    # "sizeDependentWidgetsCount":I
    .restart local v25    # "startingWidth":I
    .restart local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_35
    move/from16 v33, v2

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move/from16 v5, v25

    move-object/from16 v32, v26

    .line 424
    .end local v2    # "containerWrapWidth":Z
    .end local v6    # "j":I
    .end local v7    # "optimize":Z
    .end local v15    # "sizeDependentWidgetsCount":I
    .end local v25    # "startingWidth":I
    .end local v26    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "startingWidth":I
    .restart local v27    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v33    # "containerWrapWidth":Z
    :goto_23
    if-eqz v4, :cond_39

    .line 425
    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v5, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 426
    const/4 v2, 0x0

    .line 427
    .end local v4    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v8, :cond_36

    .line 428
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 429
    const/4 v2, 0x1

    .line 431
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v11, :cond_37

    .line 432
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 433
    const/4 v2, 0x1

    .line 435
    :cond_37
    if-eqz v2, :cond_39

    .line 436
    const-string v4, "3rd pass"

    invoke-direct {v0, v1, v4, v5, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_24

    .line 297
    .end local v2    # "needSolverPass":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v16    # "childCount":I
    .end local v17    # "optimizeWrap":Z
    .end local v22    # "heightSize":I
    .end local v23    # "computations":I
    .end local v24    # "optimizations":I
    .end local v27    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v33    # "containerWrapWidth":Z
    .end local p8    # "widthSize":I
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "optimizations":I
    .restart local v7    # "optimize":Z
    .local v8, "childCount":I
    .local v9, "startingWidth":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .restart local v15    # "sizeDependentWidgetsCount":I
    :cond_38
    move-object/from16 v32, v5

    move/from16 v24, v6

    move/from16 v27, v7

    move/from16 v16, v8

    move v5, v9

    move/from16 v17, v11

    move/from16 p8, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v29, v15

    .line 440
    .end local v6    # "optimizations":I
    .end local v7    # "optimize":Z
    .end local v8    # "childCount":I
    .end local v9    # "startingWidth":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .local v5, "startingWidth":I
    .restart local v16    # "childCount":I
    .restart local v17    # "optimizeWrap":Z
    .restart local v22    # "heightSize":I
    .restart local v23    # "computations":I
    .restart local v24    # "optimizations":I
    .restart local v27    # "optimize":Z
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v32    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local p8    # "widthSize":I
    :cond_39
    :goto_24
    move/from16 v2, v24

    .end local v24    # "optimizations":I
    .local v2, "optimizations":I
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 445
    .end local v2    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    :goto_25
    return-wide v18
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 59
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 60
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
