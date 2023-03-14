.class public Lcom/sina/weibo/sdk/share/ShareTransActivity;
.super Lcom/sina/weibo/sdk/share/BaseActivity;
.source "SourceFile"


# instance fields
.field private t:Landroid/content/Intent;

.field private u:Landroid/widget/FrameLayout;

.field private v:Lcom/sina/weibo/sdk/share/d;

.field private w:Ljava/lang/String;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/sina/weibo/sdk/share/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/sina/weibo/sdk/share/ShareTransActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/share/ShareTransActivity$1;-><init>(Lcom/sina/weibo/sdk/share/ShareTransActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V
    .locals 5

    const-string v0, "WBShareTag"

    const-string v1, "start wb composer"

    .line 136
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    const-string v2, "start_flag"

    const/16 v3, 0x3ea

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double v1, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/b/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->w:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    const-string v2, "share_back_flag"

    iget-object v3, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    const-string v2, "share_flag_for_new_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcom/sina/weibo/sdk/b/a;->c(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1157
    iget-object v4, v3, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;

    .line 147
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "_weibo_sdkVersion"

    const-string v1, "0041005000"

    .line 150
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_weibo_appPackage"

    .line 151
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_weibo_appKey"

    .line 152
    invoke-static {}, Lcom/sina/weibo/sdk/a;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_weibo_flag"

    const v1, 0x20130329

    .line 153
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_weibo_sign"

    .line 154
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/b/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    const-string v1, "start_web_activity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x2711

    if-nez v1, :cond_1

    const-string v1, "com.sina.weibo.sdk.web.WebActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v2, v4}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v3, :cond_2

    .line 2157
    iget-object p1, v3, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;

    .line 166
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_2
    invoke-virtual {p0, v2, v4}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const-string p1, "Start weibo client\'s composer fail. And Weibo client is not installed."

    .line 170
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wb composer fail,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start weibo client\'s composer fail. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/share/ShareTransActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/share/ShareTransActivity;Landroid/content/Intent;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/share/ShareTransActivity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->a(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/share/ShareTransActivity;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "share_back_flag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->w:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/share/ShareTransActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    .line 243
    :cond_1
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->j()V

    return-void

    .line 248
    :cond_2
    invoke-static {p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->c(Landroid/content/Intent;)V

    const/4 v0, -0x1

    .line 249
    invoke-virtual {p0, v0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 255
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    const/16 v3, 0x40

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    const/16 v3, 0x80

    .line 263
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x1

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 268
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    goto :goto_0

    .line 270
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WBShareTag"

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    .line 285
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    const-string v3, "_weibo_resp_errcode"

    .line 287
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "_weibo_resp_errstr"

    .line 288
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->setResult(ILandroid/content/Intent;)V

    .line 291
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void
.end method

.method private j()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    .line 305
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_weibo_resp_errcode"

    const/4 v3, 0x1

    .line 307
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 309
    invoke-virtual {p0, v1, v0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/share/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "WBShareTag"

    const-string v0, "onActivityResult. Means share result coming!"

    .line 182
    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    const-wide/16 v1, 0x64

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 190
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 191
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    iget-object p2, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->x:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 194
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/share/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WBShareTag"

    const-string v0, "start share activity."

    .line 63
    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string v2, "start_flag"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void

    .line 1079
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    .line 1080
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "progress_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v1, "layout_inflater"

    .line 1083
    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    .line 1084
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1086
    :cond_2
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 1088
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 1089
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1090
    iget-object v2, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1092
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "prepare wb resource."

    .line 1096
    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->t:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1099
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->finish()V

    return-void

    .line 1102
    :cond_3
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 1103
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->readFromBundle(Landroid/os/Bundle;)V

    .line 1104
    iget-object p1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    if-nez p1, :cond_5

    iget-object p1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 1131
    :cond_4
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->a(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    return-void

    .line 1105
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->v:Lcom/sina/weibo/sdk/share/d;

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1106
    invoke-virtual {p1, v1}, Lcom/sina/weibo/sdk/share/d;->cancel(Z)Z

    .line 1108
    :cond_6
    new-instance p1, Lcom/sina/weibo/sdk/share/d;

    new-instance v2, Lcom/sina/weibo/sdk/share/ShareTransActivity$2;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity$2;-><init>(Lcom/sina/weibo/sdk/share/ShareTransActivity;)V

    invoke-direct {p1, p0, v2}, Lcom/sina/weibo/sdk/share/d;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/share/b;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->v:Lcom/sina/weibo/sdk/share/d;

    .line 1127
    new-array p1, v1, [Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 1129
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity;->v:Lcom/sina/weibo/sdk/share/d;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/share/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/share/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "WBShareTag"

    const-string v1, "start share activity again. Means share result coming!"

    .line 203
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_flag"

    const/4 v1, -0x1

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->b(Landroid/content/Intent;)V

    return-void

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->j()V

    return-void
.end method
