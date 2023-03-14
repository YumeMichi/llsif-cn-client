.class public Lde/mindpipe/android/logging/log4j/LogCatAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "LogCatAppender.java"


# instance fields
.field protected tagLayout:Lorg/apache/log4j/Layout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    new-instance v0, Lorg/apache/log4j/PatternLayout;

    const-string v1, "%m%n"

    invoke-direct {v0, v1}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;-><init>(Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/log4j/PatternLayout;

    const-string v1, "%c"

    invoke-direct {v0, v1}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;-><init>(Lorg/apache/log4j/Layout;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Lorg/apache/log4j/Layout;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 35
    iput-object p2, p0, Lde/mindpipe/android/logging/log4j/LogCatAppender;->tagLayout:Lorg/apache/log4j/Layout;

    .line 36
    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->setLayout(Lorg/apache/log4j/Layout;)V

    return-void
.end method


# virtual methods
.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x7530

    if-eq v0, v1, :cond_4

    const v1, 0x9c40

    if-eq v0, v1, :cond_2

    const v1, 0xc350

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 75
    :cond_4
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 79
    :cond_5
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 67
    :cond_6
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 68
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 71
    :cond_7
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_8
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    :cond_9
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_a
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    :cond_b
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getTagLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogCatAppender;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getTagLayout()Lorg/apache/log4j/Layout;
    .locals 1

    .line 111
    iget-object v0, p0, Lde/mindpipe/android/logging/log4j/LogCatAppender;->tagLayout:Lorg/apache/log4j/Layout;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTagLayout(Lorg/apache/log4j/Layout;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lde/mindpipe/android/logging/log4j/LogCatAppender;->tagLayout:Lorg/apache/log4j/Layout;

    return-void
.end method
