.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;
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

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 1341
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 1342
    .local v0, "box":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 1343
    .local v1, "level":Lorg/apache/log4j/lf5/LogLevel;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setLeastSevereDisplayedLogLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 1344
    .end local v0    # "box":Ljavax/swing/JComboBox;
    .end local v1    # "level":Lorg/apache/log4j/lf5/LogLevel;
    return-void
.end method
