.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 618
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 620
    return-void
.end method

.method private isSimilarSpec(III)Z
    .locals 6
    .param p1, "lastMeasureSpec"    # I
    .param p2, "spec"    # I
    .param p3, "widgetSize"    # I

    .line 886
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 887
    return v0

    .line 889
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 890
    .local v1, "lastMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 891
    .local v2, "lastSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 892
    .local v3, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 893
    .local v4, "size":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_2

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p3, v4, :cond_2

    .line 896
    return v0

    .line 898
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 610
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 611
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 612
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 613
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 614
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 615
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 616
    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 903
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 904
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 905
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 906
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_0

    .line 907
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 904
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 912
    .local v1, "helperCount":I
    if-lez v1, :cond_2

    .line 913
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 914
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 915
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 913
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 918
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 28
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 627
    return-void

    .line 629
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 632
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 633
    return-void

    .line 635
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_2

    .line 636
    return-void

    .line 646
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 647
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 649
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 650
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 652
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 653
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 655
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 656
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 658
    .local v11, "widthPadding":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 660
    .local v12, "child":Landroid/view/View;
    sget-object v13, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    if-eq v13, v5, :cond_c

    if-eq v13, v15, :cond_b

    const/4 v15, 0x4

    if-eq v13, v15, :cond_3

    goto/16 :goto_4

    .line 676
    :cond_3
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v13, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 677
    iget v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v13, v14, :cond_4

    move v13, v14

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    .line 678
    .local v13, "shouldDoWrap":Z
    :goto_0
    iget v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v5, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v15, v5, :cond_5

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v5, v15, :cond_e

    .line 684
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-ne v5, v15, :cond_6

    move v5, v14

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    .line 685
    .local v5, "otherDimensionStable":Z
    :goto_1
    iget v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v15, v14, :cond_9

    if-eqz v13, :cond_9

    if-eqz v13, :cond_7

    if-nez v5, :cond_9

    :cond_7
    instance-of v14, v12, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v14, :cond_9

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v14, 0x1

    .line 690
    .local v14, "useCurrent":Z
    :goto_3
    if-eqz v14, :cond_a

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    move/from16 v20, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "otherDimensionStable":Z
    .local v20, "otherDimensionStable":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    .line 690
    .end local v20    # "otherDimensionStable":Z
    .restart local v5    # "otherDimensionStable":Z
    :cond_a
    move/from16 v20, v5

    .end local v5    # "otherDimensionStable":Z
    .restart local v20    # "otherDimensionStable":Z
    goto :goto_4

    .line 671
    .end local v13    # "shouldDoWrap":Z
    .end local v14    # "useCurrent":Z
    .end local v20    # "otherDimensionStable":Z
    :cond_b
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v13

    add-int/2addr v13, v11

    .line 671
    const/4 v14, -0x1

    invoke-static {v5, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 674
    goto :goto_4

    .line 666
    :cond_c
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v13, -0x2

    invoke-static {v5, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 668
    goto :goto_4

    .line 662
    :cond_d
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 664
    nop

    .line 698
    :cond_e
    :goto_4
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v13

    aget v5, v5, v13

    const/4 v13, 0x1

    if-eq v5, v13, :cond_19

    const/4 v14, 0x2

    if-eq v5, v14, :cond_18

    const/4 v14, 0x3

    if-eq v5, v14, :cond_17

    const/4 v14, 0x4

    if-eq v5, v14, :cond_f

    goto/16 :goto_9

    .line 715
    :cond_f
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v14, -0x2

    invoke-static {v5, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 717
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v5, v13, :cond_10

    const/4 v5, 0x1

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    .line 718
    .local v5, "shouldDoWrap":Z
    :goto_5
    iget v13, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v13, v14, :cond_11

    iget v13, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v13, v14, :cond_1a

    .line 724
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_12

    const/4 v13, 0x1

    goto :goto_6

    :cond_12
    const/4 v13, 0x0

    .line 725
    .local v13, "otherDimensionStable":Z
    :goto_6
    iget v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v14, v15, :cond_15

    if-eqz v5, :cond_15

    if-eqz v5, :cond_13

    if-nez v13, :cond_15

    :cond_13
    instance-of v14, v12, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v14, :cond_15

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_7

    :cond_14
    const/4 v14, 0x0

    goto :goto_8

    :cond_15
    :goto_7
    const/4 v14, 0x1

    .line 730
    .restart local v14    # "useCurrent":Z
    :goto_8
    if-eqz v14, :cond_16

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    move/from16 v16, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v16, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_9

    .line 730
    .end local v16    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    :cond_16
    move/from16 v16, v5

    .end local v5    # "shouldDoWrap":Z
    .restart local v16    # "shouldDoWrap":Z
    goto :goto_9

    .line 710
    .end local v13    # "otherDimensionStable":Z
    .end local v14    # "useCurrent":Z
    .end local v16    # "shouldDoWrap":Z
    :cond_17
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v13

    add-int/2addr v13, v10

    .line 710
    const/4 v14, -0x1

    invoke-static {v5, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 713
    goto :goto_9

    .line 704
    :cond_18
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v13, -0x2

    invoke-static {v5, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 707
    goto :goto_9

    .line 700
    :cond_19
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    nop

    .line 738
    :cond_1a
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 739
    .local v5, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    if-eqz v5, :cond_1c

    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v13

    const/16 v14, 0x100

    invoke-static {v13, v14}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 740
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 743
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_1c

    .line 744
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 745
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    if-ge v13, v14, :cond_1c

    .line 746
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-nez v13, :cond_1c

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    invoke-direct {v0, v13, v8, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    invoke-direct {v0, v13, v9, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v13

    if-eqz v13, :cond_1b

    const/4 v13, 0x1

    goto :goto_a

    :cond_1b
    const/4 v13, 0x0

    .line 751
    .local v13, "similar":Z
    :goto_a
    if-eqz v13, :cond_1c

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 759
    return-void

    .line 764
    .end local v13    # "similar":Z
    :cond_1c
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v13, :cond_1d

    const/4 v13, 0x1

    goto :goto_b

    :cond_1d
    const/4 v13, 0x0

    .line 765
    .local v13, "horizontalMatchConstraints":Z
    :goto_b
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_1e

    const/4 v14, 0x1

    goto :goto_c

    :cond_1e
    const/4 v14, 0x0

    .line 767
    .local v14, "verticalMatchConstraints":Z
    :goto_c
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v15, :cond_20

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v15, 0x0

    goto :goto_e

    :cond_20
    :goto_d
    const/4 v15, 0x1

    .line 769
    .local v15, "verticalDimensionKnown":Z
    :goto_e
    move-object/from16 v16, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v16, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_22

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_21

    goto :goto_f

    :cond_21
    const/4 v4, 0x0

    goto :goto_10

    :cond_22
    :goto_f
    const/4 v4, 0x1

    .line 771
    .local v4, "horizontalDimensionKnown":Z
    :goto_10
    const/16 v17, 0x0

    if-eqz v13, :cond_23

    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_11

    .end local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_23
    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_24
    const/4 v3, 0x0

    .line 772
    .local v3, "horizontalUseRatio":Z
    :goto_11
    if-eqz v14, :cond_25

    move-object/from16 v19, v5

    .end local v5    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .local v19, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v17

    if-lez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_12

    .end local v19    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .restart local v5    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_25
    move-object/from16 v19, v5

    .end local v5    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .restart local v19    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_26
    const/4 v5, 0x0

    .line 774
    .local v5, "verticalUseRatio":Z
    :goto_12
    if-nez v12, :cond_27

    .line 775
    return-void

    .line 777
    :cond_27
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    move-object/from16 v6, v17

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 779
    .local v6, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 780
    .local v17, "width":I
    const/16 v21, 0x0

    .line 781
    .local v21, "height":I
    const/16 v22, 0x0

    .line 783
    .local v22, "baseline":I
    move/from16 v23, v7

    .end local v7    # "verticalDimension":I
    .local v23, "verticalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    move/from16 v24, v10

    .end local v10    # "heightPadding":I
    .local v24, "heightPadding":I
    sget v10, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v7, v10, :cond_29

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v10, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v7, v10, :cond_29

    if-eqz v13, :cond_29

    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_29

    if-eqz v14, :cond_29

    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v7, :cond_28

    goto :goto_13

    :cond_28
    move/from16 v27, v3

    move/from16 v25, v11

    move/from16 v0, v17

    move/from16 v11, v21

    move/from16 v3, v22

    goto/16 :goto_1b

    .line 788
    :cond_29
    :goto_13
    instance-of v7, v12, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v7, :cond_2a

    instance-of v7, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v7, :cond_2a

    .line 789
    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 790
    .local v7, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move-object v10, v12

    check-cast v10, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v10, v7, v8, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 791
    .end local v7    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_14

    .line 792
    :cond_2a
    invoke-virtual {v12, v8, v9}, Landroid/view/View;->measure(II)V

    .line 794
    :goto_14
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 796
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 797
    .local v7, "w":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 798
    .local v10, "h":I
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v22

    .line 800
    move/from16 v25, v7

    .line 801
    .end local v17    # "width":I
    .local v25, "width":I
    move/from16 v17, v10

    .line 808
    .end local v21    # "height":I
    .local v17, "height":I
    move/from16 v21, v8

    .end local v8    # "horizontalSpec":I
    .local v21, "horizontalSpec":I
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_2b

    .line 809
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v26, v9

    move/from16 v9, v25

    .end local v25    # "width":I
    .local v9, "width":I
    .local v26, "verticalSpec":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v9, v25

    .end local v9    # "width":I
    .restart local v25    # "width":I
    goto :goto_15

    .line 808
    .end local v26    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_2b
    move/from16 v26, v9

    move/from16 v9, v25

    .line 811
    .end local v25    # "width":I
    .local v9, "width":I
    .restart local v26    # "verticalSpec":I
    :goto_15
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_2c

    .line 812
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 814
    :cond_2c
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_2d

    .line 815
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v25, v11

    move/from16 v11, v17

    .end local v17    # "height":I
    .local v11, "height":I
    .local v25, "widthPadding":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v11, v17

    .end local v11    # "height":I
    .restart local v17    # "height":I
    goto :goto_16

    .line 814
    .end local v25    # "widthPadding":I
    .local v11, "widthPadding":I
    :cond_2d
    move/from16 v25, v11

    move/from16 v11, v17

    .line 817
    .end local v17    # "height":I
    .local v11, "height":I
    .restart local v25    # "widthPadding":I
    :goto_16
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_2e

    .line 818
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 821
    :cond_2e
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v8

    .line 822
    .local v8, "optimizeDirect":Z
    if-nez v8, :cond_30

    .line 823
    if-eqz v3, :cond_2f

    if-eqz v15, :cond_2f

    .line 824
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 825
    .local v0, "ratio":F
    move/from16 v27, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v27, "horizontalUseRatio":Z
    int-to-float v3, v11

    mul-float/2addr v3, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v0, v3

    .line 826
    .end local v9    # "width":I
    .local v0, "width":I
    move v9, v0

    goto :goto_17

    .line 823
    .end local v0    # "width":I
    .end local v27    # "horizontalUseRatio":Z
    .restart local v3    # "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_2f
    move/from16 v27, v3

    .line 826
    .end local v3    # "horizontalUseRatio":Z
    .restart local v27    # "horizontalUseRatio":Z
    if-eqz v5, :cond_31

    if-eqz v4, :cond_31

    .line 827
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 828
    .local v0, "ratio":F
    int-to-float v3, v9

    div-float/2addr v3, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    move v11, v3

    .end local v11    # "height":I
    .local v3, "height":I
    goto :goto_17

    .line 822
    .end local v0    # "ratio":F
    .end local v27    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v11    # "height":I
    :cond_30
    move/from16 v27, v3

    .line 832
    .end local v3    # "horizontalUseRatio":Z
    .restart local v27    # "horizontalUseRatio":Z
    :cond_31
    :goto_17
    if-ne v7, v9, :cond_33

    if-eq v10, v11, :cond_32

    goto :goto_18

    :cond_32
    move v0, v9

    move/from16 v8, v21

    move/from16 v3, v22

    move/from16 v9, v26

    goto :goto_1b

    .line 833
    :cond_33
    :goto_18
    if-eq v7, v9, :cond_34

    .line 834
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v21    # "horizontalSpec":I
    .local v3, "horizontalSpec":I
    goto :goto_19

    .line 833
    .end local v3    # "horizontalSpec":I
    .restart local v21    # "horizontalSpec":I
    :cond_34
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v3, v21

    .line 836
    .end local v21    # "horizontalSpec":I
    .restart local v3    # "horizontalSpec":I
    :goto_19
    if-eq v10, v11, :cond_35

    .line 837
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .end local v26    # "verticalSpec":I
    .local v0, "verticalSpec":I
    goto :goto_1a

    .line 836
    .end local v0    # "verticalSpec":I
    .restart local v26    # "verticalSpec":I
    :cond_35
    move/from16 v0, v26

    .line 839
    .end local v26    # "verticalSpec":I
    .restart local v0    # "verticalSpec":I
    :goto_1a
    invoke-virtual {v12, v3, v0}, Landroid/view/View;->measure(II)V

    .line 840
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 841
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 842
    .end local v9    # "width":I
    .local v17, "width":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 843
    .end local v11    # "height":I
    .local v21, "height":I
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v22

    move v9, v0

    move v8, v3

    move/from16 v0, v17

    move/from16 v11, v21

    move/from16 v3, v22

    .line 852
    .end local v7    # "w":I
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v21    # "height":I
    .end local v22    # "baseline":I
    .local v0, "width":I
    .local v3, "baseline":I
    .local v8, "horizontalSpec":I
    .local v9, "verticalSpec":I
    .restart local v11    # "height":I
    :goto_1b
    const/4 v7, -0x1

    if-eq v3, v7, :cond_36

    const/4 v7, 0x1

    goto :goto_1c

    :cond_36
    const/4 v7, 0x0

    .line 854
    .local v7, "hasBaseline":Z
    :goto_1c
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v10, :cond_38

    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v11, v10, :cond_37

    goto :goto_1d

    :cond_37
    const/4 v10, 0x0

    goto :goto_1e

    :cond_38
    :goto_1d
    const/4 v10, 0x1

    :goto_1e
    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 856
    iget-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v10, :cond_39

    .line 857
    const/4 v7, 0x1

    .line 859
    :cond_39
    if-eqz v7, :cond_3a

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v10

    if-eq v10, v3, :cond_3a

    .line 860
    const/4 v10, 0x1

    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 862
    :cond_3a
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 863
    iput v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 864
    iput-boolean v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 865
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 872
    return-void
.end method
