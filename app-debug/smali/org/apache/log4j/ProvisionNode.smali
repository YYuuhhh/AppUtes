.class Lorg/apache/log4j/ProvisionNode;
.super Ljava/util/Vector;
.source "ProvisionNode.java"


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
