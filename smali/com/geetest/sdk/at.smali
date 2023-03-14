.class public Lcom/geetest/sdk/at;
.super Ljava/lang/Object;
.source "GT3SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final g:Ljava/lang/String; = "at"


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private final d:[F

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/geetest/sdk/at;->d:[F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/at;->e:Z

    .line 6
    iput v0, p0, Lcom/geetest/sdk/at;->f:I

    .line 22
    sget-object v1, Lcom/geetest/sdk/at;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new GT3SensorManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sensor"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/geetest/sdk/at;->a:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/geetest/sdk/at;->e:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/at;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/geetest/sdk/at;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/geetest/sdk/at;->f:I

    .line 2
    iget-boolean v0, p0, Lcom/geetest/sdk/at;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/at;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/geetest/sdk/at;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-boolean v0, p0, Lcom/geetest/sdk/at;->e:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/geetest/sdk/at;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3SensorManager-->unregisterSensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/at;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3
    iget v0, p0, Lcom/geetest/sdk/at;->c:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v4, v2

    const-wide v6, 0x3fc3333333333333L    # 0.15

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-double v4, v2

    const-wide v6, -0x403ccccccccccccdL    # -0.15

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    .line 7
    :cond_0
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v2, v4

    iget v4, p0, Lcom/geetest/sdk/at;->c:F

    sub-float/2addr v2, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v4

    .line 9
    iget-object v4, p0, Lcom/geetest/sdk/at;->d:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v5

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 10
    iget-object v4, p0, Lcom/geetest/sdk/at;->d:[F

    aget v6, v4, v0

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v0

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v0

    .line 11
    iget-object v4, p0, Lcom/geetest/sdk/at;->d:[F

    aget v6, v4, v3

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v3

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v3

    .line 13
    iget-object v4, p0, Lcom/geetest/sdk/at;->d:[F

    aget v4, v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 14
    iget-object v6, p0, Lcom/geetest/sdk/at;->d:[F

    aget v6, v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 15
    iget-object v7, p0, Lcom/geetest/sdk/at;->d:[F

    aget v3, v7, v3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 19
    new-instance v8, Ljava/math/BigDecimal;

    float-to-double v9, v4

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v8, v5, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v8, v6

    invoke-direct {v4, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v8, v3

    invoke-direct {v4, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v3, Ljava/math/BigDecimal;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    float-to-double v8, v2

    invoke-direct {v3, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v5, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcom/geetest/sdk/at;->b:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget v1, p0, Lcom/geetest/sdk/at;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/geetest/sdk/at;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 27
    sget-object v2, Lcom/geetest/sdk/at;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    iget v1, p0, Lcom/geetest/sdk/at;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/geetest/sdk/at;->f:I

    .line 31
    :cond_1
    :goto_0
    iget v0, p0, Lcom/geetest/sdk/at;->f:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    .line 32
    iget-boolean v0, p0, Lcom/geetest/sdk/at;->e:Z

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/geetest/sdk/at;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 37
    :cond_2
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/geetest/sdk/at;->c:F

    :cond_3
    return-void
.end method
