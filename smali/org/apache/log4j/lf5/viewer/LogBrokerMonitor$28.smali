.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;
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

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 1184
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 1186
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCTextFilter(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1188
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    .line 1189
    return-void
.end method
