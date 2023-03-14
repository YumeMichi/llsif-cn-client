.class public final Lcom/greport/glog/util/TimeHelper;
.super Ljava/lang/Object;
.source "TimeHelper.java"


# static fields
.field public static final FORMAT_TYPE_DATE:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final FORMAT_TYPE_LONG_TIMESTAMP:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field public static final FORMAT_TYPE_MONTH:Ljava/lang/String; = "yyyy\u5e74MM\u6708"

.field public static final FORMAT_TYPE_SHORT_TIMESTAMP:Ljava/lang/String; = "yyyyMMddHHmmss"

.field public static final FORMAT_TYPE_TIMESTAMP:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDateRange(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 554
    invoke-virtual {p2, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static convertDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertLongTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertLongTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_2

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 00:00:00.000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertMonth(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertShortTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertShortTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "000000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getDayOfWeek(Ljava/util/Date;)I
    .locals 1

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 356
    invoke-static {v0}, Lcom/greport/glog/util/TimeHelper;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static getISO8601Timestamp(J)Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 761
    invoke-static {v0}, Lcom/greport/glog/util/TimeHelper;->convertLongTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 762
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS+08:00"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 763
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->convertLongTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNow()Ljava/util/Date;
    .locals 1

    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method private static getQuarter(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    const/4 v2, 0x5

    if-gt p0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-lt p0, v2, :cond_2

    const/16 v2, 0x8

    if-gt p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-lt p0, v0, :cond_3

    const/16 v0, 0xb

    if-gt p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getQuarter(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    .line 439
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->getQuarter(I)I

    move-result p0

    return p0
.end method

.method public static getQuarter(Ljava/util/Date;)I
    .locals 1

    .line 423
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 425
    invoke-static {v0}, Lcom/greport/glog/util/TimeHelper;->getQuarter(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x4

    .line 395
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(Ljava/util/Date;)I
    .locals 1

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 385
    invoke-static {v0}, Lcom/greport/glog/util/TimeHelper;->getWeekOfMonth(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 469
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 465
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 479
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 480
    invoke-static {v0, p0}, Lcom/greport/glog/util/TimeHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 474
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameHour(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 447
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 448
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/16 v1, 0xb

    .line 449
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 444
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameHour(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 458
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 459
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 460
    invoke-static {v0, p0}, Lcom/greport/glog/util/TimeHelper;->isSameHour(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 454
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 488
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 489
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 485
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 499
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 500
    invoke-static {v0, p0}, Lcom/greport/glog/util/TimeHelper;->isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 494
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameQuarter(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 508
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 509
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->getQuarter(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/greport/glog/util/TimeHelper;->getQuarter(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 505
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameQuarter(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 519
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 520
    invoke-static {v0, p0}, Lcom/greport/glog/util/TimeHelper;->isSameQuarter(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 514
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 528
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 525
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameYear(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 536
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 538
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    invoke-static {v0, p0}, Lcom/greport/glog/util/TimeHelper;->isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToDate(J)Ljava/util/Date;
    .locals 1

    .line 749
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 750
    invoke-static {v0}, Lcom/greport/glog/util/TimeHelper;->convertLongTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 751
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->convertTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static longToTimeString(J)Ljava/lang/String;
    .locals 2

    .line 740
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 742
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/greport/glog/util/TimeHelper;->longToDate(J)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-static {p0, p1, v0}, Lcom/greport/glog/util/TimeHelper;->millisToString(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static millisToString(JZ)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 696
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v3, 0x3e8

    .line 698
    div-long/2addr p0, v3

    const-wide/16 v3, 0x3c

    .line 699
    rem-long v5, p0, v3

    long-to-int v6, v5

    .line 700
    div-long/2addr p0, v3

    .line 701
    rem-long v7, p0, v3

    long-to-int v5, v7

    .line 702
    div-long/2addr p0, v3

    long-to-int v3, p0

    .line 706
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    check-cast v4, Ljava/text/DecimalFormat;

    const-string v7, "00"

    .line 707
    invoke-virtual {v4, v7}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    const-string v7, "-"

    const-string v8, ""

    if-eqz p2, :cond_6

    const-string p2, "min"

    cmp-long v9, p0, v0

    if-lez v9, :cond_2

    .line 710
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_2
    if-lez v5, :cond_4

    .line 712
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 714
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v8

    :goto_3
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_6
    const-string p2, ":"

    cmp-long v9, p0, v0

    if-lez v9, :cond_8

    .line 718
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, v8

    :goto_4
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p1, v6

    invoke-virtual {v4, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 720
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v7, v8

    :goto_5
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p1, v6

    invoke-virtual {v4, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method public static millisToText(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 691
    invoke-static {p0, p1, v0}, Lcom/greport/glog/util/TimeHelper;->millisToString(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Calendar;III)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 269
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0xb

    .line 272
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 p1, 0xc

    .line 275
    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->add(II)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Calendar;IIII)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 292
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0xb

    .line 295
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 p1, 0xc

    .line 298
    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->add(II)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p1, 0xd

    .line 301
    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->add(II)V

    .line 303
    :cond_3
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Calendar;IIIIII)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    .line 323
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x5

    .line 326
    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->add(II)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p1, 0xb

    .line 329
    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->add(II)V

    :cond_3
    if-eqz p5, :cond_4

    const/16 p1, 0xc

    .line 332
    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->add(II)V

    :cond_4
    if-eqz p6, :cond_5

    const/16 p1, 0xd

    .line 335
    invoke-virtual {p0, p1, p6}, Ljava/util/Calendar;->add(II)V

    .line 337
    :cond_5
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Date;III)Ljava/util/Date;
    .locals 1

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x5

    .line 183
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p0, 0xb

    .line 186
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 p0, 0xc

    .line 189
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->add(II)V

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Date;IIII)Ljava/util/Date;
    .locals 1

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x5

    .line 208
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p0, 0xb

    .line 211
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 p0, 0xc

    .line 214
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->add(II)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p0, 0xd

    .line 217
    invoke-virtual {v0, p0, p4}, Ljava/util/Calendar;->add(II)V

    .line 219
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static modify(Ljava/util/Date;IIIIII)Ljava/util/Date;
    .locals 1

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 238
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x2

    .line 241
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p0, 0x5

    .line 244
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->add(II)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p0, 0xb

    .line 247
    invoke-virtual {v0, p0, p4}, Ljava/util/Calendar;->add(II)V

    :cond_3
    if-eqz p5, :cond_4

    const/16 p0, 0xc

    .line 250
    invoke-virtual {v0, p0, p5}, Ljava/util/Calendar;->add(II)V

    :cond_4
    if-eqz p6, :cond_5

    const/16 p0, 0xd

    .line 253
    invoke-virtual {v0, p0, p6}, Ljava/util/Calendar;->add(II)V

    .line 255
    :cond_5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static toMessageTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 659
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->convertTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 660
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->toMessageTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMessageTimeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 670
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->convertTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 671
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->toMessageTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMessageTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const-string v0, "\u672a\u77e5\u65f6\u95f4"

    return-object v0

    .line 568
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 569
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 570
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 572
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x2

    .line 573
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x5

    .line 574
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0xb

    .line 575
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0xc

    .line 576
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v16, v13

    int-to-long v12, v1

    .line 578
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v18, v10

    int-to-long v9, v1

    .line 579
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v20, v4

    int-to-long v3, v1

    const/4 v1, 0x5

    .line 580
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0xb

    .line 581
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v22, v12

    int-to-long v11, v1

    .line 582
    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    cmp-long v13, v20, v9

    if-lez v13, :cond_1

    .line 587
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v9, "MM-dd HH:mm"

    cmp-long v10, v7, v3

    if-lez v10, :cond_2

    .line 589
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    cmp-long v3, v18, v5

    if-lez v3, :cond_3

    .line 591
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v3, "\u5206\u949f\u524d"

    cmp-long v4, v16, v11

    if-lez v4, :cond_5

    sub-long v13, v16, v11

    const-wide/16 v4, 0x2

    cmp-long v6, v13, v4

    if-gez v6, :cond_4

    cmp-long v4, v22, v1

    if-gez v4, :cond_4

    const-wide/16 v4, 0x3c

    add-long v12, v22, v4

    sub-long/2addr v12, v1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 597
    :cond_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    cmp-long v0, v22, v1

    if-lez v0, :cond_6

    sub-long v12, v22, v1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "\u521a\u521a"

    return-object v0
.end method

.method public static toMessageTimeString2(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    .line 613
    invoke-static/range {p0 .. p0}, Lcom/greport/glog/util/TimeHelper;->convertTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u672a\u77e5\u65f6\u95f4"

    return-object v0

    .line 616
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 618
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 620
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x2

    .line 621
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x5

    .line 622
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0xb

    .line 623
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0xc

    .line 624
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v16, v13

    int-to-long v12, v1

    .line 626
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v18, v10

    int-to-long v9, v1

    .line 627
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v20, v4

    int-to-long v3, v1

    const/4 v1, 0x5

    .line 628
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0xb

    .line 629
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-wide/from16 v22, v12

    int-to-long v11, v1

    .line 630
    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    cmp-long v13, v20, v9

    if-lez v13, :cond_1

    .line 633
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v9, "MM-dd"

    cmp-long v10, v7, v3

    if-lez v10, :cond_2

    .line 635
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    cmp-long v3, v18, v5

    if-lez v3, :cond_3

    .line 637
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v3, "\u5206\u949f\u524d"

    cmp-long v4, v16, v11

    if-lez v4, :cond_5

    sub-long v13, v16, v11

    const-wide/16 v4, 0x2

    cmp-long v6, v13, v4

    if-gez v6, :cond_4

    cmp-long v4, v22, v1

    if-gez v4, :cond_4

    const-wide/16 v4, 0x3c

    add-long v12, v22, v4

    sub-long/2addr v12, v1

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 643
    :cond_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    cmp-long v0, v22, v1

    if-lez v0, :cond_6

    sub-long v12, v22, v1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "\u521a\u521a"

    return-object v0
.end method

.method public static toSysMessageTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 732
    invoke-static {p0}, Lcom/greport/glog/util/TimeHelper;->convertTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "\u672a\u77e5\u65f6\u95f4"

    return-object p0

    .line 736
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
