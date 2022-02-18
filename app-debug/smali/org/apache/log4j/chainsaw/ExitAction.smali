.class Lorg/apache/log4j/chainsaw/ExitAction;
.super Ljavax/swing/AbstractAction;
.source "ExitAction.java"


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ExitAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ExitAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    .line 34
    new-instance v0, Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/ExitAction;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 28
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


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "aIgnore"    # Ljava/awt/event/ActionEvent;

    .line 44
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "shutting down"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 46
    return-void
.end method
