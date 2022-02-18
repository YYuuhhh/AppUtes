.class Lorg/apache/log4j/chainsaw/XMLFileHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLFileHandler.java"


# static fields
.field private static final TAG_EVENT:Ljava/lang/String; = "log4j:event"

.field private static final TAG_LOCATION_INFO:Ljava/lang/String; = "log4j:locationInfo"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "log4j:message"

.field private static final TAG_NDC:Ljava/lang/String; = "log4j:NDC"

.field private static final TAG_THROWABLE:Ljava/lang/String; = "log4j:throwable"


# instance fields
.field private final mBuf:Ljava/lang/StringBuffer;

.field private mCategoryName:Ljava/lang/String;

.field private mLevel:Lorg/apache/log4j/Level;

.field private mLocationDetails:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private final mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private mNDC:Ljava/lang/String;

.field private mNumEvents:I

.field private mThreadName:Ljava/lang/String;

.field private mThrowableStrRep:[Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 1
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 74
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    .line 75
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 76
    return-void
.end method

.method private addEvent()V
    .locals 12

    .line 147
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    new-instance v11, Lorg/apache/log4j/chainsaw/EventDetails;

    iget-wide v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    iget-object v5, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/apache/log4j/chainsaw/MyTableModel;->addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V

    .line 155
    iget v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    .line 156
    return-void
.end method

.method private resetData()V
    .locals 2

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    .line 162
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "aChars"    # [C
    .param p2, "aStart"    # I
    .param p3, "aLength"    # I

    .line 87
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "aNamespaceURI"    # Ljava/lang/String;
    .param p2, "aLocalName"    # Ljava/lang/String;
    .param p3, "aQName"    # Ljava/lang/String;

    .line 95
    const-string v0, "log4j:event"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->addEvent()V

    .line 97
    invoke-direct {p0}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->resetData()V

    goto :goto_1

    .line 98
    :cond_0
    const-string v0, "log4j:NDC"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNDC:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_1
    const-string v0, "log4j:message"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mMessage:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_2
    const-string v0, "log4j:throwable"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    .line 106
    array-length v2, v1

    if-lez v2, :cond_4

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThrowableStrRep:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "i":I
    :cond_4
    :goto_1
    return-void
.end method

.method getNumEvents()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    return v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mNumEvents:I

    .line 83
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "aNamespaceURI"    # Ljava/lang/String;
    .param p2, "aLocalName"    # Ljava/lang/String;
    .param p3, "aQName"    # Ljava/lang/String;
    .param p4, "aAtts"    # Lorg/xml/sax/Attributes;

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mBuf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 123
    const-string v0, "log4j:event"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "thread"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mThreadName:Ljava/lang/String;

    .line 125
    const-string v0, "timestamp"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mTimeStamp:J

    .line 126
    const-string v0, "logger"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mCategoryName:Ljava/lang/String;

    .line 127
    const-string v0, "level"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLevel:Lorg/apache/log4j/Level;

    goto :goto_0

    .line 128
    :cond_0
    const-string v0, "log4j:locationInfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "class"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "method"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "file"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "line"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/XMLFileHandler;->mLocationDetails:Ljava/lang/String;

    .line 134
    :cond_1
    :goto_0
    return-void
.end method
