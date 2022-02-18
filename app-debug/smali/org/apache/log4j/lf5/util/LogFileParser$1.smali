.class Lorg/apache/log4j/lf5/util/LogFileParser$1;
.super Ljava/lang/Object;
.source "LogFileParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/util/LogFileParser;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/lf5/util/LogFileParser;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-static {v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    .line 136
    return-void
.end method
