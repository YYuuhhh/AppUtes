.class public Lcom/example/theapp/PointerPopupWindow;
.super Landroid/widget/PopupWindow;
.source "PointerPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/theapp/PointerPopupWindow$AlignMode;
    }
.end annotation


# instance fields
.field private mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

.field private mAnchorImage:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/FrameLayout;

.field private mMarginScreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I

    .line 24
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/example/theapp/PointerPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 28
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 21
    sget-object v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;->DEFAULT:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    iput-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 29
    if-ltz p2, :cond_0

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContainer:Landroid/widget/LinearLayout;

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContent:Landroid/widget/FrameLayout;

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/example/theapp/PointerPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/example/theapp/PointerPopupWindow;->setOutsideTouchable(Z)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/example/theapp/PointerPopupWindow;->setFocusable(Z)V

    .line 39
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WidthError"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computePointerLocation(Landroid/view/View;I)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 132
    .local v0, "aw":I
    iget-object v1, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 133
    .local v1, "dw":I
    iget-object v2, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 134
    return-void
.end method


# virtual methods
.method public getAlignMode()Lcom/example/theapp/PointerPopupWindow$AlignMode;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    return-object v0
.end method

.method public getMarginScreen()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/example/theapp/PointerPopupWindow;->mMarginScreen:I

    return v0
.end method

.method public getOffsetMode()Lcom/example/theapp/PointerPopupWindow$AlignMode;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    return-object v0
.end method

.method public setAlignMode(Lcom/example/theapp/PointerPopupWindow$AlignMode;)V
    .locals 0
    .param p1, "mAlignMode"    # Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 46
    iput-object p1, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 47
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 137
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 138
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 82
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/example/theapp/PointerPopupWindow;->mContent:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 83
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 84
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mContainer:Landroid/widget/LinearLayout;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setMarginScreen(I)V
    .locals 0
    .param p1, "marginScreen"    # I

    .line 62
    iput p1, p0, Lcom/example/theapp/PointerPopupWindow;->mMarginScreen:I

    .line 63
    return-void
.end method

.method public setOffsetMode(Lcom/example/theapp/PointerPopupWindow$AlignMode;)V
    .locals 0
    .param p1, "mAlignMode"    # Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 54
    iput-object p1, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 55
    return-void
.end method

.method public setPointerImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method

.method public setPointerImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public setPointerImageRes(I)V
    .locals 1
    .param p1, "res"    # I

    .line 70
    iget-object v0, p0, Lcom/example/theapp/PointerPopupWindow;->mAnchorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    return-void
.end method

.method public showAsPointer(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/example/theapp/PointerPopupWindow;->showAsPointer(Landroid/view/View;II)V

    .line 97
    return-void
.end method

.method public showAsPointer(Landroid/view/View;I)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yoff"    # I

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/example/theapp/PointerPopupWindow;->showAsPointer(Landroid/view/View;II)V

    .line 101
    return-void
.end method

.method public showAsPointer(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 107
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 108
    .local v1, "displayFrameWidth":I
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 109
    .local v3, "loc":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 110
    iget-object v4, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    sget-object v5, Lcom/example/theapp/PointerPopupWindow$AlignMode;->AUTO_OFFSET:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    aget v5, v3, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 113
    .local v4, "offCenterRate":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/example/theapp/PointerPopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {p0}, Lcom/example/theapp/PointerPopupWindow;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int p2, v2

    .end local v4    # "offCenterRate":F
    goto :goto_0

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/example/theapp/PointerPopupWindow;->mAlignMode:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    sget-object v5, Lcom/example/theapp/PointerPopupWindow$AlignMode;->AUTO_OFFSET:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    sget-object v5, Lcom/example/theapp/PointerPopupWindow$AlignMode;->CENTER_FIX:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    if-ne v4, v5, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/example/theapp/PointerPopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 p2, v4, 0x2

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    nop

    .line 117
    :goto_1
    aget v2, v3, v6

    add-int/2addr v2, p2

    .line 118
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/example/theapp/PointerPopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 120
    .local v4, "right":I
    iget v5, p0, Lcom/example/theapp/PointerPopupWindow;->mMarginScreen:I

    sub-int v7, v1, v5

    if-le v4, v7, :cond_2

    .line 121
    sub-int v5, v1, v5

    invoke-virtual {p0}, Lcom/example/theapp/PointerPopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    aget v7, v3, v6

    sub-int p2, v5, v7

    .line 123
    :cond_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/example/theapp/PointerPopupWindow;->mMarginScreen:I

    add-int/2addr v5, v7

    if-ge v2, v5, :cond_3

    .line 124
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/example/theapp/PointerPopupWindow;->mMarginScreen:I

    add-int/2addr v5, v7

    aget v6, v3, v6

    sub-int p2, v5, v6

    .line 126
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/example/theapp/PointerPopupWindow;->computePointerLocation(Landroid/view/View;I)V

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 128
    return-void
.end method
