.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;
.super Ljava/awt/event/KeyAdapter;
.source "LogFactor5InputDialog.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    .line 85
    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    return-void
.end method


# virtual methods
.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 86
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 89
    :cond_0
    return-void
.end method
