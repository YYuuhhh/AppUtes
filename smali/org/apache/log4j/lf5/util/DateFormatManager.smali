.class public Lorg/apache/log4j/lf5/util/DateFormatManager;
.super Ljava/lang/Object;
.source "DateFormatManager.java"


# instance fields
.field private _dateFormat:Ljava/text/DateFormat;

.field private _locale:Ljava/util/Locale;

.field private _pattern:Ljava/lang/String;

.field private _timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 60
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 80
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 73
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 74
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 103
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 104
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 66
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 67
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 95
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 96
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 87
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 88
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 89
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 52
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 111
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 112
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 113
    iput-object p3, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    .line 115
    return-void
.end method

.method private declared-synchronized configure()V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 231
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 233
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 187
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 193
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 195
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getDateFormatInstance()Ljava/text/DateFormat;
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocale()Ljava/util/Locale;
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputFormat()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 165
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPattern()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeZone()Ljava/util/TimeZone;
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 213
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 215
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized setDateFormatInstance(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    monitor-enter p0

    .line 182
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    .end local p1    # "dateFormat":Ljava/text/DateFormat;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    monitor-enter p0

    .line 143
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 144
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 142
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    .end local p1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutputFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    monitor-enter p0

    .line 173
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    monitor-enter p0

    .line 155
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    monitor-enter p0

    .line 130
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 131
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lorg/apache/log4j/lf5/util/DateFormatManager;
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
