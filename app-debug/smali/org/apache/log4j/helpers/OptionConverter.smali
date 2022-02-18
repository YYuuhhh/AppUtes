.class public Lorg/apache/log4j/helpers/OptionConverter;
.super Ljava/lang/Object;
.source "OptionConverter.java"


# static fields
.field static DELIM_START:Ljava/lang/String;

.field static DELIM_START_LEN:I

.field static DELIM_STOP:C

.field static DELIM_STOP_LEN:I

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$Level:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "${"

    sput-object v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START:Ljava/lang/String;

    .line 40
    const/16 v0, 0x7d

    sput-char v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP:C

    .line 41
    const/4 v0, 0x2

    sput v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START_LEN:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP_LEN:I

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
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

.method public static concatanateArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "l"    # [Ljava/lang/String;
    .param p1, "r"    # [Ljava/lang/String;

    .line 50
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 51
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 53
    .local v1, "a":[Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v1
.end method

.method public static convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 67
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "c":C
    :goto_0
    if-lt v2, v0, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 68
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 69
    .local v2, "c":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_9

    .line 70
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 71
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 72
    :cond_1
    const/16 v3, 0x72

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 73
    :cond_2
    const/16 v3, 0x74

    if-ne v2, v3, :cond_3

    const/16 v2, 0x9

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 74
    :cond_3
    const/16 v3, 0x66

    if-ne v2, v3, :cond_4

    const/16 v2, 0xc

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 75
    :cond_4
    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    const/16 v2, 0x8

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 76
    :cond_5
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    const/16 v2, 0x22

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 77
    :cond_6
    const/16 v3, 0x27

    if-ne v2, v3, :cond_7

    const/16 v2, 0x27

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 78
    :cond_7
    if-ne v2, v4, :cond_8

    const/16 v2, 0x5c

    :cond_8
    move v3, v2

    move v2, v5

    goto :goto_1

    .line 69
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v6, v3

    move v3, v2

    move v2, v6

    .line 80
    .local v2, "i":I
    .local v3, "c":C
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    .line 291
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x0

    return-object v1

    .line 296
    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 298
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bad option value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Was not allowed to read system property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 103
    return-object p1
.end method

.method public static instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "superClass"    # Ljava/lang/Class;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 317
    const-string v0, "]."

    if-eqz p0, :cond_1

    .line 319
    :try_start_0
    invoke-static {p0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    .local v1, "classObj":Ljava/lang/Class;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "A \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" object is not assignable to a \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" variable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" was loaded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] whereas object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" was loaded by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 327
    return-object p2

    .line 329
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 331
    .end local v1    # "classObj":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object p2
.end method

.method public static instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "superClass"    # Ljava/lang/Class;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 114
    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 117
    return-object p3

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static selectAndConfigure(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "configurator":Lorg/apache/log4j/spi/Configurator;
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "filename":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const-string p1, "org.apache.log4j.xml.DOMConfigurator"

    .line 457
    :cond_0
    if-eqz p1, :cond_2

    .line 458
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Preferred configurator class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 459
    sget-object v2, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.log4j.spi.Configurator"

    invoke-static {v2}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;

    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/spi/Configurator;

    .line 462
    if-nez v0, :cond_3

    .line 463
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate configurator ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 464
    return-void

    .line 467
    :cond_2
    new-instance v2, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v2}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    move-object v0, v2

    .line 470
    :cond_3
    invoke-interface {v0, p0, p2}, Lorg/apache/log4j/spi/Configurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 471
    .end local v0    # "configurator":Lorg/apache/log4j/spi/Configurator;
    .end local v1    # "filename":Ljava/lang/String;
    return-void
.end method

.method public static substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 383
    .local v1, "i":I
    nop

    .line 384
    :goto_0
    sget-object v2, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 385
    .local v2, "j":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 387
    if-nez v1, :cond_0

    .line 388
    return-object p0

    .line 390
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 394
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    sget-char v4, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP:C

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 396
    .local v4, "k":I
    if-eq v4, v3, :cond_4

    .line 401
    sget v3, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START_LEN:I

    add-int/2addr v2, v3

    .line 402
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "key":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "replacement":Ljava/lang/String;
    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 407
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    :cond_2
    if-eqz v5, :cond_3

    .line 416
    invoke-static {v5, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "recursiveReplacement":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    .end local v6    # "recursiveReplacement":Ljava/lang/String;
    :cond_3
    sget v6, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP_LEN:I

    add-int v1, v4, v6

    .line 383
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_0

    .line 397
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" has no closing brace. Opening brace at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static toBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # Z

    .line 134
    if-nez p0, :cond_0

    .line 135
    return p1

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "trimmedVal":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x1

    return v1

    .line 139
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const/4 v1, 0x0

    return v1

    .line 141
    :cond_2
    return p1
.end method

.method public static toFileSize(Ljava/lang/String;J)J
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # J

    .line 251
    if-nez p0, :cond_0

    .line 252
    return-wide p1

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "s":Ljava/lang/String;
    const-wide/16 v1, 0x1

    .line 258
    .local v1, "multiplier":J
    const-string v3, "KB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 259
    const-wide/16 v1, 0x400

    .line 260
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    const-string v3, "MB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    if-eq v3, v6, :cond_2

    .line 263
    const-wide/32 v1, 0x100000

    .line 264
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_2
    const-string v3, "GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    if-eq v3, v6, :cond_3

    .line 267
    const-wide/32 v1, 0x40000000

    .line 268
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 272
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v5, v1

    return-wide v5

    .line 275
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "] is not in proper int form."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 276
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] not in expected format."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-wide p1
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # I

    .line 147
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 153
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not in proper int form."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return p1
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 16
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Lorg/apache/log4j/Level;

    move-object/from16 v1, p1

    const-string v2, "class ["

    const-string v3, "custom level class ["

    .line 183
    if-nez p0, :cond_0

    .line 184
    return-object v1

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 188
    .end local p0    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    const/16 v0, 0x23

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 189
    .local v5, "hashIndex":I
    const/4 v0, -0x1

    const-string v6, "NULL"

    const/4 v7, 0x0

    if-ne v5, v0, :cond_2

    .line 190
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    return-object v7

    .line 194
    :cond_1
    invoke-static {v4, v1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0

    .line 198
    :cond_2
    move-object/from16 v8, p1

    .line 200
    .local v8, "result":Lorg/apache/log4j/Level;
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "clazz":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, "levelName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    return-object v7

    .line 208
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "toLevel:class=["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v11, "]"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v12, ":pri=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 212
    :try_start_0
    invoke-static {v9}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    .line 216
    .local v6, "customLevel":Ljava/lang/Class;
    const/4 v12, 0x2

    :try_start_1
    new-array v13, v12, [Ljava/lang/Class;

    sget-object v14, Lorg/apache/log4j/helpers/OptionConverter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v14, :cond_4

    const-string v14, "java.lang.String"

    invoke-static {v14}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    sput-object v14, Lorg/apache/log4j/helpers/OptionConverter;->class$java$lang$String:Ljava/lang/Class;

    :cond_4
    aput-object v14, v13, v0

    sget-object v14, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v14, :cond_5

    const-string v14, "org.apache.log4j.Level"

    invoke-static {v14}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    sput-object v14, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :cond_5
    const/4 v15, 0x1

    aput-object v14, v13, v15
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 219
    .local v13, "paramTypes":[Ljava/lang/Class;
    :try_start_2
    const-string/jumbo v14, "toLevel"

    invoke-virtual {v6, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 223
    .local v14, "toLevelMethod":Ljava/lang/reflect/Method;
    :try_start_3
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v0

    aput-object v1, v12, v15
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 224
    .local v12, "params":[Ljava/lang/Object;
    :try_start_4
    invoke-virtual {v14, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    .line 226
    .local v7, "o":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lorg/apache/log4j/Level;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v8, v0

    .line 227
    .end local v6    # "customLevel":Ljava/lang/Class;
    .end local v7    # "o":Ljava/lang/Object;
    .end local v12    # "params":[Ljava/lang/Object;
    .end local v13    # "paramTypes":[Ljava/lang/Class;
    .end local v14    # "toLevelMethod":Ljava/lang/reflect/Method;
    goto/16 :goto_e

    .line 242
    :catch_0
    move-exception v0

    move-object v3, v6

    .local v3, "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v14

    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v11, v12

    goto :goto_1

    .line 239
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v14

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v11, v12

    goto :goto_3

    .line 242
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v14

    goto :goto_0

    .line 239
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v14

    goto :goto_2

    .line 236
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v14

    goto :goto_4

    .line 242
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    move-object v11, v7

    .local v11, "e":Ljava/lang/ClassCastException;
    :goto_1
    move-object v12, v7

    .local v12, "e":Ljava/lang/IllegalAccessException;
    move-object v7, v13

    goto :goto_6

    .line 239
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v11    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_2
    move-object v11, v7

    .restart local v11    # "e":Ljava/lang/ClassCastException;
    :goto_3
    move-object v7, v13

    goto :goto_8

    .line 236
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :catch_7
    move-exception v0

    move-object v3, v6

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_4
    move-object v7, v13

    goto/16 :goto_a

    .line 233
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v0

    move-object v2, v6

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v13

    goto/16 :goto_c

    .line 242
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_9
    move-exception v0

    move-object v3, v6

    goto :goto_5

    .line 239
    :catch_a
    move-exception v0

    move-object v3, v6

    goto :goto_7

    .line 236
    :catch_b
    move-exception v0

    move-object v3, v6

    goto :goto_9

    .line 233
    :catch_c
    move-exception v0

    move-object v2, v6

    goto/16 :goto_b

    .line 230
    :catch_d
    move-exception v0

    move-object v2, v6

    goto/16 :goto_d

    .line 242
    :catch_e
    move-exception v0

    move-object v3, v7

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_5
    move-object v6, v7

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v11, v7

    .restart local v11    # "e":Ljava/lang/ClassCastException;
    move-object v12, v7

    .local v0, "e":Ljava/lang/Exception;
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    .restart local v12    # "e":Ljava/lang/IllegalAccessException;
    :goto_6
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v13, "], level ["

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v13, "] conversion failed."

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    :catch_f
    move-exception v0

    move-object v3, v7

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_7
    move-object v6, v7

    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v11, v7

    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v7    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v11    # "e":Ljava/lang/ClassCastException;
    :goto_8
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v12, "] cannot be instantiated due to access restrictions"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    goto/16 :goto_e

    .line 236
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :catch_10
    move-exception v0

    move-object v3, v7

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_9
    move-object v6, v7

    .local v0, "e":Ljava/lang/ClassCastException;
    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v7    # "e":Ljava/lang/NoSuchMethodException;
    :goto_a
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v11, "] is not a subclass of org.apache.log4j.Level"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    goto :goto_e

    .line 233
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_11
    move-exception v0

    move-object v2, v7

    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_b
    move-object v6, v7

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :goto_c
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, " could not be instantiated"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    goto :goto_e

    .line 230
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_12
    move-exception v0

    move-object v2, v7

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_d
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " does not have a constructor which takes one string parameter"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    goto :goto_e

    .line 228
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_13
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 229
    nop

    .line 245
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_e
    return-object v8
.end method
