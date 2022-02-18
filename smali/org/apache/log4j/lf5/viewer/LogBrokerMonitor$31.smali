.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 1279
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 1280
    .local v0, "box":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1281
    .local v1, "size":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1283
    .local v2, "s":I
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSizeSilently(I)V

    .line 1284
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->refreshDetailTextArea()V

    .line 1285
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput v2, v3, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 1286
    .end local v0    # "box":Ljavax/swing/JComboBox;
    .end local v1    # "size":Ljava/lang/String;
    .end local v2    # "s":I
    return-void
.end method
