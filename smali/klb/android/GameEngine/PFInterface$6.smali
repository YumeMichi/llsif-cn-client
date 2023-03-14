.class Lklb/android/GameEngine/PFInterface$6;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->startObservation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1774
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1777
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {p1}, Lklb/android/GameEngine/PFInterface;->access$002([F)[F

    goto :goto_0

    .line 1781
    :cond_1
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v3, v3, v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    const v7, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    aput v3, v0, v4

    .line 1782
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v3

    aget v3, v3, v2

    mul-float v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    mul-float v4, v4, v7

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 1783
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v3

    aget v3, v3, v1

    mul-float v3, v3, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    mul-float p1, p1, v7

    add-float/2addr v3, p1

    aput v3, v0, v1

    :goto_0
    const/16 p1, 0x9

    .line 1788
    new-array p1, p1, [F

    const/4 v0, 0x3

    .line 1789
    new-array v0, v0, [F

    const/4 v3, 0x0

    .line 1790
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$100()[F

    move-result-object v4

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->access$000()[F

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 1791
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 1792
    aget p1, v0, v2

    invoke-static {p1}, Lklb/android/GameEngine/PFInterface;->access$202(F)F

    .line 1793
    aget p1, v0, v1

    invoke-static {p1}, Lklb/android/GameEngine/PFInterface;->access$302(F)F

    return-void
.end method
