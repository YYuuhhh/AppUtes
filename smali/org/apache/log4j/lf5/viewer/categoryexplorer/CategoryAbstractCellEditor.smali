.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;
.super Ljava/lang/Object;
.source "CategoryAbstractCellEditor.java"

# interfaces
.implements Ljavax/swing/table/TableCellEditor;
.implements Ljavax/swing/tree/TreeCellEditor;


# static fields
.field static synthetic class$javax$swing$event$CellEditorListener:Ljava/lang/Class;


# instance fields
.field protected _changeEvent:Ljavax/swing/event/ChangeEvent;

.field protected _clickCountToStart:I

.field protected _listenerList:Ljavax/swing/event/EventListenerList;

.field protected _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    .line 38
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2
    .param p1, "l"    # Ljavax/swing/event/CellEditorListener;

    .line 108
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.swing.event.CellEditorListener"

    invoke-static {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 109
    return-void
.end method

.method public cancelCellEditing()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingCanceled()V

    .line 105
    return-void
.end method

.method protected fireEditingCanceled()V
    .locals 4

    .line 148
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "listeners":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 159
    .end local v0    # "listeners":[Ljava/lang/Object;
    .end local v1    # "i":I
    return-void

    .line 151
    .restart local v0    # "listeners":[Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v0, v1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "javax.swing.event.CellEditorListener"

    invoke-static {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_1
    if-ne v2, v3, :cond_3

    .line 152
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_2

    .line 153
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 156
    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    .line 150
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0
.end method

.method protected fireEditingStopped()V
    .locals 4

    .line 134
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "listeners":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 145
    .end local v0    # "listeners":[Ljava/lang/Object;
    .end local v1    # "i":I
    return-void

    .line 137
    .restart local v0    # "listeners":[Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v0, v1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "javax.swing.event.CellEditorListener"

    invoke-static {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_1
    if-ne v2, v3, :cond_3

    .line 138
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_2

    .line 139
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 142
    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    .line 136
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getClickCountToStart()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return v0
.end method

.method public getTableCellEditorComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .locals 1
    .param p1, "table"    # Ljavax/swing/JTable;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "row"    # I
    .param p5, "column"    # I

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTreeCellEditorComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .locals 2
    .param p1, "anEvent"    # Ljava/util/EventObject;

    .line 80
    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/awt/event/MouseEvent;

    invoke-virtual {v0}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-ge v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2
    .param p1, "l"    # Ljavax/swing/event/CellEditorListener;

    .line 112
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.swing.event.CellEditorListener"

    invoke-static {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 113
    return-void
.end method

.method public setCellEditorValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setClickCountToStart(I)V
    .locals 0
    .param p1, "count"    # I

    .line 72
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    .line 73
    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 2
    .param p1, "anEvent"    # Ljava/util/EventObject;

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->isCellEditable(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/awt/event/MouseEvent;

    invoke-virtual {v0}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-lt v0, v1, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public stopCellEditing()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingStopped()V

    .line 100
    const/4 v0, 0x1

    return v0
.end method
