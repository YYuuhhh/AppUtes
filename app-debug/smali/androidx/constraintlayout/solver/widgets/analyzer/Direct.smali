.class public Landroidx/constraintlayout/solver/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static measure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 11
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 647
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 648
    .local v0, "horizontalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 649
    .local v1, "verticalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 650
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 651
    .local v5, "isParentHorizontalFixed":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    .line 652
    .local v6, "isParentVerticalFixed":Z
    :goto_2
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-eq v0, v7, :cond_5

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_5

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_3

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_3

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 658
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 659
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v4

    .line 660
    .local v7, "isHorizontalFixed":Z
    :goto_4
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_6

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_6

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_6

    .line 666
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 667
    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    move v9, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v4

    .line 668
    .local v9, "isVerticalFixed":Z
    :goto_6
    iget v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v10, v8

    if-lez v8, :cond_a

    if-nez v7, :cond_9

    if-eqz v9, :cond_a

    .line 669
    :cond_9
    return v4

    .line 676
    :cond_a
    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    move v3, v4

    :cond_b
    return v3
.end method

.method private static horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 19
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "isRtl"    # Z

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 234
    .local v3, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 237
    .end local v3    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_0
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 238
    .local v3, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 239
    .local v4, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 240
    .local v5, "l":I
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    .line 242
    .local v6, "r":I
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 243
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 244
    .local v12, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 245
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v14, 0x0

    .line 246
    .local v14, "x1":I
    const/4 v15, 0x0

    .line 247
    .local v15, "x2":I
    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v16

    .line 248
    .local v16, "canMeasure":Z
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v17

    if-eqz v17, :cond_1

    if-eqz v16, :cond_1

    .line 249
    new-instance v17, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v18, v17

    .line 250
    .local v18, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v10, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v11, v18

    .end local v18    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v11, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v13, v1, v11, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 253
    .end local v11    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_7

    if-eqz v16, :cond_2

    goto :goto_2

    .line 279
    :cond_2
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_b

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v10, :cond_b

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v10, :cond_b

    .line 281
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_3

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_b

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v10

    cmpl-float v10, v10, v8

    if-nez v10, :cond_b

    .line 282
    :cond_3
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v10

    if-nez v10, :cond_b

    .line 283
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_4

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_4

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_6

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_6

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 284
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 285
    .local v10, "bothConnected":Z
    :goto_1
    if-eqz v10, :cond_b

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v11

    if-nez v11, :cond_b

    .line 286
    invoke-static {v0, v1, v13, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    goto :goto_3

    .line 255
    .end local v10    # "bothConnected":Z
    :cond_7
    :goto_2
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 260
    goto/16 :goto_0

    .line 262
    :cond_8
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_9

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9

    .line 263
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v10, v5

    .line 264
    .end local v14    # "x1":I
    .local v10, "x1":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    .line 265
    .end local v15    # "x2":I
    .local v11, "x2":I
    invoke-virtual {v13, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 266
    invoke-static {v13, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_3

    .line 267
    .end local v10    # "x1":I
    .end local v11    # "x2":I
    .restart local v14    # "x1":I
    .restart local v15    # "x2":I
    :cond_9
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_a

    .line 268
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    sub-int v10, v5, v10

    .line 269
    .end local v15    # "x2":I
    .local v10, "x2":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    sub-int v11, v10, v11

    .line 270
    .end local v14    # "x1":I
    .local v11, "x1":I
    invoke-virtual {v13, v11, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 271
    invoke-static {v13, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_3

    .line 272
    .end local v10    # "x2":I
    .end local v11    # "x1":I
    .restart local v14    # "x1":I
    .restart local v15    # "x2":I
    :cond_a
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v12, v10, :cond_b

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 273
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_b

    .line 274
    invoke-static {v1, v13, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    .line 289
    .end local v12    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "x1":I
    .end local v15    # "x2":I
    .end local v16    # "canMeasure":Z
    :cond_b
    :goto_3
    goto/16 :goto_0

    .line 291
    :cond_c
    instance-of v7, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v7, :cond_d

    .line 292
    return-void

    .line 294
    :cond_d
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 295
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 296
    .local v10, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 297
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v12

    .line 298
    .local v12, "canMeasure":Z
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v12, :cond_e

    .line 299
    new-instance v13, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 300
    .local v13, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v14, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v11, v1, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 303
    .end local v13    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_e
    const/4 v13, 0x0

    .line 304
    .local v13, "x1":I
    const/4 v14, 0x0

    .line 305
    .local v14, "x2":I
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v10, v15, :cond_f

    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_f

    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-nez v15, :cond_10

    :cond_f
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v10, v15, :cond_11

    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_11

    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 306
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-eqz v15, :cond_11

    :cond_10
    const/4 v15, 0x1

    goto :goto_5

    :cond_11
    const/4 v15, 0x0

    .line 307
    .local v15, "bothConnected":Z
    :goto_5
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_16

    if-eqz v12, :cond_12

    const/16 v9, 0x8

    const/16 v16, 0x0

    goto :goto_7

    .line 329
    :cond_12
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_15

    iget v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v8, :cond_15

    iget v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v8, :cond_15

    .line 331
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_14

    iget v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_13

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v8

    const/16 v16, 0x0

    cmpl-float v8, v8, v16

    if-nez v8, :cond_1a

    goto :goto_6

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v16, 0x0

    .line 332
    :goto_6
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 333
    if-eqz v15, :cond_1a

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 334
    invoke-static {v0, v1, v11, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    goto :goto_8

    .line 329
    :cond_15
    const/16 v9, 0x8

    const/16 v16, 0x0

    goto :goto_8

    .line 307
    :cond_16
    const/16 v9, 0x8

    const/16 v16, 0x0

    .line 309
    :goto_7
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 314
    move/from16 v8, v16

    goto/16 :goto_4

    .line 316
    :cond_17
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v10, v8, :cond_18

    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_18

    .line 317
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v8, v6

    .line 318
    .end local v13    # "x1":I
    .local v8, "x1":I
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    add-int/2addr v13, v8

    .line 319
    .end local v14    # "x2":I
    .local v13, "x2":I
    invoke-virtual {v11, v8, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 320
    invoke-static {v11, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_8

    .line 321
    .end local v8    # "x1":I
    .local v13, "x1":I
    .restart local v14    # "x2":I
    :cond_18
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v10, v8, :cond_19

    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_19

    .line 322
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int v8, v6, v8

    .line 323
    .end local v14    # "x2":I
    .local v8, "x2":I
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    sub-int v13, v8, v14

    .line 324
    invoke-virtual {v11, v13, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 325
    invoke-static {v11, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_8

    .line 326
    .end local v8    # "x2":I
    .restart local v14    # "x2":I
    :cond_19
    if-eqz v15, :cond_1a

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 327
    invoke-static {v1, v11, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    .line 337
    .end local v10    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "canMeasure":Z
    .end local v13    # "x1":I
    .end local v14    # "x2":I
    .end local v15    # "bothConnected":Z
    :cond_1a
    :goto_8
    move/from16 v8, v16

    goto/16 :goto_4

    .line 339
    :cond_1b
    return-void
.end method

.method private static solveBarrier(Landroidx/constraintlayout/solver/widgets/Barrier;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .locals 1
    .param p0, "barrier"    # Landroidx/constraintlayout/solver/widgets/Barrier;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "orientation"    # I
    .param p3, "isRtl"    # Z

    .line 211
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->allSolved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    if-nez p2, :cond_0

    .line 213
    invoke-static {p0, p1, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 218
    :cond_1
    :goto_0
    return-void
.end method

.method public static solveChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;ZZZ)Z
    .locals 28
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;
    .param p5, "isChainSpread"    # Z
    .param p6, "isChainSpreadInside"    # Z
    .param p7, "isChainPacked"    # Z

    .line 699
    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 700
    return v0

    .line 702
    :cond_0
    if-nez p2, :cond_1

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v1

    if-nez v1, :cond_2

    .line 704
    return v0

    .line 707
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    return v0

    .line 712
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v1

    .line 714
    .local v1, "isRtl":Z
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->getFirst()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 715
    .local v2, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->getLast()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 716
    .local v3, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 717
    .local v4, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 718
    .local v5, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->getHead()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    .line 720
    .local v6, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v2

    .line 721
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v8, 0x0

    .line 722
    .local v8, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 724
    .local v9, "done":Z
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    .line 725
    .local v10, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    .line 726
    .local v11, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_28

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_3

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_15

    .line 729
    :cond_3
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v12

    if-eqz v12, :cond_27

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_14

    .line 733
    :cond_4
    if-eqz v4, :cond_26

    if-nez v5, :cond_5

    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    goto/16 :goto_13

    .line 737
    :cond_5
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v12, v13

    .line 738
    .local v12, "startPoint":I
    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    sub-int/2addr v13, v14

    .line 740
    .local v13, "endPoint":I
    sub-int v14, v13, v12

    .line 741
    .local v14, "distance":I
    if-gtz v14, :cond_6

    .line 742
    return v0

    .line 744
    :cond_6
    const/4 v15, 0x0

    .line 745
    .local v15, "totalSize":I
    new-instance v16, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 747
    .local v17, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    const/16 v16, 0x0

    .line 748
    .local v16, "numWidgets":I
    const/16 v18, 0x0

    move/from16 v19, v16

    move/from16 v20, v18

    .line 750
    .end local v16    # "numWidgets":I
    .local v19, "numWidgets":I
    .local v20, "numVisibleWidgets":I
    :goto_0
    if-nez v9, :cond_10

    .line 751
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v0, p3

    .line 752
    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v0

    .line 753
    .local v0, "canMeasure":Z
    if-nez v0, :cond_7

    .line 754
    const/16 v16, 0x0

    return v16

    .line 756
    :cond_7
    const/16 v16, 0x0

    move/from16 v21, v0

    .end local v0    # "canMeasure":Z
    .local v21, "canMeasure":Z
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p2

    move-object/from16 v22, v3

    .end local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v22, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_8

    .line 757
    return v16

    .line 760
    :cond_8
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 761
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    sget v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    .end local v17    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v8, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v23, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-static {v7, v0, v8, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    goto :goto_1

    .line 760
    .end local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_9
    move-object/from16 v23, v8

    move-object/from16 v8, v17

    .line 764
    .end local v17    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v8, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v15, v0

    .line 765
    if-nez p2, :cond_a

    .line 766
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v15, v0

    goto :goto_2

    .line 768
    :cond_a
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v15, v0

    .line 770
    :goto_2
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v15, v0

    .line 772
    move/from16 v0, v19

    .end local v19    # "numWidgets":I
    .local v0, "numWidgets":I
    add-int/lit8 v19, v0, 0x1

    .line 773
    .end local v0    # "numWidgets":I
    .restart local v19    # "numWidgets":I
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_b

    .line 774
    move/from16 v3, v20

    .end local v20    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    add-int/lit8 v20, v3, 0x1

    .end local v3    # "numVisibleWidgets":I
    .restart local v20    # "numVisibleWidgets":I
    goto :goto_3

    .line 773
    :cond_b
    move/from16 v3, v20

    .line 779
    :goto_3
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 780
    .local v0, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v0, :cond_e

    .line 781
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 782
    .end local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v17, v0

    .end local v0    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v17, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_d

    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v0, v7, :cond_c

    goto :goto_4

    :cond_c
    move-object v0, v3

    goto :goto_5

    .line 784
    :cond_d
    :goto_4
    const/4 v0, 0x0

    .end local v3    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_5

    .line 787
    .end local v17    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v0, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_e
    move-object/from16 v17, v0

    .end local v0    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v17    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v0, 0x0

    .line 789
    .end local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_5
    if-eqz v0, :cond_f

    .line 790
    move-object v3, v0

    move-object v7, v3

    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_6

    .line 792
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_f
    const/4 v3, 0x1

    move v9, v3

    .line 794
    .end local v17    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v21    # "canMeasure":Z
    :goto_6
    move-object/from16 v17, v8

    move-object/from16 v3, v22

    move-object v8, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 796
    .end local v0    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v17, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_10
    move-object/from16 v22, v3

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    move/from16 v0, v19

    move/from16 v3, v20

    .end local v17    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .end local v19    # "numWidgets":I
    .end local v20    # "numVisibleWidgets":I
    .local v0, "numWidgets":I
    .local v3, "numVisibleWidgets":I
    .local v8, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_11

    .line 797
    const/16 v16, 0x0

    return v16

    .line 800
    :cond_11
    const/16 v16, 0x0

    if-eq v3, v0, :cond_12

    .line 801
    return v16

    .line 804
    :cond_12
    if-ge v14, v15, :cond_13

    .line 805
    return v16

    .line 808
    :cond_13
    sub-int v17, v14, v15

    .line 809
    .local v17, "gap":I
    move/from16 v19, v0

    .end local v0    # "numWidgets":I
    .restart local v19    # "numWidgets":I
    if-eqz p5, :cond_14

    .line 810
    add-int/lit8 v21, v3, 0x1

    div-int v17, v17, v21

    move-object/from16 v24, v7

    move/from16 v0, v17

    const/4 v7, 0x1

    goto :goto_8

    .line 811
    :cond_14
    if-eqz p6, :cond_16

    .line 812
    const/4 v0, 0x2

    if-le v3, v0, :cond_15

    .line 813
    div-int v0, v17, v3

    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v17, v0, -0x1

    move/from16 v0, v17

    goto :goto_8

    .line 812
    .end local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_15
    move-object/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_7

    .line 811
    .end local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_16
    move-object/from16 v24, v7

    const/4 v7, 0x1

    .line 817
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_7
    move/from16 v0, v17

    .end local v17    # "gap":I
    .local v0, "gap":I
    :goto_8
    if-ne v3, v7, :cond_19

    .line 818
    const/high16 v7, 0x3f000000    # 0.5f

    .line 819
    .local v7, "bias":F
    if-nez p2, :cond_17

    .line 820
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v7

    goto :goto_9

    .line 822
    :cond_17
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v7

    .line 824
    :goto_9
    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v17, v6

    .end local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v17, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    int-to-float v6, v12

    add-float v6, v6, v16

    move-object/from16 v25, v8

    .end local v8    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v25, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    int-to-float v8, v0

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 825
    .local v6, "p1":I
    if-nez p2, :cond_18

    .line 826
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v6, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    goto :goto_a

    .line 828
    :cond_18
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v6, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 830
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v8

    invoke-static {v4, v8, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 831
    const/4 v8, 0x1

    return v8

    .line 834
    .end local v7    # "bias":F
    .end local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v25    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v6, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_19
    move-object/from16 v17, v6

    move-object/from16 v25, v8

    .end local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .restart local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v25    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    if-eqz p5, :cond_22

    .line 835
    const/4 v6, 0x0

    .line 837
    .end local v9    # "done":Z
    .local v6, "done":Z
    add-int v7, v12, v0

    .line 838
    .local v7, "current":I
    move-object v8, v2

    move v9, v6

    .line 839
    .end local v6    # "done":Z
    .end local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "done":Z
    :goto_b
    if-nez v9, :cond_21

    .line 840
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v6, p3

    .line 841
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    move-object/from16 v26, v2

    const/16 v2, 0x8

    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v26, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v6, v2, :cond_1b

    .line 842
    if-nez p2, :cond_1a

    .line 843
    invoke-virtual {v8, v7, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_d

    .line 846
    :cond_1a
    invoke-virtual {v8, v7, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_d

    .line 850
    :cond_1b
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v7, v6

    .line 851
    if-nez p2, :cond_1c

    .line 852
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v8, v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 854
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v7, v6

    goto :goto_c

    .line 856
    :cond_1c
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v8, v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 858
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v7, v6

    .line 860
    :goto_c
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v6, v6, v18

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v7, v6

    .line 861
    add-int/2addr v7, v0

    .line 864
    :goto_d
    move-object/from16 v6, p1

    const/4 v2, 0x0

    invoke-virtual {v8, v6, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V

    .line 867
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v2, v2, v20

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 868
    .local v2, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1f

    .line 869
    move/from16 v27, v0

    .end local v0    # "gap":I
    .local v27, "gap":I
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 870
    .end local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v2

    .end local v2    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v20, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v2, v8, :cond_1d

    goto :goto_e

    :cond_1d
    move-object/from16 v23, v0

    goto :goto_f

    .line 872
    :cond_1e
    :goto_e
    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_f

    .line 875
    .end local v20    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "gap":I
    .local v0, "gap":I
    .restart local v2    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f
    move/from16 v27, v0

    move-object/from16 v20, v2

    .end local v0    # "gap":I
    .end local v2    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v20    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v27    # "gap":I
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 877
    :goto_f
    if-eqz v23, :cond_20

    .line 878
    move-object/from16 v8, v23

    goto :goto_10

    .line 880
    :cond_20
    const/4 v9, 0x1

    .line 882
    .end local v20    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_10
    move-object/from16 v2, v26

    move/from16 v0, v27

    goto/16 :goto_b

    .line 839
    .end local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v0    # "gap":I
    .local v2, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_21
    move-object/from16 v6, p1

    move/from16 v27, v0

    move-object/from16 v26, v2

    .line 883
    .end local v0    # "gap":I
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "current":I
    .restart local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v27    # "gap":I
    move-object v7, v8

    move-object/from16 v8, v23

    const/4 v0, 0x1

    goto :goto_12

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v0    # "gap":I
    .restart local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22
    move-object/from16 v6, p1

    move/from16 v27, v0

    move-object/from16 v26, v2

    .end local v0    # "gap":I
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v27    # "gap":I
    if-eqz p6, :cond_25

    .line 884
    const/4 v0, 0x2

    if-ne v3, v0, :cond_24

    .line 885
    if-nez p2, :cond_23

    .line 886
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v4, v12, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 887
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v5, v0, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v5, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_11

    .line 891
    :cond_23
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v4, v12, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 892
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v5, v0, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 896
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 898
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 883
    :cond_25
    const/4 v0, 0x1

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    .line 900
    .end local v23    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v24    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_12
    return v0

    .line 733
    .end local v12    # "startPoint":I
    .end local v13    # "endPoint":I
    .end local v14    # "distance":I
    .end local v15    # "totalSize":I
    .end local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "numWidgets":I
    .end local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v25    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .end local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v27    # "gap":I
    .restart local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_26
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 734
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_13
    return v0

    .line 729
    .end local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_27
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 730
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_14
    return v0

    .line 726
    .end local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v26, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .line 727
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v22    # "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v26    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_15
    return v0
.end method

.method private static solveHorizontalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .locals 10
    .param p0, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 499
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 500
    .local v0, "bias":F
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 501
    .local v1, "start":I
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 502
    .local v2, "end":I
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 503
    .local v3, "s1":I
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 504
    .local v4, "s2":I
    if-ne v1, v2, :cond_0

    .line 505
    const/high16 v0, 0x3f000000    # 0.5f

    .line 506
    move v3, v1

    .line 507
    move v4, v2

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    .line 510
    .local v5, "width":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 511
    .local v6, "distance":I
    if-le v3, v4, :cond_1

    .line 512
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 514
    :cond_1
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 515
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 516
    .local v8, "x1":I
    add-int v9, v8, v5

    .line 517
    .local v9, "x2":I
    if-le v3, v4, :cond_2

    .line 518
    add-int v8, v3, v7

    .line 519
    sub-int v9, v8, v5

    .line 521
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 522
    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 523
    return-void
.end method

.method private static solveHorizontalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .locals 8
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "isRtl"    # Z

    .line 569
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 570
    .local v0, "bias":F
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 571
    .local v1, "s1":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 572
    .local v2, "s2":I
    if-lt v2, v1, :cond_4

    .line 573
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 574
    .local v3, "width":I
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 575
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 576
    const/4 v4, 0x0

    .line 577
    .local v4, "parentWidth":I
    instance-of v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 578
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 582
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    mul-float/2addr v5, v6

    int-to-float v7, v4

    mul-float/2addr v5, v7

    float-to-int v3, v5

    .end local v4    # "parentWidth":I
    goto :goto_1

    .line 583
    :cond_1
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_2

    .line 584
    sub-int v3, v2, v1

    goto :goto_2

    .line 583
    :cond_2
    :goto_1
    nop

    .line 586
    :goto_2
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 587
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v4, :cond_3

    .line 588
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 591
    :cond_3
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 592
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 593
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 594
    .local v6, "x1":I
    add-int v7, v6, v3

    .line 595
    .local v7, "x2":I
    invoke-virtual {p2, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 596
    invoke-static {p2, p1, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 598
    .end local v3    # "width":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "x1":I
    .end local v7    # "x2":I
    :cond_4
    return-void
.end method

.method private static solveVerticalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10
    .param p0, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 534
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 535
    .local v0, "bias":F
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 536
    .local v1, "start":I
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 537
    .local v2, "end":I
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 538
    .local v3, "s1":I
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 539
    .local v4, "s2":I
    if-ne v1, v2, :cond_0

    .line 540
    const/high16 v0, 0x3f000000    # 0.5f

    .line 541
    move v3, v1

    .line 542
    move v4, v2

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 545
    .local v5, "height":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 546
    .local v6, "distance":I
    if-le v3, v4, :cond_1

    .line 547
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 549
    :cond_1
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 550
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 551
    .local v8, "y1":I
    add-int v9, v8, v5

    .line 552
    .local v9, "y2":I
    if-le v3, v4, :cond_2

    .line 553
    sub-int v8, v3, v7

    .line 554
    sub-int v9, v8, v5

    .line 556
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 557
    invoke-static {p1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 558
    return-void
.end method

.method private static solveVerticalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 609
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 610
    .local v0, "bias":F
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 611
    .local v1, "s1":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 612
    .local v2, "s2":I
    if-lt v2, v1, :cond_4

    .line 613
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    .line 614
    .local v3, "height":I
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 615
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 616
    const/4 v4, 0x0

    .line 617
    .local v4, "parentHeight":I
    instance-of v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 618
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 622
    :goto_0
    mul-float v5, v0, v6

    int-to-float v7, v4

    mul-float/2addr v5, v7

    float-to-int v3, v5

    .end local v4    # "parentHeight":I
    goto :goto_1

    .line 623
    :cond_1
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_2

    .line 624
    sub-int v3, v2, v1

    goto :goto_2

    .line 623
    :cond_2
    :goto_1
    nop

    .line 626
    :goto_2
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 627
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v4, :cond_3

    .line 628
    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 631
    :cond_3
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 632
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 633
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 634
    .local v6, "y1":I
    add-int v7, v6, v3

    .line 635
    .local v7, "y2":I
    invoke-virtual {p2, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 636
    invoke-static {p2, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 638
    .end local v3    # "height":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "y1":I
    .end local v7    # "y2":I
    :cond_4
    return-void
.end method

.method public static solvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 17
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 55
    .local v2, "horizontal":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 59
    .local v3, "vertical":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    .line 61
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 62
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 64
    .local v7, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 62
    .end local v7    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v6    # "i":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v6

    .line 74
    .local v6, "isRtl":Z
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-ne v2, v7, :cond_1

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual {v0, v8, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    .line 81
    :goto_1
    const/4 v7, 0x0

    .line 82
    .local v7, "hasGuideline":Z
    const/4 v9, 0x0

    .line 83
    .local v9, "hasBarrier":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v10, v5, :cond_8

    .line 84
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 85
    .local v14, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v15, v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v15, :cond_6

    .line 86
    move-object v15, v14

    check-cast v15, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 87
    .local v15, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 88
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 89
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v8

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v8

    if-eq v8, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v11

    sub-int/2addr v8, v11

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 93
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativePercent()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v8, v12

    add-float/2addr v8, v11

    float-to-int v8, v8

    .line 94
    .local v8, "position":I
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    .line 96
    .end local v8    # "position":I
    :cond_4
    :goto_3
    const/4 v7, 0x1

    .line 98
    .end local v15    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_5
    goto :goto_4

    :cond_6
    instance-of v8, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v8, :cond_5

    .line 99
    move-object v8, v14

    check-cast v8, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 100
    .local v8, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v11

    if-nez v11, :cond_7

    .line 101
    const/4 v9, 0x1

    .line 83
    .end local v8    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    .end local v14    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 105
    .end local v10    # "i":I
    :cond_8
    if-eqz v7, :cond_a

    .line 106
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v5, :cond_a

    .line 107
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 108
    .local v10, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_9

    .line 109
    move-object v14, v10

    check-cast v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 110
    .local v14, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-ne v15, v13, :cond_9

    .line 111
    invoke-static {v14, v1, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 106
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 118
    .end local v8    # "i":I
    :cond_a
    invoke-static {v0, v1, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 121
    if-eqz v9, :cond_c

    .line 122
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v5, :cond_c

    .line 123
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 124
    .restart local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v14, :cond_b

    .line 125
    move-object v14, v10

    check-cast v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 126
    .local v14, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v15

    if-nez v15, :cond_b

    .line 127
    const/4 v15, 0x0

    invoke-static {v14, v1, v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveBarrier(Landroidx/constraintlayout/solver/widgets/Barrier;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 122
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 134
    .end local v8    # "i":I
    :cond_c
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_d

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    goto :goto_7

    .line 137
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    .line 141
    :goto_7
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    .end local v9    # "hasBarrier":Z
    .local v8, "hasBarrier":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    if-ge v9, v5, :cond_14

    .line 144
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 145
    .restart local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v14, v10, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_12

    .line 146
    move-object v14, v10

    check-cast v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 147
    .local v14, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-nez v15, :cond_11

    .line 148
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    if-eq v15, v12, :cond_e

    .line 149
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 150
    :cond_e
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v15

    if-eq v15, v12, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 152
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 153
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Guideline;->getRelativePercent()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v15, v12

    add-float/2addr v15, v11

    float-to-int v12, v15

    .line 154
    .local v12, "position":I
    invoke-virtual {v14, v12}, Landroidx/constraintlayout/solver/widgets/Guideline;->setFinalValue(I)V

    .line 156
    .end local v12    # "position":I
    :cond_10
    :goto_9
    const/4 v7, 0x1

    .line 158
    .end local v14    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_11
    goto :goto_a

    :cond_12
    instance-of v12, v10, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v12, :cond_11

    .line 159
    move-object v12, v10

    check-cast v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 160
    .local v12, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v14

    if-ne v14, v13, :cond_13

    .line 161
    const/4 v8, 0x1

    .line 143
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    :cond_13
    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v12, -0x1

    goto :goto_8

    .line 165
    .end local v9    # "i":I
    :cond_14
    if-eqz v7, :cond_16

    .line 166
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    if-ge v9, v5, :cond_16

    .line 167
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 168
    .restart local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v11, :cond_15

    .line 169
    move-object v11, v10

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 170
    .local v11, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v12

    if-nez v12, :cond_15

    .line 171
    invoke-static {v11, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 166
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 178
    .end local v9    # "i":I
    :cond_16
    invoke-static/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 181
    if-eqz v8, :cond_18

    .line 182
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    if-ge v9, v5, :cond_18

    .line 183
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 184
    .restart local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v11, :cond_17

    .line 185
    move-object v11, v10

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 186
    .local v11, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v12

    if-ne v12, v13, :cond_17

    .line 187
    invoke-static {v11, v1, v13, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveBarrier(Landroidx/constraintlayout/solver/widgets/Barrier;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 182
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 194
    .end local v9    # "i":I
    :cond_18
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    if-ge v9, v5, :cond_1a

    .line 195
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 196
    .restart local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 197
    sget-object v11, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget v12, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 198
    invoke-static {v10, v1, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 199
    invoke-static {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 194
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 202
    .end local v9    # "i":I
    :cond_1a
    return-void
.end method

.method private static verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 18
    .param p0, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 355
    .local v2, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 358
    .end local v2    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 359
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 360
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    .line 361
    .local v4, "t":I
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 363
    .local v5, "b":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_c

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 364
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 365
    .local v11, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 366
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v13, 0x0

    .line 367
    .local v13, "y1":I
    const/4 v14, 0x0

    .line 368
    .local v14, "y2":I
    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v15

    .line 369
    .local v15, "canMeasure":Z
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v16

    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    .line 370
    new-instance v16, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 371
    .local v17, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v10, v17

    .end local v17    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v10, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v12, v1, v10, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 374
    .end local v10    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_7

    if-eqz v15, :cond_2

    goto :goto_2

    .line 400
    :cond_2
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_b

    iget v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v9, :cond_b

    iget v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v9, :cond_b

    .line 402
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_3

    iget v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_b

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v9

    cmpl-float v9, v9, v7

    if-nez v9, :cond_b

    .line 403
    :cond_3
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v9

    if-nez v9, :cond_b

    .line 404
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_4

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_4

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_6

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 405
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    .line 406
    .local v9, "bothConnected":Z
    :goto_1
    if-eqz v9, :cond_b

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v10

    if-nez v10, :cond_b

    .line 407
    invoke-static {v0, v1, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_3

    .line 376
    .end local v9    # "bothConnected":Z
    :cond_7
    :goto_2
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_8
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_9

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    .line 384
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v9, v4

    .line 385
    .end local v13    # "y1":I
    .local v9, "y1":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v9

    .line 386
    .end local v14    # "y2":I
    .local v10, "y2":I
    invoke-virtual {v12, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 387
    invoke-static {v12, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 388
    .end local v9    # "y1":I
    .end local v10    # "y2":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_9
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_a

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_a

    .line 389
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    sub-int v9, v4, v9

    .line 390
    .end local v14    # "y2":I
    .local v9, "y2":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    sub-int v10, v9, v10

    .line 391
    .end local v13    # "y1":I
    .local v10, "y1":I
    invoke-virtual {v12, v10, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 392
    invoke-static {v12, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 393
    .end local v9    # "y2":I
    .end local v10    # "y1":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_a
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v11, v9, :cond_b

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_b

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 394
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 395
    invoke-static {v1, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 410
    .end local v11    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "y1":I
    .end local v14    # "y2":I
    .end local v15    # "canMeasure":Z
    :cond_b
    :goto_3
    goto/16 :goto_0

    .line 412
    :cond_c
    instance-of v6, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v6, :cond_d

    .line 413
    return-void

    .line 415
    :cond_d
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 416
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 417
    .local v9, "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 418
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 419
    .local v11, "canMeasure":Z
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    .line 420
    new-instance v12, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 421
    .local v12, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v13, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 424
    .end local v12    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_e
    const/4 v12, 0x0

    .line 425
    .local v12, "y1":I
    const/4 v13, 0x0

    .line 426
    .local v13, "y2":I
    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v9, v14, :cond_f

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_f

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_f
    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v9, v14, :cond_11

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_11

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 427
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_10
    const/4 v14, 0x1

    goto :goto_5

    :cond_11
    const/4 v14, 0x0

    .line 428
    .local v14, "bothConnected":Z
    :goto_5
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v7, :cond_16

    if-eqz v11, :cond_12

    const/4 v15, 0x0

    goto :goto_7

    .line 450
    :cond_12
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v15, :cond_15

    iget v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v7, :cond_15

    iget v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v7, :cond_15

    .line 452
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_14

    iget v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_13

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v7

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    if-nez v7, :cond_1a

    goto :goto_6

    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v15, 0x0

    .line 453
    :goto_6
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 454
    if-eqz v14, :cond_1a

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 455
    invoke-static {v0, v1, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_8

    .line 450
    :cond_15
    const/4 v15, 0x0

    goto :goto_8

    .line 428
    :cond_16
    const/4 v15, 0x0

    .line 430
    :goto_7
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 435
    move v7, v15

    goto/16 :goto_4

    .line 437
    :cond_17
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v9, v7, :cond_18

    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_18

    .line 438
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v7, v5

    .line 439
    .end local v12    # "y1":I
    .local v7, "y1":I
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    add-int/2addr v12, v7

    .line 440
    .end local v13    # "y2":I
    .local v12, "y2":I
    invoke-virtual {v10, v7, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 441
    invoke-static {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_8

    .line 442
    .end local v7    # "y1":I
    .local v12, "y1":I
    .restart local v13    # "y2":I
    :cond_18
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v9, v7, :cond_19

    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_19

    .line 443
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    sub-int v7, v5, v7

    .line 444
    .end local v13    # "y2":I
    .local v7, "y2":I
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    sub-int v12, v7, v13

    .line 445
    invoke-virtual {v10, v12, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 446
    invoke-static {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_8

    .line 447
    .end local v7    # "y2":I
    .restart local v13    # "y2":I
    :cond_19
    if-eqz v14, :cond_1a

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 448
    invoke-static {v1, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 458
    .end local v9    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    .end local v12    # "y1":I
    .end local v13    # "y2":I
    .end local v14    # "bothConnected":Z
    :cond_1a
    :goto_8
    move v7, v15

    goto/16 :goto_4

    .line 461
    :cond_1b
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 462
    .local v6, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 463
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    .line 464
    .local v7, "baselineValue":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 465
    .restart local v9    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 466
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 467
    .restart local v11    # "canMeasure":Z
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_1c

    if-eqz v11, :cond_1c

    .line 468
    new-instance v12, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 469
    .local v12, "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    sget v13, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v10, v1, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    .line 471
    .end local v12    # "measure":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1c
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_1d

    if-eqz v11, :cond_1f

    .line 473
    :cond_1d
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 478
    goto :goto_9

    .line 480
    :cond_1e
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v9, v12, :cond_1f

    .line 481
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalBaseline(I)V

    .line 482
    invoke-static {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 485
    .end local v9    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    :cond_1f
    goto :goto_9

    .line 488
    .end local v7    # "baselineValue":I
    :cond_20
    return-void
.end method
