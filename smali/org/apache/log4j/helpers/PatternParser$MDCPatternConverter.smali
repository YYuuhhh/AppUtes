.class Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDCPatternConverter"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "key"    # Ljava/lang/String;

    .line 457
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 458
    iput-object p2, p0, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;->key:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 463
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 465
    const/4 v1, 0x0

    return-object v1

    .line 467
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
