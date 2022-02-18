.class Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
.super Ljava/lang/Object;
.source "LogTable.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/lf5/viewer/LogTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogTableListSelectionListener"
.end annotation


# instance fields
.field protected _table:Ljavax/swing/JTable;

.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/lf5/viewer/LogTable;
    .param p2, "table"    # Ljavax/swing/JTable;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 212
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    .line 213
    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 8
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .line 217
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/ListSelectionModel;

    .line 222
    .local v0, "lsm":Ljavax/swing/ListSelectionModel;
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v2

    .line 228
    .local v2, "selectedRow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v4, v4, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_3

    .line 254
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v5, v5, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v4}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v5, v5, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v2, v5}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v4

    .line 256
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_2
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v5, v5, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 262
    .end local v0    # "lsm":Ljavax/swing/ListSelectionModel;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "selectedRow":I
    .end local v3    # "i":I
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_1
    return-void

    .line 229
    .restart local v0    # "lsm":Ljavax/swing/ListSelectionModel;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "selectedRow":I
    .restart local v3    # "i":I
    :cond_3
    const-string v4, ""

    .line 230
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v5}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v5

    .line 231
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 232
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v6, "\t"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    if-eq v3, v7, :cond_5

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    if-eq v3, v7, :cond_5

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    if-ne v3, v7, :cond_6

    .line 239
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_6
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    if-eq v3, v6, :cond_7

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    if-ne v3, v6, :cond_8

    .line 243
    :cond_7
    const-string v6, "\t\t"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
