.class public Lorg/apache/log4j/jmx/Agent;
.super Ljava/lang/Object;


# static fields
.field static synthetic class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

.field static log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.jmx.Agent"

    invoke-static {v0}, Lorg/apache/log4j/jmx/Agent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public start()V
    .locals 5

    invoke-static {}, Ljavax/management/MBeanServerFactory;->createMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    new-instance v1, Lcom/sun/jdmk/comm/HtmlAdaptorServer;

    invoke-direct {v1}, Lcom/sun/jdmk/comm/HtmlAdaptorServer;-><init>()V

    :try_start_0
    sget-object v2, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v3, "Registering HtmlAdaptorServer instance."

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    new-instance v2, Ljavax/management/ObjectName;

    const-string v3, "Adaptor:name=html,port=8082"

    invoke-direct {v2, v3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    sget-object v2, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v3, "Registering HierarchyDynamicMBean instance."

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;

    invoke-direct {v2}, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;-><init>()V

    new-instance v3, Ljavax/management/ObjectName;

    const-string v4, "log4j:hiearchy=default"

    invoke-direct {v3, v4}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/sun/jdmk/comm/CommunicatorServer;->start()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v2, "Problem while regitering MBeans instances."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
