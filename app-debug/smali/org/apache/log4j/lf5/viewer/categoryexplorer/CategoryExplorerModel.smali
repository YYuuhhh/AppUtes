.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
.super Ljavax/swing/tree/DefaultTreeModel;
.source "CategoryExplorerModel.java"


# instance fields
.field protected _event:Ljava/awt/event/ActionEvent;

.field protected _listener:Ljava/awt/event/ActionListener;

.field protected _renderFatal:Z


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 64
    invoke-direct {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    .line 51
    new-instance v0, Ljava/awt/event/ActionEvent;

    const/16 v1, 0x3e9

    const-string v2, "Nodes Selection changed"

    invoke-direct {v0, p0, v1, v2}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized addActionListener(Ljava/awt/event/ActionListener;)V
    .locals 1
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->add(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local p1    # "l":Ljava/awt/event/ActionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 10
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .line 189
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 190
    .local v0, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v1, v0

    .line 192
    .local v1, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 231
    return-object v1

    .line 193
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v3

    .line 196
    .local v3, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v4

    .line 198
    .local v4, "children":Ljava/util/Enumeration;
    const/4 v5, 0x0

    .line 199
    .local v5, "categoryAlreadyExists":Z
    nop

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 200
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 201
    .local v6, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "pathLC":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 205
    const/4 v5, 0x1

    .line 207
    move-object v1, v6

    .line 208
    nop

    .line 212
    .end local v6    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "pathLC":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_2

    .line 214
    new-instance v6, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;-><init>(Ljava/lang/String;)V

    .line 222
    .local v6, "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v7

    invoke-virtual {p0, v6, v1, v7}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 223
    invoke-virtual {p0, v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    .line 226
    move-object v1, v6

    .line 192
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .end local v4    # "children":Ljava/util/Enumeration;
    .end local v5    # "categoryAlreadyExists":Z
    .end local v6    # "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .restart local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .restart local v4    # "children":Ljava/util/Enumeration;
    .restart local v5    # "categoryAlreadyExists":Z
    .local v6, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "pathLC":Ljava/lang/String;
    :cond_3
    goto :goto_1
.end method

.method public addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 8
    .param p1, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .line 71
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 73
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    .line 74
    .local v1, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecord()V

    .line 75
    iget-boolean v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->isFatal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v2

    .line 77
    .local v2, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v3, v2

    .line 82
    .local v3, "len":I
    const/4 v4, 0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-lt v4, v6, :cond_0

    .line 87
    invoke-virtual {v1, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalRecords(Z)V

    .line 88
    invoke-virtual {p0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_1

    .line 83
    .end local v5    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    aget-object v5, v2, v4

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 84
    .restart local v5    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalChildren(Z)V

    .line 85
    invoke-virtual {p0, v5}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    .end local v1    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v2    # "nodes":[Ljavax/swing/tree/TreeNode;
    .end local v3    # "len":I
    .end local v4    # "i":I
    .end local v5    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1
    :goto_1
    return-void
.end method

.method public getCategoryNode(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-direct {v0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    return-object v1
.end method

.method public getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 10
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .line 105
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 106
    .local v0, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v1, v0

    .line 108
    .local v1, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 133
    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v3

    .line 112
    .local v3, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v4

    .line 114
    .local v4, "children":Ljava/util/Enumeration;
    const/4 v5, 0x0

    .line 115
    .local v5, "categoryAlreadyExists":Z
    nop

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 117
    .local v6, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "pathLC":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    const/4 v5, 0x1

    .line 123
    move-object v1, v6

    .line 124
    nop

    .line 128
    .end local v6    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "pathLC":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_2

    .line 129
    const/4 v6, 0x0

    return-object v6

    .line 108
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .end local v4    # "children":Ljava/util/Enumeration;
    .end local v5    # "categoryAlreadyExists":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .restart local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .restart local v4    # "children":Ljava/util/Enumeration;
    .restart local v5    # "categoryAlreadyExists":Z
    .restart local v6    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "pathLC":Ljava/lang/String;
    :cond_3
    goto :goto_1
.end method

.method public getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 1

    .line 93
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    return-object v0
.end method

.method public getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public isCategoryPathActive(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Z
    .locals 11
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .line 141
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 142
    .local v0, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v1, v0

    .line 143
    .local v1, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x0

    .line 145
    .local v2, "active":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 177
    return v2

    .line 146
    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v4

    .line 149
    .local v4, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v5

    .line 151
    .local v5, "children":Ljava/util/Enumeration;
    const/4 v6, 0x0

    .line 152
    .local v6, "categoryAlreadyExists":Z
    const/4 v2, 0x0

    .line 154
    nop

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 155
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 156
    .local v7, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "pathLC":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 160
    const/4 v6, 0x1

    .line 162
    move-object v1, v7

    .line 164
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 165
    const/4 v2, 0x1

    .line 172
    .end local v7    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "pathLC":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    if-nez v6, :cond_3

    goto :goto_3

    .line 145
    .end local v4    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .end local v5    # "children":Ljava/util/Enumeration;
    .end local v6    # "categoryAlreadyExists":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .restart local v4    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .restart local v5    # "children":Ljava/util/Enumeration;
    .restart local v6    # "categoryAlreadyExists":Z
    :cond_4
    :goto_3
    const/4 v7, 0x0

    return v7

    .line 159
    .restart local v7    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "pathLC":Ljava/lang/String;
    :cond_5
    goto :goto_1
.end method

.method protected notifyActionListeners()V
    .locals 2

    .line 313
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 316
    :cond_0
    return-void
.end method

.method protected refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 322
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public declared-synchronized removeActionListener(Ljava/awt/event/ActionListener;)V
    .locals 1
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->remove(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 282
    .end local p0    # "this":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local p1    # "l":Ljava/awt/event/ActionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetAllNodeCounts()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 289
    .local v0, "nodes":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .local v1, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    .end local v0    # "nodes":Ljava/util/Enumeration;
    .end local v1    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    return-void

    .line 290
    .restart local v0    # "nodes":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 291
    .restart local v1    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->resetNumberOfContainedRecords()V

    .line 292
    invoke-virtual {p0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_0
.end method

.method public setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .line 247
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 249
    .local v0, "descendants":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .local v1, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 258
    .end local v0    # "descendants":Ljava/util/Enumeration;
    .end local v1    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    return-void

    .line 250
    .restart local v0    # "descendants":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 252
    .restart local v1    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    if-eq v2, p2, :cond_1

    .line 253
    invoke-virtual {v1, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 254
    invoke-virtual {p0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_0

    .line 252
    :cond_1
    goto :goto_0
.end method

.method public setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 5
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .line 261
    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v0

    .line 262
    .local v0, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v1, v0

    .line 267
    .local v1, "len":I
    const/4 v2, 0x1

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :goto_0
    if-lt v2, v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 275
    .end local v0    # "nodes":[Ljavax/swing/tree/TreeNode;
    .end local v1    # "len":I
    .end local v2    # "i":I
    .end local v3    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    return-void

    .line 268
    .restart local v0    # "nodes":[Ljavax/swing/tree/TreeNode;
    .restart local v1    # "len":I
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 269
    .restart local v3    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v4

    if-eq v4, p2, :cond_1

    .line 270
    invoke-virtual {v3, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 271
    invoke-virtual {p0, v3}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public update(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 1
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .line 235
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    if-eqz p2, :cond_1

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    .line 244
    :goto_0
    return-void
.end method
