.class public Lcom/ghomesdk/gameplus/utils/log/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final Debug:I = 0xa

.field public static final Error:I = 0x28

.field public static final Fault:I = 0x32

.field public static final Info:I = 0x14

.field public static final OFF:I = 0x64

.field public static final Warn:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogLevel(Ljava/lang/String;)I
    .locals 1

    const-string v0, "all"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "debug"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-string v0, "info"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x14

    return p0

    :cond_2
    const-string v0, "warn"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x1e

    return p0

    :cond_3
    const-string v0, "error"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x28

    return p0

    :cond_4
    const-string v0, "fault"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x32

    return p0

    :cond_5
    const-string v0, "off"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x64

    if-eqz p0, :cond_6

    :cond_6
    return v0
.end method
