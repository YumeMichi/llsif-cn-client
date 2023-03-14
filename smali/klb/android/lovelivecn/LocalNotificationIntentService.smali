.class public Lklb/android/lovelivecn/LocalNotificationIntentService;
.super Landroid/app/IntentService;
.source "LocalNotificationIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 37
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-virtual {p0}, Lklb/android/lovelivecn/LocalNotificationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lklb/android/GameEngine/PFInterface;->onNotificationExpired(Landroid/content/Context;I)V

    const-string v1, "tag"

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "msg"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "soundName"

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {}, Lklb/android/lovelivecn/NotificationBuilder;->getInstance()Lklb/android/lovelivecn/NotificationBuilder;

    move-result-object v2

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lklb/android/lovelivecn/NotificationBuilder;->buildLocalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    invoke-static {p1}, Lklb/android/lovelivecn/AlarmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
