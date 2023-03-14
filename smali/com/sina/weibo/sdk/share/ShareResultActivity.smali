.class public Lcom/sina/weibo/sdk/share/ShareResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareResultActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "start_flag"

    const/4 v1, -0x1

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareResultActivity;->finish()V

    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.sina.weibo.sdk.share.ShareTransActivity"

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "com.sina.weibo.sdk.action.ACTION_SDK_REQ_STORY"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sina.weibo.sdk.share.ShareStoryActivity"

    .line 29
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/share/ShareResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareResultActivity;->finish()V

    return-void
.end method
