.class public Lorg/apache/log4j/lf5/viewer/LogTable;
.super Ljavax/swing/JTable;
.source "LogTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
    }
.end annotation


# instance fields
.field protected _colCategory:I

.field protected _colDate:I

.field protected _colLevel:I

.field protected _colLocation:I

.field protected _colMessage:I

.field protected _colMessageNum:I

.field protected _colNDC:I

.field protected _colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field protected _colThread:I

.field protected _colThrown:I

.field protected _colWidths:[I

.field protected _dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

.field protected _detailTextArea:Ljavax/swing/JTextArea;

.field protected _numCols:I

.field protected _rowHeight:I

.field protected _tableColumns:[Ljavax/swing/table/TableColumn;


# direct methods
.method public constructor <init>(Ljavax/swing/JTextArea;)V
    .locals 4
    .param p1, "detailTextArea"    # Ljavax/swing/JTextArea;

    .line 79
    invoke-direct {p0}, Ljavax/swing/JTable;-><init>()V

    .line 50
    const/16 v0, 0x1e

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    .line 54
    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    .line 55
    new-array v1, v0, [Ljavax/swing/table/TableColumn;

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colWidths:[I

    .line 57
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumnArray()[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessageNum:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colCategory:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    .line 65
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLocation:I

    .line 66
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThrown:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    .line 81
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->init()V

    .line 83
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    .line 85
    new-instance v0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/swing/JTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 87
    invoke-virtual {p0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/table/TableColumnModel;->getColumns()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    .local v0, "columns":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 89
    .local v1, "i":I
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v2

    .line 99
    .local v2, "rowSM":Ljavax/swing/ListSelectionModel;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;

    invoke-direct {v3, p0, p0}, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;-><init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V

    invoke-interface {v2, v3}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 102
    .end local v0    # "columns":Ljava/util/Enumeration;
    .end local v1    # "i":I
    .end local v2    # "rowSM":Ljavax/swing/ListSelectionModel;
    return-void

    .line 90
    .restart local v0    # "columns":Ljava/util/Enumeration;
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/table/TableColumn;

    .line 91
    .local v2, "col":Ljavax/swing/table/TableColumn;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;

    invoke-direct {v3}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/swing/table/TableColumn;->setCellRenderer(Ljavax/swing/table/TableCellRenderer;)V

    .line 92
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colWidths:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 94
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aput-object v2, v3, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x28
        0x28
        0x28
        0x46
        0x46
        0x168
        0x1b8
        0xc8
        0x3c
    .end array-data
.end method


# virtual methods
.method public declared-synchronized clearLogRecords()V
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lorg/apache/log4j/lf5/viewer/LogTable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getColumnNameAndNumber()Ljava/util/Vector;
    .locals 4

    .line 193
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 194
    .local v0, "columnNameAndNumber":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 197
    return-object v0

    .line 195
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    return-object v0
.end method

.method public getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    .locals 1

    .line 131
    invoke-virtual {p0}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    invoke-virtual {p0, v0}, Ljavax/swing/JTable;->setRowHeight(I)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 189
    return-void
.end method

.method public setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V
    .locals 0
    .param p1, "dfm"    # Lorg/apache/log4j/lf5/util/DateFormatManager;

    .line 119
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    .line 120
    return-void
.end method

.method public setDetailedView()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    .line 139
    .local v0, "model":Ljavax/swing/table/TableColumnModel;
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-lt v1, v2, :cond_1

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-lt v2, v3, :cond_0

    .line 147
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Ljavax/swing/JTable;->sizeColumnsToFit(I)V

    .line 148
    .end local v0    # "model":Ljavax/swing/table/TableColumnModel;
    .end local v1    # "f":I
    .end local v2    # "i":I
    return-void

    .line 144
    .restart local v0    # "model":Ljavax/swing/table/TableColumnModel;
    .restart local v1    # "f":I
    .restart local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljavax/swing/table/TableColumnModel;->addColumn(Ljavax/swing/table/TableColumn;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->removeColumn(Ljavax/swing/table/TableColumn;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 4
    .param p1, "font"    # Ljava/awt/Font;

    .line 169
    invoke-super {p0, p1}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    .line 170
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    .line 171
    .local v0, "g":Ljava/awt/Graphics;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Ljava/awt/Graphics;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    .line 173
    .local v1, "fm":Ljava/awt/FontMetrics;
    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v2

    .line 174
    .local v2, "height":I
    div-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    .line 175
    invoke-virtual {p0, v3}, Ljavax/swing/JTable;->setRowHeight(I)V

    .line 179
    .end local v0    # "g":Ljava/awt/Graphics;
    .end local v1    # "fm":Ljava/awt/FontMetrics;
    .end local v2    # "height":I
    :cond_0
    return-void
.end method

.method public setView(Ljava/util/List;)V
    .locals 6
    .param p1, "columns"    # Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    .line 154
    .local v0, "model":Ljavax/swing/table/TableColumnModel;
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-lt v1, v2, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 158
    .local v2, "selectedColumns":Ljava/util/Iterator;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getColumnNameAndNumber()Ljava/util/Vector;

    move-result-object v3

    .line 159
    .local v3, "columnNameAndNumber":Ljava/util/Vector;
    nop

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Ljavax/swing/JTable;->sizeColumnsToFit(I)V

    .line 166
    .end local v0    # "model":Ljavax/swing/table/TableColumnModel;
    .end local v1    # "f":I
    .end local v2    # "selectedColumns":Ljava/util/Iterator;
    .end local v3    # "columnNameAndNumber":Ljava/util/Vector;
    return-void

    .line 161
    .restart local v0    # "model":Ljavax/swing/table/TableColumnModel;
    .restart local v1    # "f":I
    .restart local v2    # "selectedColumns":Ljava/util/Iterator;
    .restart local v3    # "columnNameAndNumber":Ljava/util/Vector;
    :cond_0
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v0, v4}, Ljavax/swing/table/TableColumnModel;->addColumn(Ljavax/swing/table/TableColumn;)V

    goto :goto_1

    .line 155
    .end local v2    # "selectedColumns":Ljava/util/Iterator;
    .end local v3    # "columnNameAndNumber":Ljava/util/Vector;
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->removeColumn(Ljavax/swing/table/TableColumn;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
