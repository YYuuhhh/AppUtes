.class public Lorg/apache/log4j/lf5/viewer/LogTableModel;
.super Ljavax/swing/table/DefaultTableModel;
.source "LogTableModel.java"


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "colNames"    # [Ljava/lang/Object;
    .param p2, "numRows"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Ljavax/swing/table/DefaultTableModel;-><init>([Ljava/lang/Object;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public isCellEditable(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 55
    const/4 v0, 0x0

    return v0
.end method
