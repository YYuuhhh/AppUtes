.class public Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;
    }
.end annotation


# static fields
.field public static final DETAILED_VIEW:Ljava/lang/String; = "Detailed"


# instance fields
.field protected _NDCTextFilter:Ljava/lang/String;

.field protected _callSystemExitOnClose:Z

.field protected _categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

.field protected _columns:Ljava/util/List;

.field protected _configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

.field protected _currentView:Ljava/lang/String;

.field protected _displayedLogBrokerProperties:Ljava/util/List;

.field protected _fileLocation:Ljava/io/File;

.field protected _fontName:Ljava/lang/String;

.field protected _fontSize:I

.field protected _fontSizeCombo:Ljavax/swing/JComboBox;

.field protected _isDisposed:Z

.field protected _lastTableViewportSize:Ljava/awt/Dimension;

.field protected _leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

.field protected _levels:Ljava/util/List;

.field protected _loadSystemFonts:Z

.field protected _lock:Ljava/lang/Object;

.field protected _logLevelMenuItems:Ljava/util/Map;

.field protected _logMonitorFrame:Ljavax/swing/JFrame;

.field protected _logMonitorFrameHeight:I

.field protected _logMonitorFrameWidth:I

.field protected _logTableColumnMenuItems:Ljava/util/Map;

.field protected _logTableScrollPane:Ljavax/swing/JScrollPane;

.field protected _mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

.field protected _searchText:Ljava/lang/String;

.field protected _statusLabel:Ljavax/swing/JLabel;

.field protected _table:Lorg/apache/log4j/lf5/viewer/LogTable;

.field protected _trackTableScrollPane:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1, "logLevels"    # Ljava/util/List;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x226

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    .line 69
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 74
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_lock:Ljava/lang/Object;

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 82
    const-string v0, "Dialog"

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    .line 83
    const-string v0, "Detailed"

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_loadSystemFonts:Z

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_trackTableScrollPane:Z

    .line 88
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 89
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    .line 95
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    .line 96
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    .line 98
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    .line 99
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    .line 100
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    .line 115
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    .line 116
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumns()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    .line 120
    const-string v0, "monitor.exit"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "callSystemExitOnClose":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 123
    const-string v0, "false"

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->initComponents()V

    .line 134
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;

    invoke-direct {v2, p0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v2}, Ljava/awt/Window;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 137
    .end local v0    # "callSystemExitOnClose":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public addDisplayedProperty(Ljava/lang/Object;)V
    .locals 1
    .param p1, "messageLine"    # Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addMessage(Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 2
    .param p1, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .line 220
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/LogRecord;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method protected addTableModelProperties()V
    .locals 2

    .line 623
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    .line 625
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addDisplayedProperty(Ljava/lang/Object;)V

    .line 630
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$6;

    invoke-direct {v1, p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$6;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addDisplayedProperty(Ljava/lang/Object;)V

    .line 636
    .end local v0    # "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    return-void
.end method

.method protected centerFrame(Ljavax/swing/JFrame;)V
    .locals 5
    .param p1, "frame"    # Ljavax/swing/JFrame;

    .line 1374
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 1375
    .local v0, "screen":Ljava/awt/Dimension;
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 1377
    .local v1, "comp":Ljava/awt/Dimension;
    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Ljava/awt/Dimension;->height:I

    iget v4, v1, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/awt/Component;->setLocation(II)V

    .line 1380
    .end local v0    # "screen":Ljava/awt/Dimension;
    .end local v1    # "comp":Ljava/awt/Dimension;
    return-void
.end method

.method protected changeFontSizeCombo(Ljavax/swing/JComboBox;I)I
    .locals 6
    .param p1, "box"    # Ljavax/swing/JComboBox;
    .param p2, "requestedSize"    # I

    .line 434
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v0

    .line 437
    .local v0, "len":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "selectedObject":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 439
    .local v3, "selectedValue":I
    const/4 v4, 0x0

    .local v1, "currentValue":I
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "currentObject":Ljava/lang/Object;
    :goto_0
    if-lt v4, v0, :cond_0

    .line 447
    invoke-virtual {p1, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 448
    return v3

    .line 440
    .end local v1    # "currentValue":I
    .end local v5    # "currentObject":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, v4}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 441
    .restart local v5    # "currentObject":Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 442
    .restart local v1    # "currentValue":I
    if-ge v3, v1, :cond_1

    if-gt v1, p2, :cond_1

    .line 443
    move v3, v1

    .line 444
    move-object v2, v5

    .line 439
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected clearDetailTextArea()V
    .locals 2

    .line 425
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method protected closeAfterConfirm()V
    .locals 8

    .line 1487
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1489
    .local v0, "message":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    if-nez v1, :cond_0

    .line 1490
    const-string v1, "Are you sure you want to close the logging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1491
    const-string v1, "console?\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1492
    const-string v1, "(Note: This will not shut down the Virtual Machine,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1493
    const-string v1, "or the Swing event thread.)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1495
    :cond_0
    const-string v1, "Are you sure you want to exit?\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    const-string v1, "This will shut down the Virtual Machine.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1499
    :goto_0
    const-string v1, "Are you sure you want to dispose of the Logging Console?"

    .line 1502
    .local v1, "title":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1503
    const-string v1, "Are you sure you want to exit?"

    .line 1505
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Ljavax/swing/JOptionPane;->showConfirmDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;)I

    move-result v2

    .line 1514
    .local v2, "value":I
    if-nez v2, :cond_2

    .line 1515
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->dispose()V

    .line 1517
    .end local v0    # "message":Ljava/lang/StringBuffer;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_2
    return-void
.end method

.method protected createAllLogLevelsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .line 712
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 714
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 721
    return-object v0
.end method

.method protected createAllLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .line 876
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 878
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$14;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$14;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 886
    return-object v0
.end method

.method protected createCloseMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 955
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Close"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 957
    const-string v1, "control Q"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 958
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$18;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$18;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 963
    return-object v0
.end method

.method protected createConfigureMaxRecords()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1035
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Set Max Number of Records"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1037
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$23;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$23;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1043
    return-object v0
.end method

.method protected createConfigureMenu()Ljavax/swing/JMenu;
    .locals 2

    .line 1001
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Configure"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, "configureMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1003
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureSave()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1004
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureReset()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1005
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureMaxRecords()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1007
    return-object v0
.end method

.method protected createConfigureReset()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1023
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1025
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$22;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$22;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1031
    return-object v0
.end method

.method protected createConfigureSave()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1011
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Save"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1013
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$21;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$21;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1019
    return-object v0
.end method

.method protected createDetailTextArea()Ljavax/swing/JTextArea;
    .locals 5

    .line 673
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 674
    .local v0, "detailTA":Ljavax/swing/JTextArea;
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Monospaced"

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 675
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setTabSize(I)V

    .line 676
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    .line 677
    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setWrapStyleWord(Z)V

    .line 678
    return-object v0
.end method

.method protected createEditFindMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1126
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, "editFindMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1128
    const-string v1, "control F"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 1130
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$26;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$26;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1146
    return-object v0
.end method

.method protected createEditFindNextMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1114
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find Next"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, "editFindNextMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1116
    const-string v1, "F3"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 1117
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1122
    return-object v0
.end method

.method protected createEditMenu()Ljavax/swing/JMenu;
    .locals 2

    .line 1103
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Edit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, "editMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1105
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditFindMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1106
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditFindNextMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1107
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1108
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditSortNDCMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1109
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditRestoreAllNDCMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1110
    return-object v0
.end method

.method protected createEditRestoreAllNDCMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1179
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Restore all NDCs"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "editRestoreAllNDCMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1181
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1192
    return-object v0
.end method

.method protected createEditSortNDCMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 1153
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Sort by NDC"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "editSortNDCMI":Ljavax/swing/JMenuItem;
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1155
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1173
    return-object v0
.end method

.method protected createExitMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 990
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Exit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 991
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 992
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$20;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$20;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 997
    return-object v0
.end method

.method protected createFileMenu()Ljavax/swing/JMenu;
    .locals 2

    .line 911
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "File"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, "fileMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 914
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 915
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenURLMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 916
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 917
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createCloseMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 918
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMRUFileListMI(Ljavax/swing/JMenu;)V

    .line 919
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 920
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createExitMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 921
    return-object v0
.end method

.method protected createHelpMenu()Ljavax/swing/JMenu;
    .locals 2

    .line 1075
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Help"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v0, "helpMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1077
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createHelpProperties()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1078
    return-object v0
.end method

.method protected createHelpProperties()Ljavax/swing/JMenuItem;
    .locals 3

    .line 1082
    const-string v0, "LogFactor5 Properties"

    .line 1083
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Ljavax/swing/JMenuItem;

    const-string v2, "LogFactor5 Properties"

    invoke-direct {v1, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v1, "result":Ljavax/swing/JMenuItem;
    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 1085
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;

    invoke-direct {v2, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v2}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1090
    return-object v1
.end method

.method protected createLogLevelColorMenu()Ljavax/swing/JMenu;
    .locals 3

    .line 738
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Configure LogLevel Colors"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "colorMenu":Ljavax/swing/JMenu;
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 740
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v1

    .line 741
    .local v1, "levels":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 745
    return-object v0

    .line 742
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createSubMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0
.end method

.method protected createLogLevelCombo()Ljavax/swing/JComboBox;
    .locals 3

    .line 1332
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    .line 1333
    .local v0, "result":Ljavax/swing/JComboBox;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v1

    .line 1334
    .local v1, "levels":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1337
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1339
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;

    invoke-direct {v2, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1346
    invoke-virtual {v0}, Ljavax/swing/JComponent;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JComponent;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1347
    return-object v0

    .line 1335
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected createLogLevelMenu()Ljavax/swing/JMenu;
    .locals 3

    .line 694
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Log Level"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, "result":Ljavax/swing/JMenu;
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 696
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v1

    .line 697
    .local v1, "levels":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 702
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createAllLogLevelsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 703
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNoLogLevelsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 704
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 705
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogLevelColorMenu()Ljavax/swing/JMenu;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 706
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createResetLogLevelColorMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 708
    return-object v0

    .line 698
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0
.end method

.method protected createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1

    .line 579
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$3;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$3;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 587
    .local v0, "result":Lorg/apache/log4j/lf5/LogRecordFilter;
    return-object v0
.end method

.method protected createLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 3
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 846
    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    .line 849
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 850
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$13;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$13;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 857
    return-object v0
.end method

.method protected createMRUFileListMI(Ljavax/swing/JMenu;)V
    .locals 5
    .param p1, "menu"    # Ljavax/swing/JMenu;

    .line 972
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getMRUFileList()[Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {p1}, Ljavax/swing/JMenu;->addSeparator()V

    .line 976
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    new-instance v2, Ljavax/swing/JMenuItem;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 978
    .local v2, "result":Ljavax/swing/JMenuItem;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(I)V

    .line 979
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;

    invoke-direct {v3, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 984
    invoke-virtual {p1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 976
    .end local v2    # "result":Ljavax/swing/JMenuItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected createMenuBar()Ljavax/swing/JMenuBar;
    .locals 2

    .line 682
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    .line 683
    .local v0, "menuBar":Ljavax/swing/JMenuBar;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createFileMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 684
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createEditMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 685
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogLevelMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 686
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createViewMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 687
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createConfigureMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 688
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createHelpMenu()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 690
    return-object v0
.end method

.method protected createMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 3
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 809
    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    .line 810
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    .line 811
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 812
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$12;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$12;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 818
    return-object v0
.end method

.method protected createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 593
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 594
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$4;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 609
    .local v0, "result":Lorg/apache/log4j/lf5/LogRecordFilter;
    return-object v0
.end method

.method protected createNoLogLevelsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .line 725
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 727
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$9;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$9;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 734
    return-object v0
.end method

.method protected createNoLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .line 890
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 892
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 900
    return-object v0
.end method

.method protected createOpenMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 929
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 931
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 936
    return-object v0
.end method

.method protected createOpenURLMI()Ljavax/swing/JMenuItem;
    .locals 2

    .line 944
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open URL..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 946
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$17;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$17;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 951
    return-object v0
.end method

.method protected createResetLogLevelColorMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .line 749
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset LogLevel Colors"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, "result":Ljavax/swing/JMenuItem;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 751
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$10;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$10;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 760
    return-object v0
.end method

.method protected createStatusArea()Ljavax/swing/JPanel;
    .locals 4

    .line 659
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 660
    .local v0, "statusArea":Ljavax/swing/JPanel;
    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "No log records to display."

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, "status":Ljavax/swing/JLabel;
    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_statusLabel:Ljavax/swing/JLabel;

    .line 663
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 665
    invoke-static {}, Ljavax/swing/BorderFactory;->createEtchedBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    .line 666
    new-instance v2, Ljava/awt/FlowLayout;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v0, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 667
    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 669
    return-object v0
.end method

.method protected createSubMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JMenuItem;
    .locals 4
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 780
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "result":Ljavax/swing/JMenuItem;
    move-object v1, p1

    .line 782
    .local v1, "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 783
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V

    invoke-virtual {v0, v2}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 789
    return-object v0
.end method

.method protected createToolBar()Ljavax/swing/JToolBar;
    .locals 12

    .line 1196
    new-instance v0, Ljavax/swing/JToolBar;

    invoke-direct {v0}, Ljavax/swing/JToolBar;-><init>()V

    .line 1197
    .local v0, "tb":Ljavax/swing/JToolBar;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "JToolBar.isRollover"

    invoke-virtual {v0, v2, v1}, Ljavax/swing/JComponent;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1198
    new-instance v1, Ljavax/swing/JComboBox;

    invoke-direct {v1}, Ljavax/swing/JComboBox;-><init>()V

    .line 1199
    .local v1, "fontCombo":Ljavax/swing/JComboBox;
    new-instance v2, Ljavax/swing/JComboBox;

    invoke-direct {v2}, Ljavax/swing/JComboBox;-><init>()V

    .line 1200
    .local v2, "fontSizeCombo":Ljavax/swing/JComboBox;
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSizeCombo:Ljavax/swing/JComboBox;

    .line 1202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1203
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 1204
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1206
    :cond_0
    const-string v4, "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1209
    .local v4, "newIconURL":Ljava/net/URL;
    const/4 v5, 0x0

    .line 1211
    .local v5, "newIcon":Ljavax/swing/ImageIcon;
    if-eqz v4, :cond_1

    .line 1212
    new-instance v6, Ljavax/swing/ImageIcon;

    invoke-direct {v6, v4}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    move-object v5, v6

    .line 1215
    :cond_1
    new-instance v6, Ljavax/swing/JButton;

    const-string v7, "Clear Log Table"

    invoke-direct {v6, v7}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v6, "newButton":Ljavax/swing/JButton;
    if-eqz v5, :cond_2

    .line 1218
    invoke-virtual {v6, v5}, Ljavax/swing/AbstractButton;->setIcon(Ljavax/swing/Icon;)V

    .line 1221
    :cond_2
    const-string v7, "Clear Log Table."

    invoke-virtual {v6, v7}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    .line 1224
    new-instance v7, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;

    invoke-direct {v7, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v6, v7}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1236
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v7

    .line 1241
    .local v7, "tk":Ljava/awt/Toolkit;
    iget-boolean v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_loadSystemFonts:Z

    if-eqz v8, :cond_3

    .line 1242
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/GraphicsEnvironment;->getAvailableFontFamilyNames()[Ljava/lang/String;

    move-result-object v8

    .local v8, "fonts":[Ljava/lang/String;
    goto :goto_0

    .line 1241
    .end local v8    # "fonts":[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 1245
    .restart local v8    # "fonts":[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/awt/Toolkit;->getFontList()[Ljava/lang/String;

    move-result-object v8

    .line 1248
    :goto_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v10, v8

    if-lt v9, v10, :cond_4

    .line 1252
    iget-object v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1254
    new-instance v10, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;

    invoke-direct {v10, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1266
    const-string v10, "8"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1267
    const-string v10, "9"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1268
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1269
    const-string v10, "12"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1270
    const-string v10, "14"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1271
    const-string v10, "16"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1272
    const-string v10, "18"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1273
    const-string v10, "24"

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1275
    iget v10, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 1276
    new-instance v10, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;

    invoke-direct {v10, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1290
    new-instance v10, Ljavax/swing/JLabel;

    const-string v11, " Font: "

    invoke-direct {v10, v11}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1291
    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1292
    invoke-virtual {v0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1293
    invoke-virtual {v0}, Ljavax/swing/JToolBar;->addSeparator()V

    .line 1294
    invoke-virtual {v0}, Ljavax/swing/JToolBar;->addSeparator()V

    .line 1295
    invoke-virtual {v0, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1297
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v6, v10}, Ljavax/swing/JComponent;->setAlignmentY(F)V

    .line 1298
    invoke-virtual {v6, v10}, Ljavax/swing/JComponent;->setAlignmentX(F)V

    .line 1300
    invoke-virtual {v1}, Ljavax/swing/JComponent;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/swing/JComponent;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1301
    invoke-virtual {v2}, Ljavax/swing/JComponent;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/swing/JComponent;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 1304
    return-object v0

    .line 1249
    :cond_4
    aget-object v10, v8, v9

    invoke-virtual {v1, v10}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 1248
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method protected createViewMenu()Ljavax/swing/JMenu;
    .locals 3

    .line 823
    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "View"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 824
    .local v0, "result":Ljavax/swing/JMenu;
    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 825
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumns()Ljava/util/Iterator;

    move-result-object v1

    .line 826
    .local v1, "columns":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 830
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 831
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createAllLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 832
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNoLogTableColumnsMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 833
    return-object v0

    .line 827
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljava/awt/Window;->dispose()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_isDisposed:Z

    .line 172
    iget-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    if-ne v1, v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 175
    :cond_0
    return-void
.end method

.method protected findRecord(ILjava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p1, "startRow"    # I
    .param p2, "searchText"    # Ljava/lang/String;
    .param p3, "records"    # Ljava/util/List;

    .line 367
    if-gez p1, :cond_0

    .line 368
    const/4 p1, 0x0

    goto :goto_0

    .line 370
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 372
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 374
    .local v0, "len":I
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 380
    move v2, p1

    .line 381
    .end local v0    # "len":I
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v2, :cond_1

    .line 387
    const/4 v3, -0x1

    return v3

    .line 382
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {p0, v3, p2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    return v0

    .line 381
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    .end local v2    # "len":I
    .local v0, "len":I
    :cond_3
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {p0, v2, p2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 376
    return v1

    .line 374
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected findSearchText()V
    .locals 3

    .line 331
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    .line 332
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getFirstSelectedRow()I

    move-result v1

    .line 336
    .local v1, "startRow":I
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->findRecord(ILjava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 341
    .local v2, "foundRow":I
    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectRow(I)V

    .line 342
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "startRow":I
    .end local v2    # "foundRow":I
    return-void

    .line 333
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public getBaseFrame()Ljavax/swing/JFrame;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    return-object v0
.end method

.method public getCallSystemExitOnClose()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    return v0
.end method

.method public getCategoryExplorerTree()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    return-object v0
.end method

.method public getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstSelectedRow()I
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v0

    return v0
.end method

.method public getLogLevelMenuItems()Ljava/util/Map;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    return-object v0
.end method

.method protected getLogLevels()Ljava/util/Iterator;
    .locals 1

    .line 1520
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_levels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 2
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 837
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    .line 838
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_0
    return-object v0
.end method

.method public getLogTableColumnMenuItems()Ljava/util/Map;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableColumnMenuItems:Ljava/util/Map;

    return-object v0
.end method

.method protected getLogTableColumns()Ljava/util/Iterator;
    .locals 1

    .line 1524
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 2
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 771
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    .line 772
    .local v0, "result":Ljavax/swing/JCheckBoxMenuItem;
    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logLevelMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_0
    return-object v0
.end method

.method public getNDCTextFilter()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    return-object v0
.end method

.method protected getRecordsDisplayedMessage()Ljava/lang/String;
    .locals 3

    .line 618
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    .line 619
    .local v0, "model":Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getTotalRowCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getStatusText(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getStatusText(II)Ljava/lang/String;
    .locals 2
    .param p1, "displayedRows"    # I
    .param p2, "totalRows"    # I

    .line 639
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 640
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "Displaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 642
    const-string v1, " records out of a total of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 644
    const-string v1, " records."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;
    .locals 1
    .param p1, "column"    # Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Component;->setVisible(Z)V

    .line 182
    return-void
.end method

.method protected initComponents()V
    .locals 10

    .line 485
    new-instance v0, Ljavax/swing/JFrame;

    const-string v1, "LogFactor5"

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    .line 487
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    .line 489
    const-string v0, "/org/apache/log4j/lf5/viewer/images/lf5_small_icon.gif"

    .line 491
    .local v0, "resource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 493
    .local v2, "lf5IconURL":Ljava/net/URL;
    if-eqz v2, :cond_0

    .line 494
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v4, Ljavax/swing/ImageIcon;

    invoke-direct {v4, v2}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-virtual {v4}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/awt/Frame;->setIconImage(Ljava/awt/Image;)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateFrameSize()V

    .line 501
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createDetailTextArea()Ljavax/swing/JTextArea;

    move-result-object v3

    .line 502
    .local v3, "detailTA":Ljavax/swing/JTextArea;
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 503
    .local v4, "detailTAScrollPane":Ljavax/swing/JScrollPane;
    new-instance v5, Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v5, v3}, Lorg/apache/log4j/lf5/viewer/LogTable;-><init>(Ljavax/swing/JTextArea;)V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 504
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setView(Ljava/lang/String;Lorg/apache/log4j/lf5/viewer/LogTable;)V

    .line 505
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    new-instance v6, Ljava/awt/Font;

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    iget v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    invoke-direct {v6, v7, v1, v8}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v6}, Lorg/apache/log4j/lf5/viewer/LogTable;->setFont(Ljava/awt/Font;)V

    .line 506
    new-instance v5, Ljavax/swing/JScrollPane;

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v5, v6}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    .line 508
    iget-boolean v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_trackTableScrollPane:Z

    if-eqz v6, :cond_1

    .line 509
    invoke-virtual {v5}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v5

    new-instance v6, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;

    invoke-direct {v6}, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;-><init>()V

    invoke-virtual {v5, v6}, Ljavax/swing/JScrollBar;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    .line 518
    :cond_1
    new-instance v5, Ljavax/swing/JSplitPane;

    invoke-direct {v5}, Ljavax/swing/JSplitPane;-><init>()V

    .line 519
    .local v5, "tableViewerSplitPane":Ljavax/swing/JSplitPane;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    .line 520
    invoke-virtual {v5, v1}, Ljavax/swing/JSplitPane;->setOrientation(I)V

    .line 521
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v5, v1}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 522
    invoke-virtual {v5, v4}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 530
    const/16 v1, 0x15e

    invoke-virtual {v5, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 536
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-direct {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    .line 538
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 540
    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-direct {v1, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 542
    .local v1, "categoryExplorerTreeScrollPane":Ljavax/swing/JScrollPane;
    new-instance v7, Ljava/awt/Dimension;

    const/16 v8, 0x190

    const/16 v9, 0x82

    invoke-direct {v7, v9, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v7}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 545
    new-instance v7, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-direct {v7}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;-><init>()V

    iput-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    .line 551
    new-instance v7, Ljavax/swing/JSplitPane;

    invoke-direct {v7}, Ljavax/swing/JSplitPane;-><init>()V

    .line 552
    .local v7, "splitPane":Ljavax/swing/JSplitPane;
    invoke-virtual {v7, v6}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    .line 553
    invoke-virtual {v7, v5}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 554
    invoke-virtual {v7, v1}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 556
    invoke-virtual {v7, v9}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 561
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v6}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavax/swing/JRootPane;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 562
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v6}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    const-string v8, "Center"

    invoke-virtual {v6, v7, v8}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 563
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v6}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createToolBar()Ljavax/swing/JToolBar;

    move-result-object v8

    const-string v9, "North"

    invoke-virtual {v6, v8, v9}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 565
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v6}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createStatusArea()Ljavax/swing/JPanel;

    move-result-object v8

    const-string v9, "South"

    invoke-virtual {v6, v8, v9}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 568
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->makeLogTableListenToCategoryExplorer()V

    .line 569
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addTableModelProperties()V

    .line 574
    new-instance v6, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {v6, p0, v8}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogTable;)V

    iput-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    .line 576
    .end local v0    # "resource":Ljava/lang/String;
    .end local v1    # "categoryExplorerTreeScrollPane":Ljavax/swing/JScrollPane;
    .end local v2    # "lf5IconURL":Ljava/net/URL;
    .end local v3    # "detailTA":Ljavax/swing/JTextArea;
    .end local v4    # "detailTAScrollPane":Ljavax/swing/JScrollPane;
    .end local v5    # "tableViewerSplitPane":Ljavax/swing/JSplitPane;
    .end local v7    # "splitPane":Ljavax/swing/JSplitPane;
    return-void
.end method

.method protected loadLogFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 1531
    const/4 v0, 0x0

    .line 1533
    .local v0, "ok":Z
    :try_start_0
    new-instance v1, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-direct {v1, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/File;)V

    .line 1534
    .local v1, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    const/4 v0, 0x1

    .line 1536
    .end local v1    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    goto :goto_0

    .line 1537
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1541
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method protected loadLogFile(Ljava/net/URL;)Z
    .locals 6
    .param p1, "url"    # Ljava/net/URL;

    .line 1548
    const/4 v0, 0x0

    .line 1550
    .local v0, "ok":Z
    :try_start_0
    new-instance v1, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 1551
    .local v1, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    const/4 v0, 0x1

    .line 1553
    .end local v1    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    goto :goto_0

    .line 1554
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error reading URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1557
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method protected makeLogTableListenToCategoryExplorer()V
    .locals 2

    .line 649
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$7;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$7;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 655
    .local v0, "listener":Ljava/awt/event/ActionListener;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 656
    .end local v0    # "listener":Ljava/awt/event/ActionListener;
    return-void
.end method

.method protected matches(Lorg/apache/log4j/lf5/LogRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;
    .param p2, "text"    # Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "NDC":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 399
    :cond_1
    return v2

    .line 401
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 403
    return v2

    .line 406
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method protected pause(I)V
    .locals 2
    .param p1, "millis"    # I

    .line 475
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 479
    :goto_1
    return-void
.end method

.method protected refresh(Ljavax/swing/JTextArea;)V
    .locals 2
    .param p1, "textArea"    # Ljavax/swing/JTextArea;

    .line 415
    invoke-virtual {p1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1, v0}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 418
    .end local v0    # "text":Ljava/lang/String;
    return-void
.end method

.method protected refreshDetailTextArea()V
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->refresh(Ljavax/swing/JTextArea;)V

    .line 422
    return-void
.end method

.method protected requestClose()V
    .locals 1

    .line 1450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 1451
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->closeAfterConfirm()V

    .line 1452
    return-void
.end method

.method protected requestExit()V
    .locals 1

    .line 1481
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->save()V

    .line 1482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 1483
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->closeAfterConfirm()V

    .line 1484
    return-void
.end method

.method protected requestOpen()V
    .locals 4

    .line 1389
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1390
    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    .local v0, "chooser":Ljavax/swing/JFileChooser;
    goto :goto_0

    .line 1389
    .end local v0    # "chooser":Ljavax/swing/JFileChooser;
    :cond_0
    const/4 v0, 0x0

    .line 1392
    .restart local v0    # "chooser":Ljavax/swing/JFileChooser;
    new-instance v1, Ljavax/swing/JFileChooser;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    invoke-direct {v1, v2}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 1395
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v1

    .line 1396
    .local v1, "returnVal":I
    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    .line 1398
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->loadLogFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1399
    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fileLocation:Ljava/io/File;

    .line 1400
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->set(Ljava/io/File;)V

    .line 1401
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V

    .line 1404
    .end local v0    # "chooser":Ljavax/swing/JFileChooser;
    .end local v1    # "returnVal":I
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method

.method protected requestOpenMRU(Ljava/awt/event/ActionEvent;)V
    .locals 8
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 1458
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "file":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1461
    .local v2, "num":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1466
    .local v3, "index":I
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v4, v3}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1467
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-direct {v5, v4}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 1468
    .local v5, "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    invoke-virtual {v5, p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 1470
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v6, v3}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->moveToTop(I)V

    .line 1471
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    .end local v3    # "index":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "lfp":Lorg/apache/log4j/lf5/util/LogFileParser;
    goto :goto_0

    .line 1474
    :catch_0
    move-exception v3

    .local v3, "me":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to load file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1478
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "num":Ljava/lang/String;
    .end local v3    # "me":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected requestOpenURL()V
    .locals 6

    .line 1411
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    const-string v2, "Open URL"

    const-string v3, "URL:"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    .local v0, "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1416
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1417
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1421
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->loadLogFile(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1423
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_mruFileManager:Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->set(Ljava/net/URL;)V

    .line 1424
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateMRUList()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    const-string v5, "Error reading URL."

    invoke-direct {v3, v4, v5}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1431
    .end local v0    # "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_0
    return-void
.end method

.method protected resetConfiguration()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->reset()V

    .line 1053
    return-void
.end method

.method protected saveConfiguration()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_configurationManager:Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/configure/ConfigurationManager;->save()V

    .line 1049
    return-void
.end method

.method protected selectAllLogLevels(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 764
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogLevels()Ljava/util/Iterator;

    move-result-object v0

    .line 765
    .local v0, "levels":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    .end local v0    # "levels":Ljava/util/Iterator;
    return-void

    .line 766
    .restart local v0    # "levels":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getMenuItem(Lorg/apache/log4j/lf5/LogLevel;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    goto :goto_0
.end method

.method protected selectAllLogTableColumns(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 904
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumns()Ljava/util/Iterator;

    move-result-object v0

    .line 905
    .local v0, "columns":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    .end local v0    # "columns":Ljava/util/Iterator;
    return-void

    .line 906
    .restart local v0    # "columns":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    goto :goto_0
.end method

.method protected selectRow(I)V
    .locals 4
    .param p1, "foundRow"    # I

    .line 349
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const/4 v2, 0x1

    const-string v3, "Text not found"

    invoke-static {v1, v0, v3, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 357
    return-void

    .line 359
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logTableScrollPane:Ljavax/swing/JScrollPane;

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->selectRow(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V

    .line 360
    return-void
.end method

.method public setCallSystemExitOnClose(Z)V
    .locals 0
    .param p1, "callSystemExitOnClose"    # Z

    .line 211
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_callSystemExitOnClose:Z

    .line 212
    return-void
.end method

.method public setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V
    .locals 1
    .param p1, "dfm"    # Lorg/apache/log4j/lf5/util/DateFormatManager;

    .line 195
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V

    .line 196
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .line 259
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSizeCombo:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->changeFontSizeCombo(Ljavax/swing/JComboBox;I)I

    .line 262
    return-void
.end method

.method protected setFontSize(Ljava/awt/Component;I)V
    .locals 4
    .param p1, "component"    # Ljava/awt/Component;
    .param p2, "fontSize"    # I

    .line 462
    invoke-virtual {p1}, Ljava/awt/Component;->getFont()Ljava/awt/Font;

    move-result-object v0

    .line 463
    .local v0, "oldFont":Ljava/awt/Font;
    new-instance v1, Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/Font;->getStyle()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 465
    .local v1, "newFont":Ljava/awt/Font;
    invoke-virtual {p1, v1}, Ljava/awt/Component;->setFont(Ljava/awt/Font;)V

    .line 466
    .end local v0    # "oldFont":Ljava/awt/Font;
    .end local v1    # "newFont":Ljava/awt/Font;
    return-void
.end method

.method protected setFontSizeSilently(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .line 455
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 456
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(Ljava/awt/Component;I)V

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectRow(I)V

    .line 458
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(Ljava/awt/Component;I)V

    .line 459
    return-void
.end method

.method public setFrameSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 248
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 249
    .local v0, "screen":Ljava/awt/Dimension;
    if-lez p1, :cond_0

    iget v1, v0, Ljava/awt/Dimension;->width:I

    if-ge p1, v1, :cond_0

    .line 250
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    .line 252
    :cond_0
    if-lez p2, :cond_1

    iget v1, v0, Ljava/awt/Dimension;->height:I

    if-ge p2, v1, :cond_1

    .line 253
    iput p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateFrameSize()V

    .line 256
    .end local v0    # "screen":Ljava/awt/Dimension;
    return-void
.end method

.method protected setLeastSevereDisplayedLogLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 1351
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1354
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_leastSevereDisplayedLogLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 1355
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1356
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    .line 1357
    return-void

    .line 1352
    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxNumberOfLogRecords(I)V
    .locals 1
    .param p1, "maxNumberOfLogRecords"    # I

    .line 236
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setMaxNumberOfLogRecords(I)V

    .line 237
    return-void
.end method

.method protected setMaxRecordConfiguration()V
    .locals 7

    .line 1056
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    const-string v2, "Set Max Number of Records"

    const-string v3, ""

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1059
    .local v0, "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1063
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    goto :goto_0

    .line 1065
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' is an invalid parameter.\nPlease try again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 1068
    .local v3, "error":Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxRecordConfiguration()V

    .line 1071
    .end local v0    # "inputDialog":Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "error":Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNDCLogRecordFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "textFilter"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 296
    return-void
.end method

.method protected setNDCTextFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 314
    :goto_0
    return-void
.end method

.method protected setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_searchText:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - LogFactor5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setTitle(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected setView(Ljava/lang/String;Lorg/apache/log4j/lf5/viewer/LogTable;)V
    .locals 2
    .param p1, "viewString"    # Ljava/lang/String;
    .param p2, "table"    # Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 1322
    const-string v0, "Detailed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/viewer/LogTable;->setDetailedView()V

    .line 1328
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_currentView:Ljava/lang/String;

    .line 1329
    return-void

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "does not match a supported view."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public show()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show(I)V

    .line 163
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "delay"    # I

    .line 148
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;I)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method protected showLogLevelColorChangeDialog(Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 4
    .param p1, "result"    # Ljavax/swing/JMenuItem;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 794
    move-object v0, p1

    .line 795
    .local v0, "menuItem":Ljavax/swing/JMenuItem;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {p1}, Ljava/awt/Component;->getForeground()Ljava/awt/Color;

    move-result-object v2

    const-string v3, "Choose LogLevel Color"

    invoke-static {v1, v3, v2}, Ljavax/swing/JColorChooser;->showDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object v1

    .line 800
    .local v1, "newColor":Ljava/awt/Color;
    if-eqz v1, :cond_0

    .line 802
    invoke-virtual {p2, p2, v1}, Lorg/apache/log4j/lf5/LogLevel;->setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V

    .line 803
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 806
    .end local v0    # "menuItem":Ljavax/swing/JMenuItem;
    .end local v1    # "newColor":Ljava/awt/Color;
    :cond_0
    return-void
.end method

.method protected showPropertiesDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_displayedLogBrokerProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 1100
    return-void
.end method

.method protected sortByNDC()V
    .locals 3

    .line 320
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_NDCTextFilter:Ljava/lang/String;

    .line 321
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createNDCLogRecordFilter(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 328
    .end local v0    # "text":Ljava/lang/String;
    return-void

    .line 322
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method protected trackTableScrollPane()V
    .locals 0

    .line 1371
    return-void
.end method

.method protected updateFrameSize()V
    .locals 3

    .line 469
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameWidth:I

    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrameHeight:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/Component;->setSize(II)V

    .line 470
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->centerFrame(Ljavax/swing/JFrame;)V

    .line 471
    return-void
.end method

.method protected updateMRUList()V
    .locals 2

    .line 1438
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getJMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    .line 1439
    .local v0, "menu":Ljavax/swing/JMenu;
    invoke-virtual {v0}, Ljavax/swing/JMenu;->removeAll()V

    .line 1440
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1441
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createOpenURLMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1442
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1443
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createCloseMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1444
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createMRUFileListMI(Ljavax/swing/JMenu;)V

    .line 1445
    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    .line 1446
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createExitMI()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1447
    .end local v0    # "menu":Ljavax/swing/JMenu;
    return-void
.end method

.method protected updateStatusLabel()V
    .locals 2

    .line 614
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_statusLabel:Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getRecordsDisplayedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method protected updateView()Ljava/util/List;
    .locals 5

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, "updatedList":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_columns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 863
    .local v1, "columnIterator":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 872
    return-object v0

    .line 864
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 865
    .local v2, "column":Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getLogTableColumnMenuItem(Lorg/apache/log4j/lf5/viewer/LogTableColumn;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v3

    .line 867
    .local v3, "result":Ljavax/swing/JCheckBoxMenuItem;
    invoke-virtual {v3}, Ljavax/swing/AbstractButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 867
    :cond_1
    goto :goto_0
.end method
