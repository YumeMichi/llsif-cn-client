.class Lcom/reyun/tracking/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/reyun/tracking/a/g;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->d:J

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->e:J

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/a/d;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/reyun/tracking/a/e;

    invoke-direct {v1, p0}, Lcom/reyun/tracking/a/e;-><init>(Lcom/reyun/tracking/a/d;)V

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/reyun/tracking/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/a/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/reyun/tracking/a/d;)Lcom/reyun/tracking/a/g;
    .locals 0

    iget-object p0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    return-object p0
.end method

.method static synthetic c(Lcom/reyun/tracking/a/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/reyun/tracking/a/d;->f:J

    return-wide v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccuracyChanged:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Sensor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-wide v0, p0, Lcom/reyun/tracking/a/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->d:J

    :cond_0
    iget-wide v0, p0, Lcom/reyun/tracking/a/d;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->f:J

    :cond_1
    iget-wide v0, p0, Lcom/reyun/tracking/a/d;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->e:J

    :cond_2
    iget-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    if-nez v0, :cond_3

    new-instance v0, Lcom/reyun/tracking/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reyun/tracking/a/g;-><init>(Lcom/reyun/tracking/a/b;)V

    iput-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reyun/tracking/a/d;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-gez v7, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3b83126f    # 0.004f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget v1, p0, Lcom/reyun/tracking/a/d;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget v1, p0, Lcom/reyun/tracking/a/d;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget v1, p0, Lcom/reyun/tracking/a/d;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    invoke-virtual {v0, v6}, Lcom/reyun/tracking/a/g;->a(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    invoke-virtual {v0, v5}, Lcom/reyun/tracking/a/g;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->e:J

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reyun/tracking/a/d;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v7, v0, v2

    if-ltz v7, :cond_7

    iget-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    invoke-virtual {v0}, Lcom/reyun/tracking/a/g;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->d:J

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reyun/tracking/a/d;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v7, v0, v2

    if-ltz v7, :cond_8

    invoke-direct {p0}, Lcom/reyun/tracking/a/d;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/a/d;->f:J

    iget-object v0, p0, Lcom/reyun/tracking/a/d;->g:Lcom/reyun/tracking/a/g;

    invoke-virtual {v0}, Lcom/reyun/tracking/a/g;->b()V

    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/reyun/tracking/a/d;->a:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/reyun/tracking/a/d;->b:F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    iput p1, p0, Lcom/reyun/tracking/a/d;->c:F

    return-void
.end method
