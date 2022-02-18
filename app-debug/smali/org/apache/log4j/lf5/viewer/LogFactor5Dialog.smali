.class public abstract Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.super Ljavax/swing/JDialog;
.source "LogFactor5Dialog.java"


# static fields
.field protected static final DISPLAY_FONT:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    return-void
.end method

.method protected constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "modal"    # Z

    .line 47
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected centerWindow(Ljava/awt/Window;)V
    .locals 4
    .param p1, "win"    # Ljava/awt/Window;

    .line 68
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 71
    .local v0, "screenDim":Ljava/awt/Dimension;
    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->width:I

    if-ge v1, v2, :cond_0

    .line 72
    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v1, v2}, Ljava/awt/Component;->setSize(II)V

    .line 75
    :cond_0
    iget v1, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    if-ge v1, v2, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->width:I

    iget v2, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v1, v2}, Ljava/awt/Component;->setSize(II)V

    .line 80
    :cond_1
    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 81
    .local v1, "x":I
    iget v2, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v3

    iget v3, v3, Ljava/awt/Dimension;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 82
    .local v2, "y":I
    invoke-virtual {p1, v1, v2}, Ljava/awt/Component;->setLocation(II)V

    .line 83
    .end local v0    # "screenDim":Ljava/awt/Dimension;
    .end local v1    # "x":I
    .end local v2    # "y":I
    return-void
.end method

.method protected getDefaultConstraints()Ljava/awt/GridBagConstraints;
    .locals 3

    .line 112
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 113
    .local v0, "constraints":Ljava/awt/GridBagConstraints;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 114
    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 115
    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 117
    new-instance v1, Ljava/awt/Insets;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v2, v2, v2}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 119
    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 121
    const/16 v1, 0x11

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 123
    return-object v0
.end method

.method protected minimumSizeDialog(Ljava/awt/Component;II)V
    .locals 1
    .param p1, "component"    # Ljava/awt/Component;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .line 130
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    if-ge v0, p2, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, p2, v0}, Ljava/awt/Component;->setSize(II)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    if-ge v0, p3, :cond_1

    .line 134
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1, v0, p3}, Ljava/awt/Component;->setSize(II)V

    .line 135
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    .line 55
    const/16 v0, 0xc8

    const/16 v1, 0x64

    invoke-virtual {p0, p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->minimumSizeDialog(Ljava/awt/Component;II)V

    .line 56
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->centerWindow(Ljava/awt/Window;)V

    .line 57
    invoke-super {p0}, Ljava/awt/Dialog;->show()V

    .line 58
    return-void
.end method

.method protected wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "container"    # Ljava/awt/Container;

    .line 87
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->getDefaultConstraints()Ljava/awt/GridBagConstraints;

    move-result-object v0

    .line 88
    .local v0, "c":Ljava/awt/GridBagConstraints;
    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 90
    new-instance v2, Ljava/awt/Insets;

    invoke-direct {v2, v1, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v2, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 91
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v2

    check-cast v2, Ljava/awt/GridBagLayout;

    .line 94
    .local v2, "gbLayout":Ljava/awt/GridBagLayout;
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 109
    .end local v0    # "c":Ljava/awt/GridBagConstraints;
    .end local v2    # "gbLayout":Ljava/awt/GridBagLayout;
    return-void

    .line 95
    .restart local v0    # "c":Ljava/awt/GridBagConstraints;
    .restart local v2    # "gbLayout":Ljava/awt/GridBagLayout;
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 97
    .local v4, "newLineIndex":I
    if-ltz v4, :cond_1

    .line 98
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "line":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 101
    :cond_1
    move-object v3, p1

    .line 102
    const-string p1, ""

    .line 104
    :goto_1
    new-instance v5, Ljava/awt/Label;

    invoke-direct {v5, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, "label":Ljava/awt/Label;
    sget-object v6, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    invoke-virtual {v5, v6}, Ljava/awt/Component;->setFont(Ljava/awt/Font;)V

    .line 106
    invoke-virtual {v2, v5, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 107
    invoke-virtual {p2, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0
.end method
