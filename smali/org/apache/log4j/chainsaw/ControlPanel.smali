.class Lorg/apache/log4j/chainsaw/ControlPanel;
.super Ljavax/swing/JPanel;
.source "ControlPanel.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ControlPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 16
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljavax/swing/JPanel;-><init>()V

    .line 50
    const-string v2, "Controls: "

    invoke-static {v2}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    .line 51
    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    .line 52
    .local v2, "gridbag":Ljava/awt/GridBagLayout;
    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 53
    .local v3, "c":Ljava/awt/GridBagConstraints;
    invoke-virtual {v0, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 56
    const/4 v4, 0x5

    iput v4, v3, Ljava/awt/GridBagConstraints;->ipadx:I

    .line 57
    iput v4, v3, Ljava/awt/GridBagConstraints;->ipady:I

    .line 60
    const/4 v5, 0x0

    iput v5, v3, Ljava/awt/GridBagConstraints;->gridx:I

    .line 61
    const/16 v6, 0xd

    iput v6, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 63
    iput v5, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 64
    new-instance v7, Ljavax/swing/JLabel;

    const-string v8, "Filter Level:"

    invoke-direct {v7, v8}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 65
    .local v7, "label":Ljavax/swing/JLabel;
    invoke-virtual {v2, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 66
    invoke-virtual {v0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 68
    iget v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 69
    new-instance v8, Ljavax/swing/JLabel;

    const-string v10, "Filter Thread:"

    invoke-direct {v8, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 70
    invoke-virtual {v2, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 71
    invoke-virtual {v0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 73
    iget v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v8, v9

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 74
    new-instance v8, Ljavax/swing/JLabel;

    const-string v10, "Filter Logger:"

    invoke-direct {v8, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 75
    invoke-virtual {v2, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 76
    invoke-virtual {v0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 78
    iget v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v8, v9

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 79
    new-instance v8, Ljavax/swing/JLabel;

    const-string v10, "Filter NDC:"

    invoke-direct {v8, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 80
    invoke-virtual {v2, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 81
    invoke-virtual {v0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 83
    iget v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v8, v9

    iput v8, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 84
    new-instance v8, Ljavax/swing/JLabel;

    const-string v10, "Filter Message:"

    invoke-direct {v8, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 85
    invoke-virtual {v2, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 86
    invoke-virtual {v0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 89
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iput-wide v10, v3, Ljava/awt/GridBagConstraints;->weightx:D

    .line 91
    iput v9, v3, Ljava/awt/GridBagConstraints;->gridx:I

    .line 92
    const/16 v8, 0x11

    iput v8, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 94
    iput v5, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 95
    const/4 v8, 0x6

    new-array v8, v8, [Lorg/apache/log4j/Level;

    sget-object v10, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    aput-object v10, v8, v5

    sget-object v10, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    aput-object v10, v8, v9

    sget-object v10, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v11, 0x2

    aput-object v10, v8, v11

    sget-object v10, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v12, 0x3

    aput-object v10, v8, v12

    sget-object v10, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v12, 0x4

    aput-object v10, v8, v12

    sget-object v10, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    aput-object v10, v8, v4

    move-object v4, v8

    .line 102
    .local v4, "allPriorities":[Lorg/apache/log4j/Level;
    new-instance v8, Ljavax/swing/JComboBox;

    invoke-direct {v8, v4}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    .line 103
    .local v8, "priorities":Ljavax/swing/JComboBox;
    array-length v10, v4

    sub-int/2addr v10, v9

    aget-object v10, v4, v10

    .line 104
    .local v10, "lowest":Lorg/apache/log4j/Level;
    invoke-virtual {v8, v10}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1, v10}, Lorg/apache/log4j/chainsaw/MyTableModel;->setPriorityFilter(Lorg/apache/log4j/Priority;)V

    .line 106
    invoke-virtual {v2, v8, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 107
    invoke-virtual {v0, v8}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 108
    invoke-virtual {v8, v5}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 109
    new-instance v12, Lorg/apache/log4j/chainsaw/ControlPanel$1;

    invoke-direct {v12, v0, v1, v8}, Lorg/apache/log4j/chainsaw/ControlPanel$1;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JComboBox;)V

    invoke-virtual {v8, v12}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    iput v11, v3, Ljava/awt/GridBagConstraints;->fill:I

    .line 118
    iget v12, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v12, v9

    iput v12, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 119
    new-instance v12, Ljavax/swing/JTextField;

    const-string v13, ""

    invoke-direct {v12, v13}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 120
    .local v12, "threadField":Ljavax/swing/JTextField;
    invoke-virtual {v12}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v14

    new-instance v15, Lorg/apache/log4j/chainsaw/ControlPanel$2;

    invoke-direct {v15, v0, v1, v12}, Lorg/apache/log4j/chainsaw/ControlPanel$2;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v14, v15}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 131
    invoke-virtual {v2, v12, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 132
    invoke-virtual {v0, v12}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 134
    iget v14, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v14, v9

    iput v14, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 135
    new-instance v14, Ljavax/swing/JTextField;

    invoke-direct {v14, v13}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 136
    .local v14, "catField":Ljavax/swing/JTextField;
    invoke-virtual {v14}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v15

    new-instance v5, Lorg/apache/log4j/chainsaw/ControlPanel$3;

    invoke-direct {v5, v0, v1, v14}, Lorg/apache/log4j/chainsaw/ControlPanel$3;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v15, v5}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 147
    invoke-virtual {v2, v14, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 148
    invoke-virtual {v0, v14}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 150
    iget v5, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v9

    iput v5, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 151
    new-instance v5, Ljavax/swing/JTextField;

    invoke-direct {v5, v13}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, "ndcField":Ljavax/swing/JTextField;
    invoke-virtual {v5}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v15

    new-instance v6, Lorg/apache/log4j/chainsaw/ControlPanel$4;

    invoke-direct {v6, v0, v1, v5}, Lorg/apache/log4j/chainsaw/ControlPanel$4;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v15, v6}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 163
    invoke-virtual {v2, v5, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 164
    invoke-virtual {v0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 166
    iget v6, v3, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v6, v9

    iput v6, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 167
    new-instance v6, Ljavax/swing/JTextField;

    invoke-direct {v6, v13}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "msgField":Ljavax/swing/JTextField;
    invoke-virtual {v6}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v13

    new-instance v15, Lorg/apache/log4j/chainsaw/ControlPanel$5;

    invoke-direct {v15, v0, v1, v6}, Lorg/apache/log4j/chainsaw/ControlPanel$5;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v13, v15}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 181
    invoke-virtual {v2, v6, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 182
    invoke-virtual {v0, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 185
    move-object v15, v10

    .end local v10    # "lowest":Lorg/apache/log4j/Level;
    .local v15, "lowest":Lorg/apache/log4j/Level;
    const-wide/16 v9, 0x0

    iput-wide v9, v3, Ljava/awt/GridBagConstraints;->weightx:D

    .line 186
    iput v11, v3, Ljava/awt/GridBagConstraints;->fill:I

    .line 187
    const/16 v9, 0xd

    iput v9, v3, Ljava/awt/GridBagConstraints;->anchor:I

    .line 188
    iput v11, v3, Ljava/awt/GridBagConstraints;->gridx:I

    .line 190
    const/4 v9, 0x0

    iput v9, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 191
    new-instance v9, Ljavax/swing/JButton;

    const-string v10, "Exit"

    invoke-direct {v9, v10}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 192
    .local v9, "exitButton":Ljavax/swing/JButton;
    const/16 v10, 0x78

    invoke-virtual {v9, v10}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 193
    sget-object v10, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v9, v10}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 194
    invoke-virtual {v2, v9, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 195
    invoke-virtual {v0, v9}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 197
    iget v10, v3, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 198
    new-instance v10, Ljavax/swing/JButton;

    const-string v11, "Clear"

    invoke-direct {v10, v11}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 199
    .local v10, "clearButton":Ljavax/swing/JButton;
    const/16 v11, 0x63

    invoke-virtual {v10, v11}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 200
    new-instance v11, Lorg/apache/log4j/chainsaw/ControlPanel$6;

    invoke-direct {v11, v0, v1}, Lorg/apache/log4j/chainsaw/ControlPanel$6;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    invoke-virtual {v10, v11}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 205
    invoke-virtual {v2, v10, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 206
    invoke-virtual {v0, v10}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 208
    iget v11, v3, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    iput v11, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 209
    new-instance v11, Ljavax/swing/JButton;

    const-string v13, "Pause"

    invoke-direct {v11, v13}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 210
    .local v11, "toggleButton":Ljavax/swing/JButton;
    const/16 v13, 0x70

    invoke-virtual {v11, v13}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 211
    new-instance v13, Lorg/apache/log4j/chainsaw/ControlPanel$7;

    invoke-direct {v13, v0, v1, v11}, Lorg/apache/log4j/chainsaw/ControlPanel$7;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V

    invoke-virtual {v11, v13}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 218
    invoke-virtual {v2, v11, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 219
    invoke-virtual {v0, v11}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 220
    .end local v2    # "gridbag":Ljava/awt/GridBagLayout;
    .end local v3    # "c":Ljava/awt/GridBagConstraints;
    .end local v4    # "allPriorities":[Lorg/apache/log4j/Level;
    .end local v5    # "ndcField":Ljavax/swing/JTextField;
    .end local v6    # "msgField":Ljavax/swing/JTextField;
    .end local v7    # "label":Ljavax/swing/JLabel;
    .end local v8    # "priorities":Ljavax/swing/JComboBox;
    .end local v9    # "exitButton":Ljavax/swing/JButton;
    .end local v10    # "clearButton":Ljavax/swing/JButton;
    .end local v11    # "toggleButton":Ljavax/swing/JButton;
    .end local v12    # "threadField":Ljavax/swing/JTextField;
    .end local v14    # "catField":Ljavax/swing/JTextField;
    .end local v15    # "lowest":Lorg/apache/log4j/Level;
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 39
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
