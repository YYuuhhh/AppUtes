.class public Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5InputDialog.java"


# static fields
.field public static final SIZE:I = 0x1e


# instance fields
.field private _textField:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .line 61
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "size"    # I

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 75
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 76
    .local v0, "bottom":Ljavax/swing/JPanel;
    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 78
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 79
    .local v1, "main":Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 80
    new-instance v2, Ljavax/swing/JLabel;

    invoke-direct {v2, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 81
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, p4}, Ljavax/swing/JTextField;-><init>(I)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    .line 82
    invoke-virtual {v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 84
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;

    invoke-direct {v2, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {p0, v2}, Ljava/awt/Component;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 92
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Ok"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "ok":Ljavax/swing/JButton;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;

    invoke-direct {v3, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 99
    new-instance v3, Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-direct {v3, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "cancel":Ljavax/swing/JButton;
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;

    invoke-direct {v4, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {v3, v4}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 110
    invoke-virtual {v0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 111
    invoke-virtual {v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 112
    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    const-string v5, "Center"

    invoke-virtual {v4, v1, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    const-string v5, "South"

    invoke-virtual {v4, v0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    .line 115
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->centerWindow(Ljava/awt/Window;)V

    .line 116
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->show()V

    .line 117
    .end local v0    # "bottom":Ljavax/swing/JPanel;
    .end local v1    # "main":Ljavax/swing/JPanel;
    .end local v2    # "ok":Ljavax/swing/JButton;
    .end local v3    # "cancel":Ljavax/swing/JButton;
    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)Ljavax/swing/JTextField;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    .line 37
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    return-object v1

    .line 129
    :cond_0
    return-object v0
.end method
