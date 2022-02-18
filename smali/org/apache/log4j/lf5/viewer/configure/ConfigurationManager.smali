.class public Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# static fields
.field private static final BLUE:Ljava/lang/String; = "blue"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COLOR:Ljava/lang/String; = "color"

.field private static final COLORLEVEL:Ljava/lang/String; = "colorlevel"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "lf5_configuration.xml"

.field private static final EXPANDED:Ljava/lang/String; = "expanded"

.field private static final FIRST_CATEGORY_NAME:Ljava/lang/String; = "Categories"

.field private static final GREEN:Ljava/lang/String; = "green"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NDCTEXTFILTER:Ljava/lang/String; = "searchtext"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final RED:Ljava/lang/String; = "red"

.field private static final SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private _table:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogTable;)V
    .locals 1
    .param p1, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .param p2, "table"    # Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 82
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 89
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 90
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 91
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->load()V

    .line 92
    return-void
.end method

.method private closeConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .line 417
    const-string v0, "</configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    return-void
.end method

.method private exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/awt/Color;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .line 438
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "colorlevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v1, "red"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v1, "green"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v1, "blue"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 443
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    return-void
.end method

.method private exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "selected"    # Z
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .line 431
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v1, "selected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 434
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    return-void
.end method

.method private exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "selected"    # Z
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .line 447
    const-string v0, "\t\t<"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const-string v1, "selected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 450
    const-string v0, "\"/>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    return-void
.end method

.method private exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "path"    # Ljavax/swing/tree/TreePath;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .line 421
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    .line 423
    .local v0, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    const-string v1, "\t<"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, "name"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\" "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v1, "path"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const-string v1, "expanded"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljavax/swing/JTree;->isExpanded(Ljavax/swing/tree/TreePath;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v1, "selected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"/>\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    .end local v0    # "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    return-void
.end method

.method private openConfigurationXML(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .line 413
    const-string v0, "<configuration>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    return-void
.end method

.method private openXMLDocument(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/StringBuffer;

    .line 409
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method private processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .line 350
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    .line 352
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 353
    .local v1, "all":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 354
    .local v2, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    .end local v0    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local v1    # "all":Ljava/util/Enumeration;
    .end local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    return-void

    .line 355
    .restart local v0    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .restart local v1    # "all":Ljava/util/Enumeration;
    .restart local v2    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 356
    invoke-virtual {v0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportXMLElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljavax/swing/tree/TreePath;Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method private processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "logLevelMenuItems"    # Ljava/util/Map;
    .param p2, "logLevelColors"    # Ljava/util/Map;
    .param p3, "xml"    # Ljava/lang/StringBuffer;

    .line 374
    const-string v0, "\t<loglevelcolors>\r\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    .local v0, "it":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const-string v1, "\t</loglevelcolors>\r\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    .end local v0    # "it":Ljava/util/Iterator;
    return-void

    .line 378
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 380
    .local v1, "level":Lorg/apache/log4j/lf5/LogLevel;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Color;

    .line 381
    .local v2, "color":Ljava/awt/Color;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelColorXMLElement(Ljava/lang/String;Ljava/awt/Color;Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method private processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "logLevelMenuItems"    # Ljava/util/Map;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .line 362
    const-string v0, "\t<loglevels>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    .local v0, "it":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "\t</loglevels>\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    .end local v0    # "it":Ljava/util/Iterator;
    return-void

    .line 365
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 366
    .local v1, "level":Lorg/apache/log4j/lf5/LogLevel;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/JCheckBoxMenuItem;

    .line 367
    .local v2, "item":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogLevelXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method private processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .line 403
    const-string v0, "\t<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "searchtext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v0, "/>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    return-void
.end method

.method private processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "logTableColumnMenuItems"    # Ljava/util/List;
    .param p2, "xml"    # Ljava/lang/StringBuffer;

    .line 389
    const-string v0, "\t<logtablecolumns>\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    .local v0, "it":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, "\t</logtablecolumns>\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    .end local v0    # "it":Ljava/util/Iterator;
    return-void

    .line 392
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 393
    .local v1, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    .line 394
    .local v2, "item":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->exportLogTableColumnXMLElement(Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public static treePathToString(Ljavax/swing/tree/TreePath;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljavax/swing/tree/TreePath;

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 124
    .local v1, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {p0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 126
    :cond_0
    aget-object v4, v2, v3

    move-object v1, v4

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 127
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 128
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected collapseTree()V
    .locals 2

    .line 297
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    .line 298
    .local v0, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    invoke-virtual {v0}, Ljavax/swing/JTree;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    .line 301
    .end local v0    # "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .end local v1    # "i":I
    return-void

    .line 299
    .restart local v0    # "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->collapseRow(I)V

    .line 298
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected deleteConfigurationFile()V
    .locals 4

    .line 329
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " because a security violation occured."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method protected getFilename()Ljava/lang/String;
    .locals 4

    .line 340
    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "home":Ljava/lang/String;
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5_configuration.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "map"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "attr"    # Ljava/lang/String;

    .line 291
    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 292
    .local v0, "n":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected load()V
    .locals 5

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 144
    .local v1, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 145
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 146
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processRecordFilter(Lorg/w3c/dom/Document;)V

    .line 147
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processCategories(Lorg/w3c/dom/Document;)V

    .line 148
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Lorg/w3c/dom/Document;)V

    .line 149
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Lorg/w3c/dom/Document;)V

    .line 150
    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable process configuration file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". Error Message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected processCategories(Lorg/w3c/dom/Document;)V
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 187
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    .line 188
    .local v0, "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    .line 189
    .local v1, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 192
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 193
    .local v3, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "name"

    invoke-virtual {p0, v3, v4}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Categories"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 196
    .local v4, "j":I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 205
    .end local v0    # "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .end local v1    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "j":I
    .end local v5    # "i":I
    return-void

    .line 197
    .restart local v0    # "tree":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .restart local v1    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .restart local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v3    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    :cond_0
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 198
    .local v6, "n":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 199
    new-instance v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    const-string v8, "path"

    invoke-virtual {p0, v3, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v7

    .line 200
    .local v7, "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const-string v8, "selected"

    invoke-virtual {p0, v3, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 201
    const-string v8, "expanded"

    invoke-virtual {p0, v3, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 202
    invoke-virtual {v1, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    .line 196
    .end local v6    # "n":Lorg/w3c/dom/Node;
    .end local v7    # "chnode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method protected processLogLevelColors(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 226
    const-string v0, "colorlevel"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 227
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    move-result-object v1

    .line 229
    .local v1, "logLevelColors":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 253
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v1    # "logLevelColors":Ljava/util/Map;
    .end local v2    # "i":I
    return-void

    .line 230
    .restart local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v1    # "logLevelColors":Ljava/util/Map;
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 233
    .local v3, "n":Lorg/w3c/dom/Node;
    if-nez v3, :cond_1

    .line 234
    return-void

    .line 237
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 238
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "name"

    invoke-virtual {p0, v4, v5}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v6

    .line 241
    .local v6, "level":Lorg/apache/log4j/lf5/LogLevel;
    const-string v7, "red"

    invoke-virtual {p0, v4, v7}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, "red":I
    const-string v8, "green"

    invoke-virtual {p0, v4, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 243
    .local v8, "green":I
    const-string v9, "blue"

    invoke-virtual {p0, v4, v9}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 244
    .local v9, "blue":I
    new-instance v10, Ljava/awt/Color;

    invoke-direct {v10, v7, v8, v9}, Ljava/awt/Color;-><init>(III)V

    .line 245
    .local v10, "c":Ljava/awt/Color;
    if-eqz v6, :cond_2

    .line 246
    invoke-virtual {v6, v6, v10}, Lorg/apache/log4j/lf5/LogLevel;->setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    .end local v6    # "level":Lorg/apache/log4j/lf5/LogLevel;
    .end local v7    # "red":I
    .end local v8    # "green":I
    .end local v9    # "blue":I
    .end local v10    # "c":Ljava/awt/Color;
    :catch_0
    move-exception v6

    :cond_2
    :goto_1
    nop

    .line 229
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected processLogLevels(Lorg/w3c/dom/Document;)V
    .locals 9
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 208
    const-string v0, "level"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 209
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v1

    .line 211
    .local v1, "menuItems":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 223
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v1    # "menuItems":Ljava/util/Map;
    .end local v2    # "i":I
    return-void

    .line 212
    .restart local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v1    # "menuItems":Ljava/util/Map;
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 213
    .local v3, "n":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 214
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "name"

    invoke-virtual {p0, v4, v5}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/swing/JCheckBoxMenuItem;

    .line 218
    .local v6, "item":Ljavax/swing/JCheckBoxMenuItem;
    const-string v7, "selected"

    invoke-virtual {p0, v4, v7}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/swing/AbstractButton;->setSelected(Z)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "item":Ljavax/swing/JCheckBoxMenuItem;
    goto :goto_1

    .line 219
    :catch_0
    move-exception v6

    :goto_1
    nop

    .line 211
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected processLogTableColumns(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 256
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 257
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItems()Ljava/util/Map;

    move-result-object v1

    .line 258
    .local v1, "menuItems":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, "selectedColumns":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 288
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v1    # "menuItems":Ljava/util/Map;
    .end local v2    # "selectedColumns":Ljava/util/List;
    .end local v3    # "i":I
    return-void

    .line 260
    .restart local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v1    # "menuItems":Ljava/util/Map;
    .restart local v2    # "selectedColumns":Ljava/util/List;
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 263
    .local v4, "n":Lorg/w3c/dom/Node;
    if-nez v4, :cond_1

    .line 264
    return-void

    .line 266
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 267
    .local v5, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    move-result-object v7

    .line 270
    .local v7, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/swing/JCheckBoxMenuItem;

    .line 272
    .local v8, "item":Ljavax/swing/JCheckBoxMenuItem;
    const-string v9, "selected"

    invoke-virtual {p0, v5, v9}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    .line 274
    invoke-virtual {v8}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 275
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    .end local v7    # "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .end local v8    # "item":Ljavax/swing/JCheckBoxMenuItem;
    :catch_0
    move-exception v7

    :cond_2
    :goto_1
    nop

    .line 281
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 282
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v7}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDetailedView()V

    goto :goto_2

    .line 284
    :cond_3
    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v7, v2}, Lorg/apache/log4j/lf5/viewer/LogTable;->setView(Ljava/util/List;)V

    .line 259
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .end local v5    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected processRecordFilter(Lorg/w3c/dom/Document;)V
    .locals 5
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 167
    const-string v0, "searchtext"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 170
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 173
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 178
    .local v2, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v4, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCLogRecordFilter(Ljava/lang/String;)V

    .line 184
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v1    # "n":Lorg/w3c/dom/Node;
    .end local v2    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "text":Ljava/lang/String;
    return-void

    .line 181
    .restart local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v1    # "n":Lorg/w3c/dom/Node;
    .restart local v2    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->deleteConfigurationFile()V

    .line 116
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->collapseTree()V

    .line 117
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->selectAllNodes()V

    .line 118
    return-void
.end method

.method public save()V
    .locals 5

    .line 98
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    .line 99
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    .line 101
    .local v1, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 102
    .local v2, "xml":Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openXMLDocument(Ljava/lang/StringBuffer;)V

    .line 103
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->openConfigurationXML(Ljava/lang/StringBuffer;)V

    .line 104
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getNDCTextFilter()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogRecordFilter(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 105
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevels(Ljava/util/Map;Ljava/lang/StringBuffer;)V

    .line 106
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevelMenuItems()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLogLevelColorMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogLevelColors(Ljava/util/Map;Ljava/util/Map;Ljava/lang/StringBuffer;)V

    .line 108
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumns()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processLogTableColumns(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 109
    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->processConfigurationNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Ljava/lang/StringBuffer;)V

    .line 110
    invoke-direct {p0, v2}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->closeConfigurationXML(Ljava/lang/StringBuffer;)V

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->store(Ljava/lang/String;)V

    .line 112
    .end local v0    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local v1    # "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v2    # "xml":Ljava/lang/StringBuffer;
    return-void
.end method

.method protected selectAllNodes()V
    .locals 5

    .line 304
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    .line 305
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    .line 306
    .local v1, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    .line 307
    .local v2, "all":Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 308
    .local v3, "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 312
    .end local v0    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .end local v1    # "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v2    # "all":Ljava/util/Enumeration;
    .end local v3    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    return-void

    .line 309
    .restart local v0    # "model":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .restart local v1    # "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .restart local v2    # "all":Ljava/util/Enumeration;
    .restart local v3    # "n":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 310
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    goto :goto_0
.end method

.method protected store(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 317
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 318
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
