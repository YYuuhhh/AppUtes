.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "CategoryNodeRenderer.java"


# static fields
.field public static final FATAL_CHILDREN:Ljava/awt/Color;

.field protected static _sat:Ljavax/swing/ImageIcon;


# instance fields
.field protected _checkBox:Ljavax/swing/JCheckBox;

.field protected _panel:Ljavax/swing/JPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xbd

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 42
    new-instance v0, Ljavax/swing/JCheckBox;

    invoke-direct {v0}, Ljavax/swing/JCheckBox;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    .line 43
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    .line 55
    const-string v1, "Tree.textBackground"

    invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComponent;->setBackground(Ljava/awt/Color;)V

    .line 57
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"

    .line 61
    .local v0, "resource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 63
    .local v1, "satURL":Ljava/net/URL;
    new-instance v2, Ljavax/swing/ImageIcon;

    invoke-direct {v2, v1}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    sput-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    .line 66
    .end local v0    # "resource":Ljava/lang/String;
    .end local v1    # "satURL":Ljava/net/URL;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setOpaque(Z)V

    .line 67
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v1, v0}, Ljavax/swing/JComponent;->setOpaque(Z)V

    .line 68
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v1, v0}, Ljavax/swing/JComponent;->setOpaque(Z)V

    .line 72
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2, v0, v0, v0}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 73
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 74
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v0, p0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 76
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 77
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 78
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " contains a total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTotalNumberOfRecords()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, " LogRecords."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, " Right-click for more info."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCheckBoxOffset()Ljava/awt/Dimension;
    .locals 2

    .line 119
    new-instance v0, Ljava/awt/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 3
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "selected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I
    .param p7, "hasFocus"    # Z

    .line 90
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 95
    .local v0, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    .line 99
    if-nez p6, :cond_0

    .line 101
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->setVisible(Z)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->setVisible(Z)V

    .line 104
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/AbstractButton;->setSelected(Z)V

    .line 106
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "toolTip":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v2, v1}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Ljavax/swing/JComponent;->setForeground(Ljava/awt/Color;)V

    .line 111
    :cond_1
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalRecords()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Ljavax/swing/JComponent;->setForeground(Ljava/awt/Color;)V

    .line 115
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    return-object v2
.end method
