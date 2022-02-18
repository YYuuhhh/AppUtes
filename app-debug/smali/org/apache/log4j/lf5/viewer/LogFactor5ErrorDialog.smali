.class public Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5ErrorDialog.java"


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .locals 5
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "message"    # Ljava/lang/String;

    .line 49
    const-string v0, "Error"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 51
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Ok"

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "ok":Ljavax/swing/JButton;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 58
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 59
    .local v1, "bottom":Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 60
    invoke-virtual {v1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 62
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    .line 63
    .local v2, "main":Ljavax/swing/JPanel;
    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 64
    invoke-virtual {p0, p2, v2}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V

    .line 66
    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "Center"

    invoke-virtual {v3, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "South"

    invoke-virtual {v3, v1, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->show()V

    .line 70
    .end local v0    # "ok":Ljavax/swing/JButton;
    .end local v1    # "bottom":Ljavax/swing/JPanel;
    .end local v2    # "main":Ljavax/swing/JPanel;
    return-void
.end method
