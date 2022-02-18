.class public Lorg/apache/log4j/chainsaw/Main;
.super Ljavax/swing/JFrame;
.source "Main.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x115d

.field private static final LOG:Lorg/apache/log4j/Logger;

.field public static final PORT_PROP_NAME:Ljava/lang/String; = "chainsaw.port"

.field static synthetic class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.Main"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/Main;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    const-string v0, "CHAINSAW"

    .line 60
    const-string v1, "CHAINSAW - Log4J Log Viewer"

    invoke-direct {p0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-direct {v1}, Lorg/apache/log4j/chainsaw/MyTableModel;-><init>()V

    .line 65
    .local v1, "model":Lorg/apache/log4j/chainsaw/MyTableModel;
    new-instance v2, Ljavax/swing/JMenuBar;

    invoke-direct {v2}, Ljavax/swing/JMenuBar;-><init>()V

    .line 66
    .local v2, "menuBar":Ljavax/swing/JMenuBar;
    invoke-virtual {p0, v2}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 67
    new-instance v3, Ljavax/swing/JMenu;

    const-string v4, "File"

    invoke-direct {v3, v4}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "menu":Ljavax/swing/JMenu;
    invoke-virtual {v2, v3}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 71
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/apache/log4j/chainsaw/LoadXMLAction;

    invoke-direct {v6, p0, v1}, Lorg/apache/log4j/chainsaw/LoadXMLAction;-><init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    move-object v5, v6

    .line 72
    .local v5, "lxa":Lorg/apache/log4j/chainsaw/LoadXMLAction;
    new-instance v6, Ljavax/swing/JMenuItem;

    const-string v7, "Load file..."

    invoke-direct {v6, v7}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "loadMenuItem":Ljavax/swing/JMenuItem;
    invoke-virtual {v3, v6}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 74
    invoke-virtual {v6, v5}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v5    # "lxa":Lorg/apache/log4j/chainsaw/LoadXMLAction;
    .end local v6    # "loadMenuItem":Ljavax/swing/JMenuItem;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v6

    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v8, "Unable to create the action to load XML files"

    invoke-virtual {v7, v8, v6}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    const-string v7, "Unable to create a XML parser - unable to load XML events."

    invoke-static {p0, v7, v0, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 76
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NoClassDefFoundError;
    sget-object v6, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v7, "Missing classes for XML parser"

    invoke-virtual {v6, v7, v5}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    const-string v6, "XML parser not in classpath - unable to load XML events."

    invoke-static {p0, v6, v0, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 82
    nop

    .line 91
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v5, "Exit"

    invoke-direct {v0, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "exitMenuItem":Ljavax/swing/JMenuItem;
    invoke-virtual {v3, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 93
    sget-object v5, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v0, v5}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 96
    new-instance v5, Lorg/apache/log4j/chainsaw/ControlPanel;

    invoke-direct {v5, v1}, Lorg/apache/log4j/chainsaw/ControlPanel;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 97
    .local v5, "cp":Lorg/apache/log4j/chainsaw/ControlPanel;
    invoke-virtual {p0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    const-string v7, "North"

    invoke-virtual {v6, v5, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 100
    new-instance v6, Ljavax/swing/JTable;

    invoke-direct {v6, v1}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 101
    .local v6, "table":Ljavax/swing/JTable;
    invoke-virtual {v6, v4}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 102
    new-instance v7, Ljavax/swing/JScrollPane;

    invoke-direct {v7, v6}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 103
    .local v7, "scrollPane":Ljavax/swing/JScrollPane;
    const-string v8, "Events: "

    invoke-static {v8}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    .line 104
    new-instance v8, Ljava/awt/Dimension;

    const/16 v9, 0x384

    const/16 v10, 0x12c

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v8}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 107
    new-instance v8, Lorg/apache/log4j/chainsaw/DetailPanel;

    invoke-direct {v8, v6, v1}, Lorg/apache/log4j/chainsaw/DetailPanel;-><init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 108
    .local v8, "details":Ljavax/swing/JPanel;
    new-instance v11, Ljava/awt/Dimension;

    invoke-direct {v11, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v8, v11}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 111
    new-instance v9, Ljavax/swing/JSplitPane;

    invoke-direct {v9, v4, v7, v8}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    move-object v4, v9

    .line 113
    .local v4, "jsp":Ljavax/swing/JSplitPane;
    invoke-virtual {p0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    const-string v10, "Center"

    invoke-virtual {v9, v4, v10}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 115
    new-instance v9, Lorg/apache/log4j/chainsaw/Main$1;

    invoke-direct {v9, p0}, Lorg/apache/log4j/chainsaw/Main$1;-><init>(Lorg/apache/log4j/chainsaw/Main;)V

    invoke-virtual {p0, v9}, Ljava/awt/Window;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 121
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    .line 122
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/awt/Component;->setVisible(Z)V

    .line 124
    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/Main;->setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 125
    .end local v0    # "exitMenuItem":Ljavax/swing/JMenuItem;
    .end local v1    # "model":Lorg/apache/log4j/chainsaw/MyTableModel;
    .end local v2    # "menuBar":Ljavax/swing/JMenuBar;
    .end local v3    # "menu":Ljavax/swing/JMenu;
    .end local v4    # "jsp":Ljavax/swing/JSplitPane;
    .end local v5    # "cp":Lorg/apache/log4j/chainsaw/ControlPanel;
    .end local v6    # "table":Ljavax/swing/JTable;
    .end local v7    # "scrollPane":Ljavax/swing/JScrollPane;
    .end local v8    # "details":Ljavax/swing/JPanel;
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 43
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

.method private static initLog4J()V
    .locals 3

    .line 173
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 174
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "log4j.rootLogger"

    const-string v2, "DEBUG, A1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v1, "log4j.appender.A1"

    const-string v2, "org.apache.log4j.ConsoleAppender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v1, "log4j.appender.A1.layout"

    const-string v2, "org.apache.log4j.TTCCLayout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/util/Properties;)V

    .line 180
    .end local v0    # "props":Ljava/util/Properties;
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "aArgs"    # [Ljava/lang/String;

    .line 188
    invoke-static {}, Lorg/apache/log4j/chainsaw/Main;->initLog4J()V

    .line 189
    new-instance v0, Lorg/apache/log4j/chainsaw/Main;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/Main;-><init>()V

    .line 190
    return-void
.end method

.method private setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 9
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 133
    const/16 v0, 0x115d

    .line 134
    .local v0, "port":I
    const-string v1, "chainsaw.port"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "strRep":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CHAINSAW"

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v5

    .local v5, "nfe":Ljava/lang/NumberFormatException;
    sget-object v6, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to parse chainsaw.port property with value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/log4j/Category;->fatal(Ljava/lang/Object;)V

    .line 141
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse port number from \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\', quitting."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 147
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 152
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v5, Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-direct {v5, p1, v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V

    .line 153
    .local v5, "lr":Lorg/apache/log4j/chainsaw/LoggingReceiver;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .end local v5    # "lr":Lorg/apache/log4j/chainsaw/LoggingReceiver;
    goto :goto_1

    .line 155
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v7, "Unable to connect to socket server, quiting"

    invoke-virtual {v6, v7, v5}, Lorg/apache/log4j/Category;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 156
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to create socket on port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", quitting."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 161
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 163
    .end local v0    # "port":I
    .end local v1    # "strRep":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
