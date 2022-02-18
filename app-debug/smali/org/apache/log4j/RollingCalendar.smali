.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 373
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 377
    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 11
    .param p1, "now"    # Ljava/util/Date;

    .line 388
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 390
    iget v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    const/16 v6, 0xb

    if-eq v0, v4, :cond_5

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-eq v0, v7, :cond_3

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    const/4 v10, 0x4

    if-eq v0, v10, :cond_1

    if-ne v0, v8, :cond_0

    move v0, v5

    .line 430
    .local v0, "hour":I
    invoke-virtual {p0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 431
    invoke-virtual {p0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 433
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 434
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 435
    invoke-virtual {p0, v7, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 436
    goto :goto_0

    .line 390
    .end local v0    # "hour":I
    :cond_0
    move v0, v5

    .line 438
    .restart local v0    # "hour":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown periodicity type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0    # "hour":I
    :cond_1
    move v0, v5

    .line 422
    .restart local v0    # "hour":I
    const/4 v7, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 423
    invoke-virtual {p0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 424
    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 425
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 426
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 427
    invoke-virtual {p0, v9, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 428
    goto :goto_0

    .line 390
    .end local v0    # "hour":I
    :cond_2
    move v0, v5

    .line 415
    .restart local v0    # "hour":I
    invoke-virtual {p0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 416
    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 417
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 418
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 419
    invoke-virtual {p0, v8, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 420
    goto :goto_0

    .line 403
    .end local v0    # "hour":I
    :cond_3
    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 404
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 405
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 406
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 407
    .restart local v0    # "hour":I
    if-ge v0, v3, :cond_4

    .line 408
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual {p0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 411
    invoke-virtual {p0, v8, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 413
    goto :goto_0

    .line 397
    .end local v0    # "hour":I
    :cond_5
    invoke-virtual {p0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 398
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 399
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 400
    invoke-virtual {p0, v6, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 401
    move v0, v5

    .restart local v0    # "hour":I
    goto :goto_0

    .line 392
    .end local v0    # "hour":I
    :cond_6
    invoke-virtual {p0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 393
    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 395
    move v0, v5

    .line 440
    .restart local v0    # "hour":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .locals 2
    .param p1, "now"    # Ljava/util/Date;

    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 380
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 381
    return-void
.end method
