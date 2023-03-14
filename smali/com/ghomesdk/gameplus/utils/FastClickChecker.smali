.class public Lcom/ghomesdk/gameplus/utils/FastClickChecker;
.super Ljava/lang/Object;
.source "FastClickChecker.java"


# static fields
.field private static final FAST_CLICK_INTERVAL:J = 0x3e8L


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFastClick()Z
    .locals 7

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/ghomesdk/gameplus/utils/FastClickChecker;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 17
    :cond_0
    iput-wide v0, p0, Lcom/ghomesdk/gameplus/utils/FastClickChecker;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method
