.class Lklb/android/GameEngine/GameEngineActivity$7;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$7;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 17

    .line 1235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-string v8, "Failed to get location"

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 1242
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 1243
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v16, "succeeded"

    invoke-virtual/range {v9 .. v16}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1245
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->stopGetLocation()Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 8

    .line 1261
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-string v7, "provider DISABLED"

    invoke-virtual/range {v0 .. v7}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    .line 1262
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->stopGetLocation()Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
