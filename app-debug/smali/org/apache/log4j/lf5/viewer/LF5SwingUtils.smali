.class public Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;
.super Ljava/lang/Object;
.source "LF5SwingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static contains(ILjavax/swing/table/TableModel;)Z
    .locals 2
    .param p0, "row"    # I
    .param p1, "model"    # Ljavax/swing/table/TableModel;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    if-gez p0, :cond_1

    .line 106
    return v0

    .line 108
    :cond_1
    invoke-interface {p1}, Ljavax/swing/table/TableModel;->getRowCount()I

    move-result v1

    if-lt p0, v1, :cond_2

    .line 109
    return v0

    .line 111
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static makeScrollBarTrack(Ljava/awt/Adjustable;)V
    .locals 1
    .param p0, "scrollBar"    # Ljava/awt/Adjustable;

    .line 80
    if-nez p0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;-><init>()V

    invoke-interface {p0, v0}, Ljava/awt/Adjustable;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    .line 84
    return-void
.end method

.method public static makeVerticalScrollBarTrack(Ljavax/swing/JScrollPane;)V
    .locals 1
    .param p0, "pane"    # Ljavax/swing/JScrollPane;

    .line 92
    if-nez p0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->makeScrollBarTrack(Ljava/awt/Adjustable;)V

    .line 96
    return-void
.end method

.method protected static moveAdjustable(ILjava/awt/Adjustable;)V
    .locals 0
    .param p0, "location"    # I
    .param p1, "scrollBar"    # Ljava/awt/Adjustable;

    .line 122
    if-nez p1, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-interface {p1, p0}, Ljava/awt/Adjustable;->setValue(I)V

    .line 126
    return-void
.end method

.method protected static repaintLater(Ljavax/swing/JComponent;)V
    .locals 1
    .param p0, "component"    # Ljavax/swing/JComponent;

    .line 133
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;-><init>(Ljavax/swing/JComponent;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public static selectRow(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V
    .locals 2
    .param p0, "row"    # I
    .param p1, "table"    # Ljavax/swing/JTable;
    .param p2, "pane"    # Ljavax/swing/JScrollPane;

    .line 61
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->contains(ILjavax/swing/table/TableModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljavax/swing/JTable;->getRowHeight()I

    move-result v0

    mul-int/2addr v0, p0

    invoke-virtual {p2}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->moveAdjustable(ILjava/awt/Adjustable;)V

    .line 68
    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->selectRow(ILjavax/swing/ListSelectionModel;)V

    .line 72
    invoke-static {p1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->repaintLater(Ljavax/swing/JComponent;)V

    .line 73
    return-void

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method protected static selectRow(ILjavax/swing/ListSelectionModel;)V
    .locals 0
    .param p0, "row"    # I
    .param p1, "model"    # Ljavax/swing/ListSelectionModel;

    .line 115
    if-nez p1, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-interface {p1, p0, p0}, Ljavax/swing/ListSelectionModel;->setSelectionInterval(II)V

    .line 119
    return-void
.end method
