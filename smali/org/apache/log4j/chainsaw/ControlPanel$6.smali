.class Lorg/apache/log4j/chainsaw/ControlPanel$6;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final synthetic val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/chainsaw/ControlPanel;
    .param p2, "val$aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "aEvent"    # Ljava/awt/event/ActionEvent;

    .line 202
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$6;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->clear()V

    .line 203
    return-void
.end method
