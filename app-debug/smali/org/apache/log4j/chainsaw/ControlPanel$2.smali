.class Lorg/apache/log4j/chainsaw/ControlPanel$2;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final synthetic val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private final synthetic val$threadField:Ljavax/swing/JTextField;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/chainsaw/ControlPanel;
    .param p2, "val$aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p3, "val$threadField"    # Ljavax/swing/JTextField;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iput-object p3, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    return-void
.end method


# virtual methods
.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .line 128
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvente"    # Ljavax/swing/event/DocumentEvent;

    .line 125
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    .line 126
    return-void
.end method
