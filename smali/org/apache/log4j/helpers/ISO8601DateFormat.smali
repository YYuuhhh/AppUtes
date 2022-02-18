.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J

.field private static lastTimeString:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 50
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 66
    .local v2, "now":J
    const-wide/16 v4, 0x3e8

    rem-long v4, v2, v4

    long-to-int v4, v4

    .line 68
    .local v4, "millis":I
    int-to-long v5, v4

    sub-long v5, v2, v5

    sget-wide v7, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    cmp-long v5, v5, v7

    const/16 v6, 0xa

    const/16 v7, 0x30

    if-eqz v5, :cond_4

    .line 73
    iget-object v5, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v8, p1

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 77
    .local v5, "start":I
    iget-object v9, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 78
    .local v9, "year":I
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    iget-object v10, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_0

    move-object v10, v11

    .line 94
    .local v10, "month":Ljava/lang/String;
    const-string v10, "-NA-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_0
    move-object v10, v11

    .line 93
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-12-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_1
    move-object v10, v11

    .line 92
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-11-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_2
    move-object v10, v11

    .line 91
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-10-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_3
    move-object v10, v11

    .line 90
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-09-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_4
    move-object v10, v11

    .line 89
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-08-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_5
    move-object v10, v11

    .line 88
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-07-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_6
    move-object v10, v11

    .line 87
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-06-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_7
    move-object v10, v11

    .line 86
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-05-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_8
    move-object v10, v11

    .line 85
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-04-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_9
    move-object v10, v11

    .line 84
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-03-"

    goto :goto_0

    .line 81
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_a
    move-object v10, v11

    .line 83
    .restart local v10    # "month":Ljava/lang/String;
    const-string v10, "-02-"

    goto :goto_0

    .line 82
    .end local v10    # "month":Ljava/lang/String;
    :pswitch_b
    const-string v10, "-01-"

    .line 96
    .restart local v10    # "month":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v11, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 99
    .local v11, "day":I
    if-ge v11, v6, :cond_0

    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_0
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const/16 v12, 0x20

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 106
    .local v12, "hour":I
    if-ge v12, v6, :cond_1

    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_1
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const/16 v13, 0x3a

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    iget-object v14, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 113
    .local v14, "mins":I
    if-ge v14, v6, :cond_2

    .line 114
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_2
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v13, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v15, 0xd

    invoke-virtual {v13, v15}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 120
    .local v13, "secs":I
    if-ge v13, v6, :cond_3

    .line 121
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    :cond_3
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    const/16 v15, 0x2c

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    sget-object v6, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v15, v6, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 129
    int-to-long v6, v4

    sub-long v6, v2, v6

    sput-wide v6, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    .end local v5    # "start":I
    .end local v9    # "year":I
    .end local v10    # "month":Ljava/lang/String;
    .end local v11    # "day":I
    .end local v12    # "hour":I
    .end local v13    # "secs":I
    .end local v14    # "mins":I
    goto :goto_1

    .line 132
    :cond_4
    move-object/from16 v8, p1

    sget-object v5, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 136
    :goto_1
    const/16 v5, 0x64

    if-ge v4, v5, :cond_5

    .line 137
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 136
    :cond_5
    const/16 v5, 0x30

    .line 138
    :goto_2
    const/16 v6, 0xa

    if-ge v4, v6, :cond_6

    .line 139
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method
