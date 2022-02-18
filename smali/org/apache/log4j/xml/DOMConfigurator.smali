.class public Lorg/apache/log4j/xml/DOMConfigurator;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    }
.end annotation


# static fields
.field static final ADDITIVITY_ATTR:Ljava/lang/String; = "additivity"

.field static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final APPENDER_TAG:Ljava/lang/String; = "appender"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final CATEGORY_FACTORY_TAG:Ljava/lang/String; = "categoryFactory"

.field static final CLASS_ATTR:Ljava/lang/String; = "class"

.field static final CONFIGURATION_TAG:Ljava/lang/String; = "log4j:configuration"

.field static final CONFIG_DEBUG_ATTR:Ljava/lang/String; = "configDebug"

.field static final EMPTY_STR:Ljava/lang/String; = ""

.field static final ERROR_HANDLER_TAG:Ljava/lang/String; = "errorHandler"

.field static final FILTER_TAG:Ljava/lang/String; = "filter"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final LAYOUT_TAG:Ljava/lang/String; = "layout"

.field static final LEVEL_TAG:Ljava/lang/String; = "level"

.field static final LOGGER:Ljava/lang/String; = "logger"

.field static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final NAME_ATTR:Ljava/lang/String; = "name"

.field static final OLD_CONFIGURATION_TAG:Ljava/lang/String; = "configuration"

.field static final ONE_STRING_PARAM:[Ljava/lang/Class;

.field static final PARAM_TAG:Ljava/lang/String; = "param"

.field static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field static final REF_ATTR:Ljava/lang/String; = "ref"

.field static final RENDERED_CLASS_ATTR:Ljava/lang/String; = "renderedClass"

.field static final RENDERER_TAG:Ljava/lang/String; = "renderer"

.field static final RENDERING_CLASS_ATTR:Ljava/lang/String; = "renderingClass"

.field static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final ROOT_TAG:Ljava/lang/String; = "root"

.field static final THRESHOLD_ATTR:Ljava/lang/String; = "threshold"

.field static final VALUE_ATTR:Ljava/lang/String; = "value"

.field static synthetic class$java$lang$String:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$Filter:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class; = null

.field static final dbfKey:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field appenderBag:Ljava/util/Hashtable;

.field props:Ljava/util/Properties;

.field repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    .line 117
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 69
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

.method public static configure(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 733
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 735
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 743
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 744
    return-void
.end method

.method public static configure(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .line 552
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    .line 553
    .local v0, "configurator":Lorg/apache/log4j/xml/DOMConfigurator;
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 554
    .end local v0    # "configurator":Lorg/apache/log4j/xml/DOMConfigurator;
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .locals 2
    .param p0, "configFilename"    # Ljava/lang/String;

    .line 567
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 568
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .locals 1
    .param p0, "configFilename"    # Ljava/lang/String;
    .param p1, "delay"    # J

    .line 584
    new-instance v0, Lorg/apache/log4j/xml/XMLWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/xml/XMLWatchdog;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "xdog":Lorg/apache/log4j/xml/XMLWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/helpers/FileWatchdog;->setDelay(J)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 587
    .end local v0    # "xdog":Lorg/apache/log4j/xml/XMLWatchdog;
    return-void
.end method

.method private final doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 4
    .param p1, "action"    # Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 691
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "System property is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    move-object v0, v1

    .line 695
    const-string v1, "Standard DocumentBuilderFactory search succeded."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 696
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DocumentBuilderFactory is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    .line 697
    nop

    .line 704
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 706
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 708
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lorg/apache/log4j/xml/SAXErrorHandler;

    invoke-direct {v2}, Lorg/apache/log4j/xml/SAXErrorHandler;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 709
    new-instance v2, Lorg/apache/log4j/xml/Log4jEntityResolver;

    invoke-direct {v2}, Lorg/apache/log4j/xml/Log4jEntityResolver;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 711
    invoke-interface {p1, v1}, Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;->parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 712
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 713
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 715
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    .end local v0    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 698
    .restart local v0    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1
    move-exception v1

    .local v1, "fce":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not instantiate a DocumentBuilderFactory."

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    throw v1
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 629
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$3;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/InputStream;)V

    .line 639
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 640
    .end local v0    # "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    return-void
.end method

.method public doConfigure(Ljava/io/Reader;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 650
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$4;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/Reader;)V

    .line 660
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 661
    .end local v0    # "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    return-void
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 596
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$1;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/lang/String;)V

    .line 604
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 605
    .end local v0    # "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 610
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$2;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V

    .line 618
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 619
    .end local v0    # "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    return-void
.end method

.method public doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 723
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V

    .line 725
    return-void
.end method

.method protected doConfigure(Lorg/xml/sax/InputSource;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 671
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    const-string v0, "dummy://log4j.dtd"

    invoke-virtual {p1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 674
    :cond_0
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$5;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Lorg/xml/sax/InputSource;)V

    .line 682
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 683
    .end local v0    # "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    return-void
.end method

.method protected findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 8
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "appenderName"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 126
    .local v0, "appender":Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_0

    .line 127
    return-object v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "element":Lorg/w3c/dom/Element;
    const-string v2, "appender"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 135
    .local v2, "list":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 137
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 138
    .local v5, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 139
    .local v6, "attrNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    move-object v1, v4

    check-cast v1, Lorg/w3c/dom/Element;

    .line 141
    nop

    .line 146
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "attrNode":Lorg/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_2

    .line 147
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No appender named ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] could be found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 148
    const/4 v4, 0x0

    return-object v4

    .line 150
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 151
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v4, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0

    .line 135
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 3
    .param p1, "appenderRef"    # Lorg/w3c/dom/Element;

    .line 161
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "appenderName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 163
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v2

    return-object v2
.end method

.method protected parse(Lorg/w3c/dom/Element;)V
    .locals 13
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .line 755
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "rootElementName":Ljava/lang/String;
    const-string v1, "log4j:configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const-string v1, "The <configuration> element has been deprecated."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 761
    const-string v1, "Use the <log4j:configuration> element instead."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_0
    const-string v1, "DOM element is - not a <log4j:configuration> element."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 764
    return-void

    .line 768
    :cond_1
    :goto_0
    const-string v1, "debug"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "debugAttrib":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "debug attribute= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 773
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "null"

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 774
    invoke-static {v1, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    goto :goto_1

    .line 776
    :cond_2
    const-string v4, "Ignoring debug attribute."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 780
    :goto_1
    const-string v4, "configDebug"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 781
    .local v4, "confDebug":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 782
    const-string v7, "The \"configDebug\" attribute is deprecated."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 783
    const-string v7, "Use the \"debug\" attribute instead."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 784
    invoke-static {v4, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 787
    :cond_3
    const-string v7, "threshold"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "thresholdStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Threshold =\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 790
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v2, v7}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Ljava/lang/String;)V

    .line 802
    :cond_4
    const/4 v2, 0x0

    .line 803
    .local v2, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 804
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .line 805
    .local v5, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 806
    .local v8, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 808
    .local v9, "length":I
    const/4 v10, 0x0

    .local v10, "loop":I
    :goto_2
    if-lt v10, v9, :cond_a

    .line 820
    const/4 v11, 0x0

    .local v11, "loop":I
    :goto_3
    if-lt v11, v9, :cond_5

    .line 835
    .end local v0    # "rootElementName":Ljava/lang/String;
    .end local v1    # "debugAttrib":Ljava/lang/String;
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "confDebug":Ljava/lang/String;
    .end local v5    # "currentNode":Lorg/w3c/dom/Node;
    .end local v7    # "thresholdStr":Ljava/lang/String;
    .end local v8    # "children":Lorg/w3c/dom/NodeList;
    .end local v9    # "length":I
    .end local v10    # "loop":I
    .end local v11    # "loop":I
    return-void

    .line 821
    .restart local v0    # "rootElementName":Ljava/lang/String;
    .restart local v1    # "debugAttrib":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v4    # "confDebug":Ljava/lang/String;
    .restart local v5    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v7    # "thresholdStr":Ljava/lang/String;
    .restart local v8    # "children":Lorg/w3c/dom/NodeList;
    .restart local v9    # "length":I
    .restart local v10    # "loop":I
    .restart local v11    # "loop":I
    :cond_5
    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 822
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v6, :cond_9

    .line 823
    move-object v3, v5

    check-cast v3, Lorg/w3c/dom/Element;

    .line 824
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 826
    const-string v12, "category"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "logger"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    .line 828
    :cond_6
    const-string v12, "root"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 829
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRoot(Lorg/w3c/dom/Element;)V

    goto :goto_5

    .line 830
    :cond_7
    const-string v12, "renderer"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 831
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRenderer(Lorg/w3c/dom/Element;)V

    goto :goto_5

    .line 827
    :cond_8
    :goto_4
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategory(Lorg/w3c/dom/Element;)V

    .line 820
    :cond_9
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 809
    .end local v11    # "loop":I
    :cond_a
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 810
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-ne v11, v6, :cond_b

    .line 811
    move-object v3, v5

    check-cast v3, Lorg/w3c/dom/Element;

    .line 812
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 814
    const-string v11, "categoryFactory"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 815
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategoryFactory(Lorg/w3c/dom/Element;)V

    .line 808
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method protected parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 14
    .param p1, "appenderElement"    # Lorg/w3c/dom/Element;

    .line 171
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class name: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "instance":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/apache/log4j/Appender;

    .line 176
    .local v2, "appender":Lorg/apache/log4j/Appender;
    new-instance v3, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v3, v2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 178
    .local v3, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const-string v4, "name"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 180
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 181
    .local v4, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 183
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_0
    if-lt v6, v5, :cond_0

    .line 220
    invoke-virtual {v3}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 221
    return-object v2

    .line 184
    :cond_0
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 187
    .local v7, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 188
    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    .line 191
    .local v8, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 192
    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto/16 :goto_1

    .line 195
    :cond_1
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "layout"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    invoke-virtual {p0, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V

    goto/16 :goto_1

    .line 199
    :cond_2
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "filter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 200
    invoke-virtual {p0, v8, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto/16 :goto_1

    .line 202
    :cond_3
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "errorHandler"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 203
    invoke-virtual {p0, v8, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 205
    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "appender-ref"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 206
    const-string v9, "ref"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "refName":Ljava/lang/String;
    instance-of v10, v2, Lorg/apache/log4j/spi/AppenderAttachable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "] to appender named ["

    if-eqz v10, :cond_5

    .line 208
    :try_start_1
    move-object v10, v2

    check-cast v10, Lorg/apache/log4j/spi/AppenderAttachable;

    .line 209
    .local v10, "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Attaching appender named ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/log4j/spi/AppenderAttachable;->addAppender(Lorg/apache/log4j/Appender;)V

    .end local v10    # "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    goto :goto_1

    .line 213
    :cond_5
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Requesting attachment of appender named ["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .end local v7    # "currentNode":Lorg/w3c/dom/Node;
    .end local v8    # "currentElement":Lorg/w3c/dom/Element;
    .end local v9    # "refName":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 226
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "appender":Lorg/apache/log4j/Appender;
    .end local v3    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    :catch_0
    move-exception v1

    .local v1, "oops":Ljava/lang/Exception;
    const-string v2, "Could not create an Appender. Reported error follows."

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const/4 v2, 0x0

    return-object v2
.end method

.method protected parseCategory(Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "loggerElement"    # Lorg/w3c/dom/Element;

    .line 310
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "catName":Ljava/lang/String;
    const-string v1, "class"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "className":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "Retreiving an instance of org.apache.log4j.Logger."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v2, v0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2

    .local v2, "cat":Lorg/apache/log4j/Logger;
    goto :goto_0

    .line 317
    .end local v2    # "cat":Lorg/apache/log4j/Logger;
    :cond_0
    const/4 v2, 0x0

    move-object v5, v2

    .line 322
    .local v5, "cat":Lorg/apache/log4j/Logger;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Desired logger sub-class: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 324
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 325
    .local v6, "clazz":Ljava/lang/Class;
    const-string v7, "getLogger"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 327
    .local v7, "getInstanceMethod":Ljava/lang/reflect/Method;
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Logger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v5    # "cat":Lorg/apache/log4j/Logger;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "cat":Lorg/apache/log4j/Logger;
    nop

    .line 338
    :goto_0
    monitor-enter v2

    .line 339
    :try_start_1
    const-string v5, "additivity"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 343
    .local v4, "additivity":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Setting ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] additivity to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v4}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 345
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 346
    .end local v4    # "additivity":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v0    # "catName":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cat":Lorg/apache/log4j/Logger;
    return-void

    .line 346
    .restart local v0    # "catName":Ljava/lang/String;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "cat":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 329
    .end local v2    # "cat":Lorg/apache/log4j/Logger;
    .restart local v5    # "cat":Lorg/apache/log4j/Logger;
    :catch_0
    move-exception v2

    .local v2, "oops":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not retrieve category ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]. Reported error follows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    return-void
.end method

.method protected parseCategoryFactory(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "factoryElement"    # Lorg/w3c/dom/Element;

    .line 355
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "className":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "Category Factory tag class attribute not found."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 359
    const-string v1, "No Category Factory configured."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Desired category factory: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 363
    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 366
    .local v1, "catFactory":Ljava/lang/Object;
    new-instance v2, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v2, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 368
    .local v2, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const/4 v3, 0x0

    .line 369
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 370
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 371
    .local v5, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 373
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_0
    if-lt v7, v6, :cond_2

    .line 383
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "catFactory":Ljava/lang/Object;
    .end local v2    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "children":Lorg/w3c/dom/NodeList;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    :goto_1
    return-void

    .line 374
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "catFactory":Ljava/lang/Object;
    .restart local v2    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v4    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v5    # "children":Lorg/w3c/dom/NodeList;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    :cond_2
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 375
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 376
    move-object v3, v4

    check-cast v3, Lorg/w3c/dom/Element;

    .line 377
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 378
    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 373
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 12
    .param p1, "catElement"    # Lorg/w3c/dom/Element;
    .param p2, "cat"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .line 406
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, p2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 410
    .local v0, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 413
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 414
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 416
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "loop":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 444
    invoke-virtual {v0}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 445
    .end local v0    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "length":I
    .end local v3    # "loop":I
    return-void

    .line 417
    .restart local v0    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "length":I
    .restart local v3    # "loop":I
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 419
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 420
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    .line 421
    .local v5, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "tagName":Ljava/lang/String;
    const-string v7, "appender-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 424
    move-object v7, v4

    check-cast v7, Lorg/w3c/dom/Element;

    .line 425
    .local v7, "appenderRef":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v8

    .line 426
    .local v8, "appender":Lorg/apache/log4j/Appender;
    const-string v9, "ref"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, "refName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 428
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Adding appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] to category ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 433
    :goto_1
    invoke-virtual {p2, v8}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .end local v7    # "appenderRef":Lorg/w3c/dom/Element;
    .end local v8    # "appender":Lorg/apache/log4j/Appender;
    .end local v9    # "refName":Ljava/lang/String;
    goto :goto_2

    .line 435
    :cond_2
    const-string v7, "level"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 436
    invoke-virtual {p0, v5, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 437
    :cond_3
    const-string v7, "priority"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 438
    invoke-virtual {p0, v5, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 439
    :cond_4
    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 440
    invoke-virtual {p0, v5, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 416
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "currentElement":Lorg/w3c/dom/Element;
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method protected parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .line 237
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/ErrorHandler;

    .line 242
    .local v0, "eh":Lorg/apache/log4j/spi/ErrorHandler;
    if-eqz v0, :cond_6

    .line 243
    invoke-interface {v0, p2}, Lorg/apache/log4j/spi/ErrorHandler;->setAppender(Lorg/apache/log4j/Appender;)V

    .line 245
    new-instance v1, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v1, v0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 246
    .local v1, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 247
    .local v2, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 249
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "loop":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 268
    invoke-virtual {v1}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 269
    invoke-interface {p2, v0}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    goto :goto_2

    .line 250
    :cond_1
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 251
    .local v5, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 252
    move-object v6, v5

    check-cast v6, Lorg/w3c/dom/Element;

    .line 253
    .local v6, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "param"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 255
    invoke-virtual {p0, v6, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_1

    .line 256
    :cond_2
    const-string v8, "appender-ref"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 257
    invoke-virtual {p0, v6}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 258
    :cond_3
    const-string v8, "logger-ref"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 259
    const-string v8, "ref"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "loggerName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v9, v8}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v9

    .line 261
    .local v9, "logger":Lorg/apache/log4j/Logger;
    invoke-interface {v0, v9}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    .end local v8    # "loggerName":Ljava/lang/String;
    .end local v9    # "logger":Lorg/apache/log4j/Logger;
    goto :goto_1

    .line 262
    :cond_4
    const-string v8, "root-ref"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 263
    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v8}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v8

    .line 264
    .local v8, "root":Lorg/apache/log4j/Logger;
    invoke-interface {v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    .line 249
    .end local v5    # "currentNode":Lorg/w3c/dom/Node;
    .end local v6    # "currentElement":Lorg/w3c/dom/Element;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "root":Lorg/apache/log4j/Logger;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .end local v1    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v2    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    .end local v4    # "loop":I
    :cond_6
    :goto_2
    return-void
.end method

.method protected parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .line 278
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "clazz":Ljava/lang/String;
    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.spi.Filter"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/Filter;

    .line 282
    .local v1, "filter":Lorg/apache/log4j/spi/Filter;
    if-eqz v1, :cond_3

    .line 283
    new-instance v2, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v2, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 284
    .local v2, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 285
    .local v3, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 287
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "loop":I
    :goto_0
    if-lt v5, v4, :cond_1

    .line 297
    invoke-virtual {v2}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 298
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Adding filter of type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] to appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 300
    invoke-interface {p2, v1}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    goto :goto_1

    .line 288
    :cond_1
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 289
    .local v6, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 290
    move-object v7, v6

    check-cast v7, Lorg/w3c/dom/Element;

    .line 291
    .local v7, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 293
    invoke-virtual {p0, v7, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 287
    .end local v6    # "currentNode":Lorg/w3c/dom/Node;
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "filter":Lorg/apache/log4j/spi/Filter;
    .end local v2    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v3    # "children":Lorg/w3c/dom/NodeList;
    .end local v4    # "length":I
    .end local v5    # "loop":I
    :cond_3
    :goto_1
    return-void
.end method

.method protected parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;
    .locals 11
    .param p1, "layout_element"    # Lorg/w3c/dom/Element;

    .line 452
    const-string v0, "class"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Parsing layout of class: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, "instance":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/apache/log4j/Layout;

    .line 457
    .local v2, "layout":Lorg/apache/log4j/Layout;
    new-instance v3, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v3, v2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 459
    .local v3, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 460
    .local v4, "params":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 462
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_0
    if-lt v6, v5, :cond_0

    .line 473
    invoke-virtual {v3}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 474
    return-object v2

    .line 463
    :cond_0
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 464
    .local v7, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 465
    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    .line 466
    .local v8, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 467
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 468
    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v7    # "currentNode":Lorg/w3c/dom/Node;
    .end local v8    # "currentElement":Lorg/w3c/dom/Element;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "layout":Lorg/apache/log4j/Layout;
    .end local v3    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v4    # "params":Lorg/w3c/dom/NodeList;
    .end local v5    # "length":I
    .end local v6    # "loop":I
    :catch_0
    move-exception v1

    .local v1, "oops":Ljava/lang/Exception;
    const-string v2, "Could not create the Layout. Reported error follows."

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    const/4 v2, 0x0

    return-object v2
.end method

.method protected parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .line 498
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "catName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 500
    const-string v0, "root"

    .line 503
    :cond_0
    const-string/jumbo v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "priStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Level value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 506
    const-string v2, "inherited"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    const-string v2, "class"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "className":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 515
    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v1, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_1

    .line 517
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Desired Level sub-class: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 519
    :try_start_0
    invoke-static {v2}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 520
    .local v4, "clazz":Ljava/lang/Class;
    const-string/jumbo v5, "toLevel"

    sget-object v6, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 522
    .local v5, "toLevelMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Level;

    .line 524
    .local v3, "pri":Lorg/apache/log4j/Level;
    invoke-virtual {p2, v3}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v3    # "pri":Lorg/apache/log4j/Level;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "toLevelMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 526
    :catch_0
    move-exception v3

    .local v3, "oops":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not create level ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]. Reported error follows."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    return-void

    .line 507
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "oops":Ljava/lang/Exception;
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 508
    const-string v2, "Root level cannot be inherited. Ignoring directive."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :cond_4
    invoke-virtual {p2, v3}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 532
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " level set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 533
    .end local v0    # "catName":Ljava/lang/String;
    .end local v1    # "priStr":Ljava/lang/String;
    return-void
.end method

.method protected parseRenderer(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .line 485
    const-string v0, "renderingClass"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "renderingClass":Ljava/lang/String;
    const-string v1, "renderedClass"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "renderedClass":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v3, v2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v3, :cond_0

    .line 488
    check-cast v2, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {v2, v1, v0}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v0    # "renderingClass":Ljava/lang/String;
    .end local v1    # "renderedClass":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected parseRoot(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .line 391
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 393
    .local v0, "root":Lorg/apache/log4j/Logger;
    monitor-enter v0

    .line 394
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 395
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v0    # "root":Lorg/apache/log4j/Logger;
    return-void

    .line 395
    .restart local v0    # "root":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    .locals 3
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "propSetter"    # Lorg/apache/log4j/config/PropertySetter;

    .line 537
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {p2, v0, v1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    return-void
.end method

.method protected subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 841
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 843
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not perform variable substitution."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    return-object p1
.end method
