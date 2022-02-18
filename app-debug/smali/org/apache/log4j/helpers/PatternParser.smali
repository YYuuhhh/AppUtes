.class public Lorg/apache/log4j/helpers/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;,
        Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;
    }
.end annotation


# static fields
.field static final CLASS_LOCATION_CONVERTER:I = 0x3ea

.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field static final FILE_LOCATION_CONVERTER:I = 0x3ec

.field static final FULL_LOCATION_CONVERTER:I = 0x3e8

.field static final LEVEL_CONVERTER:I = 0x7d2

.field static final LINE_LOCATION_CONVERTER:I = 0x3eb

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field static final MESSAGE_CONVERTER:I = 0x7d4

.field static final METHOD_LOCATION_CONVERTER:I = 0x3e9

.field private static final MINUS_STATE:I = 0x2

.field private static final MIN_STATE:I = 0x4

.field static final NDC_CONVERTER:I = 0x7d3

.field static final RELATIVE_TIME_CONVERTER:I = 0x7d0

.field static final THREAD_CONVERTER:I = 0x7d1

.field static synthetic class$java$text$DateFormat:Ljava/lang/Class;


# instance fields
.field protected currentLiteral:Ljava/lang/StringBuffer;

.field protected formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

.field head:Lorg/apache/log4j/helpers/PatternConverter;

.field protected i:I

.field protected pattern:Ljava/lang/String;

.field protected patternLength:I

.field state:I

.field tail:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    .line 74
    new-instance v0, Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/FormattingInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    .line 79
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 82
    return-void
.end method

.method private addToList(Lorg/apache/log4j/helpers/PatternConverter;)V
    .locals 1
    .param p1, "pc"    # Lorg/apache/log4j/helpers/PatternConverter;

    .line 86
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    iput-object p1, v0, Lorg/apache/log4j/helpers/PatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    .line 90
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser;->tail:Lorg/apache/log4j/helpers/PatternConverter;

    .line 92
    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 242
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
.method protected addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V
    .locals 2
    .param p1, "pc"    # Lorg/apache/log4j/helpers/PatternConverter;

    .line 370
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 372
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 374
    iput v1, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 376
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    .line 377
    return-void
.end method

.method protected extractOption()Ljava/lang/String;
    .locals 3

    .line 96
    iget v0, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    const/16 v1, 0x7d

    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 98
    .local v0, "end":I
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    if-le v0, v1, :cond_0

    .line 99
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "r":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 101
    return-object v1

    .line 104
    .end local v0    # "end":I
    .end local v1    # "r":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractPrecisionOption()I
    .locals 5

    .line 113
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "opt":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "r":I
    if-eqz v0, :cond_1

    .line 117
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 118
    if-gtz v1, :cond_0

    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Precision option ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") isn\'t a positive integer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v1, 0x0

    .line 123
    :cond_0
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Category option \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" not a decimal integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v1
.end method

.method protected finalizeConverter(C)V
    .locals 10
    .param p1, "c"    # C

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "pc":Lorg/apache/log4j/helpers/PatternConverter;
    const/16 v1, 0x43

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_11

    const/16 v1, 0x46

    if-eq p1, v1, :cond_10

    const/16 v1, 0x58

    if-eq p1, v1, :cond_f

    const/16 v1, 0x70

    if-eq p1, v1, :cond_e

    const/16 v1, 0x72

    if-eq p1, v1, :cond_d

    const/16 v1, 0x74

    if-eq p1, v1, :cond_c

    const/16 v1, 0x78

    if-eq p1, v1, :cond_b

    const/16 v1, 0x4c

    if-eq p1, v1, :cond_a

    const/16 v1, 0x4d

    if-eq p1, v1, :cond_9

    const/16 v1, 0x63

    if-eq p1, v1, :cond_8

    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_0

    move-object v1, v2

    .local v1, "xOpt":Ljava/lang/String;
    move-object v4, v2

    .local v4, "df":Ljava/text/DateFormat;
    move-object v5, v2

    .line 359
    .local v2, "dOpt":Ljava/lang/String;
    .local v5, "dateFormatStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected char ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in conversion patterrn."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 361
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 362
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_2

    .line 233
    .end local v1    # "xOpt":Ljava/lang/String;
    .end local v2    # "dOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_0
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 303
    .local v1, "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x7d4

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 306
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 307
    move-object v9, v2

    move-object v1, v9

    .local v2, "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_1
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 289
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x3e8

    invoke-direct {v6, p0, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 293
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 294
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 249
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_2
    const-string v1, "ISO8601"

    .line 251
    .local v1, "dateFormatStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "dOpt":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 253
    move-object v1, v4

    move-object v5, v1

    goto :goto_0

    .line 252
    :cond_3
    move-object v5, v1

    .line 255
    .end local v1    # "dateFormatStr":Ljava/lang/String;
    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    :goto_0
    const-string v1, "ISO8601"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    new-instance v1, Lorg/apache/log4j/helpers/ISO8601DateFormat;

    invoke-direct {v1}, Lorg/apache/log4j/helpers/ISO8601DateFormat;-><init>()V

    .local v1, "df":Ljava/text/DateFormat;
    goto :goto_1

    .line 255
    .end local v1    # "df":Ljava/text/DateFormat;
    :cond_4
    move-object v1, v2

    .line 258
    .restart local v1    # "df":Ljava/text/DateFormat;
    const-string v6, "ABSOLUTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    new-instance v6, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;

    invoke-direct {v6}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    move-object v1, v6

    goto :goto_1

    .line 261
    :cond_5
    const-string v6, "DATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 263
    new-instance v6, Lorg/apache/log4j/helpers/DateTimeDateFormat;

    invoke-direct {v6}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>()V

    move-object v1, v6

    goto :goto_1

    .line 266
    :cond_6
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 267
    goto :goto_1

    .line 269
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not instantiate SimpleDateFormat with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    sget-object v7, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    if-nez v7, :cond_7

    const-string v7, "java.text.DateFormat"

    invoke-static {v7}, Lorg/apache/log4j/helpers/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/log4j/helpers/PatternParser;->class$java$text$DateFormat:Ljava/lang/Class;

    :cond_7
    const-string v8, "org.apache.log4j.helpers.ISO8601DateFormat"

    invoke-static {v8, v7, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/text/DateFormat;

    move-object v2, v6

    .line 276
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v6, v7, v1}, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/text/DateFormat;)V

    move-object v0, v6

    .line 279
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 280
    move-object v9, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 235
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "dOpt":Ljava/lang/String;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_8
    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;

    iget-object v4, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v5

    invoke-direct {v1, p0, v4, v5}, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v1

    .line 239
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    move-object v1, v2

    .local v1, "xOpt":Ljava/lang/String;
    move-object v4, v2

    .local v4, "df":Ljava/text/DateFormat;
    move-object v5, v2

    .local v2, "dOpt":Ljava/lang/String;
    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "xOpt":Ljava/lang/String;
    .end local v2    # "dOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_9
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 309
    .local v1, "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x3e9

    invoke-direct {v6, p0, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 313
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 314
    move-object v9, v2

    move-object v1, v9

    .local v2, "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_a
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 296
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x3eb

    invoke-direct {v6, p0, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 300
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 301
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_b
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 349
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x7d3

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 351
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 352
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_c
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 329
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x7d1

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 332
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 333
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_d
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 322
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x7d0

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 326
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 327
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto/16 :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_e
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 316
    .restart local v1    # "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x7d2

    invoke-direct {v6, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 319
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 320
    move-object v9, v2

    move-object v1, v9

    .restart local v2    # "xOpt":Ljava/lang/String;
    goto :goto_2

    .line 233
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_f
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .line 354
    .local v2, "dOpt":Ljava/lang/String;
    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractOption()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "xOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-direct {v6, v7, v1}, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/lang/String;)V

    move-object v0, v6

    .line 356
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 357
    goto :goto_2

    .line 233
    .end local v1    # "xOpt":Ljava/lang/String;
    .end local v2    # "dOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_10
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    move-object v1, v2

    .line 282
    .local v1, "dOpt":Ljava/lang/String;
    new-instance v6, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;

    iget-object v7, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    const/16 v8, 0x3ec

    invoke-direct {v6, p0, v7, v8}, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v6

    .line 286
    iget-object v6, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 287
    move-object v9, v2

    move-object v1, v9

    .local v2, "xOpt":Ljava/lang/String;
    goto :goto_2

    .line 242
    .end local v1    # "dOpt":Ljava/lang/String;
    .end local v2    # "xOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    :cond_11
    new-instance v1, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;

    iget-object v4, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {p0}, Lorg/apache/log4j/helpers/PatternParser;->extractPrecisionOption()I

    move-result v5

    invoke-direct {v1, p0, v4, v5}, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;-><init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V

    move-object v0, v1

    .line 246
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 247
    move-object v1, v2

    .local v1, "xOpt":Ljava/lang/String;
    move-object v4, v2

    .restart local v4    # "df":Ljava/text/DateFormat;
    move-object v5, v2

    .line 365
    .local v2, "dOpt":Ljava/lang/String;
    .restart local v5    # "dateFormatStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->addConverter(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 366
    .end local v0    # "pc":Lorg/apache/log4j/helpers/PatternConverter;
    .end local v1    # "xOpt":Ljava/lang/String;
    .end local v2    # "dOpt":Ljava/lang/String;
    .end local v4    # "df":Ljava/text/DateFormat;
    .end local v5    # "dateFormatStr":Ljava/lang/String;
    return-void
.end method

.method public parse()Lorg/apache/log4j/helpers/PatternConverter;
    .locals 9

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 135
    move v1, v0

    .local v1, "c":C
    :goto_0
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-lt v2, v3, :cond_1

    .line 223
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser;->head:Lorg/apache/log4j/helpers/PatternConverter;

    return-object v0

    .line 136
    .end local v1    # "c":C
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 137
    .restart local v1    # "c":C
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    const/16 v4, 0x2e

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-eq v2, v3, :cond_9

    const/4 v3, 0x5

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_4

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    if-lt v1, v8, :cond_3

    if-gt v1, v7, :cond_3

    .line 215
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v1, -0x30

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    .line 218
    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto :goto_0

    .line 191
    :cond_4
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    if-lt v1, v8, :cond_5

    if-gt v1, v7, :cond_5

    .line 193
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iget v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v1, -0x30

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    goto :goto_0

    .line 194
    :cond_5
    if-ne v1, v4, :cond_6

    .line 195
    iput v6, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto :goto_0

    .line 197
    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    .line 199
    goto :goto_0

    .line 201
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    if-lt v1, v8, :cond_8

    if-gt v1, v7, :cond_8

    .line 203
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v4, v1, -0x30

    iput v4, v2, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    .line 204
    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_0

    .line 207
    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error occured in position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 209
    iput v0, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 211
    goto/16 :goto_0

    .line 173
    :cond_9
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_c

    if-eq v1, v4, :cond_b

    .line 182
    if-lt v1, v8, :cond_a

    if-gt v1, v7, :cond_a

    .line 183
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    add-int/lit8 v3, v1, -0x30

    iput v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    .line 184
    iput v5, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    goto/16 :goto_0

    .line 187
    :cond_a
    invoke-virtual {p0, v1}, Lorg/apache/log4j/helpers/PatternParser;->finalizeConverter(C)V

    .line 189
    goto/16 :goto_0

    .line 179
    :cond_b
    iput v6, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 180
    goto/16 :goto_0

    .line 176
    :cond_c
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    iput-boolean v3, v2, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    .line 177
    goto/16 :goto_0

    .line 140
    :cond_d
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    iget v4, p0, Lorg/apache/log4j/helpers/PatternParser;->patternLength:I

    if-ne v2, v4, :cond_e

    .line 141
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_e
    const/16 v4, 0x25

    if-ne v1, v4, :cond_12

    .line 146
    iget-object v5, p0, Lorg/apache/log4j/helpers/PatternParser;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_11

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_10

    .line 156
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_f

    .line 157
    new-instance v2, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;

    iget-object v4, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/log4j/helpers/PatternParser;->addToList(Lorg/apache/log4j/helpers/PatternConverter;)V

    .line 162
    :cond_f
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    iput v3, p0, Lorg/apache/log4j/helpers/PatternParser;->state:I

    .line 165
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->formattingInfo:Lorg/apache/log4j/helpers/FormattingInfo;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/FormattingInfo;->reset()V

    goto/16 :goto_0

    .line 152
    :cond_10
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 154
    goto/16 :goto_0

    .line 148
    :cond_11
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    iget v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/log4j/helpers/PatternParser;->i:I

    .line 150
    goto/16 :goto_0

    .line 169
    :cond_12
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser;->currentLiteral:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    goto/16 :goto_0
.end method
