.class public Lorg/apache/log4j/net/SMTPAppender;
.super Lorg/apache/log4j/AppenderSkeleton;


# static fields
.field static synthetic class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;


# instance fields
.field private bcc:Ljava/lang/String;

.field private bufferSize:I

.field protected cb:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private cc:Ljava/lang/String;

.field protected evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

.field private from:Ljava/lang/String;

.field private locationInfo:Z

.field protected msg:Ljavax/mail/Message;

.field private smtpDebug:Z

.field private smtpHost:Ljava/lang/String;

.field private smtpPassword:Ljava/lang/String;

.field private smtpUsername:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/net/DefaultEvaluator;

    invoke-direct {v0}, Lorg/apache/log4j/net/DefaultEvaluator;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;-><init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    const/16 v1, 0x200

    iput v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    iput-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    iget v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    invoke-direct {v0, v1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object p0
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
.method public activateOptions()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->createSession()Ljavax/mail/Session;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->addressMessage(Ljavax/mail/Message;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not activate SMTPAppender options."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected addressMessage(Ljavax/mail/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V

    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_3
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-interface {v0, p1}, Lorg/apache/log4j/spi/TriggeringEventEvaluator;->isTriggeringEvent(Lorg/apache/log4j/spi/LoggingEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->sendBuffer()V

    :cond_2
    return-void
.end method

.method protected checkEntryConditions()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Message object not configured."

    :goto_0
    invoke-interface {v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    const-string v2, "]."

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No TriggeringEventEvaluator is set for appender ["

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No layout set for appender named ["

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createSession()Ljavax/mail/Session;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "mail.smtp.host"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v1, "mail.smtp.auth"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/log4j/net/SMTPAppender$1;

    invoke-direct {v1, p0}, Lorg/apache/log4j/net/SMTPAppender$1;-><init>(Lorg/apache/log4j/net/SMTPAppender;)V

    :cond_1
    invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->setDebug(Z)V

    :cond_2
    return-object v0
.end method

.method getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 4

    :try_start_0
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "]."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    return v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getEvaluatorClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    return v0
.end method

.method public getSMTPDebug()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    return v0
.end method

.method public getSMTPHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    return-object v0
.end method

.method parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "]."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected sendBuffer()V
    .locals 8

    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v2}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v2}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v2}, Lorg/apache/log4j/Layout;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-static {v0}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v5}, Lorg/apache/log4j/helpers/CyclicBuffer;->get()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v6, v5}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v6}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move v6, v3

    :goto_1
    array-length v7, v5

    if-lt v6, v7, :cond_3

    goto :goto_2

    :cond_3
    aget-object v7, v5, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while sending e-mail notification."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public setBcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    iput p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->resize(I)V

    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    return-void
.end method

.method public setEvaluatorClass(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.spi.TriggeringEventEvaluator"

    invoke-static {v0}, Lorg/apache/log4j/net/SMTPAppender;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    return-void
.end method

.method public setSMTPDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    return-void
.end method

.method public setSMTPHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    return-void
.end method

.method public setSMTPPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-void
.end method

.method public setSMTPUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    return-void
.end method
