.class public Lcom/tencent/connect/auth/a;
.super Landroid/app/Dialog;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/a$d;,
        Lcom/tencent/connect/auth/a$a;,
        Lcom/tencent/connect/auth/a$b;,
        Lcom/tencent/connect/auth/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/connect/auth/a$b;

.field private c:Lcom/tencent/tauth/IUiListener;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Lcom/tencent/open/c/d;

.field private k:Landroid/content/Context;

.field private l:Lcom/tencent/open/web/security/b;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V
    .locals 8

    const v0, 0x1030010

    .line 120
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/tencent/connect/auth/a;->m:Z

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/tencent/connect/auth/a;->q:J

    const-wide/16 v0, 0x7530

    .line 116
    iput-wide v0, p0, Lcom/tencent/connect/auth/a;->r:J

    .line 121
    iput-object p1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/tencent/connect/auth/a$b;

    invoke-virtual {p5}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tencent/connect/auth/a$b;-><init>(Lcom/tencent/connect/auth/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    .line 124
    new-instance p3, Lcom/tencent/connect/auth/a$c;

    iget-object p5, p0, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p0, p5, p1}, Lcom/tencent/connect/auth/a$c;-><init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$b;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    .line 125
    iput-object p4, p0, Lcom/tencent/connect/auth/a;->c:Lcom/tencent/tauth/IUiListener;

    .line 126
    iput-object p2, p0, Lcom/tencent/connect/auth/a;->i:Ljava/lang/String;

    .line 127
    new-instance p1, Lcom/tencent/open/web/security/b;

    invoke-direct {p1}, Lcom/tencent/open/web/security/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    .line 129
    invoke-virtual {p0}, Lcom/tencent/connect/auth/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/tencent/connect/auth/a;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://imgcache.qq.com/ptlogin/static/qzsjump.html?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->generateDownloadUrl, url: https://imgcache.qq.com/ptlogin/static/qzsjump.html?"

    .line 468
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/connect/auth/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_u_"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/tencent/connect/auth/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 6

    .line 505
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 507
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const v2, 0x4179999a    # 15.6f

    invoke-static {v1, v2}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const v3, 0x41c9999a    # 25.2f

    invoke-static {v2, v3}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v2

    .line 509
    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 512
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    add-int/2addr v2, v5

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 514
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 517
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const-string v2, "h5_qr_back.png"

    invoke-static {v2, v1}, Lcom/tencent/open/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 520
    new-instance v1, Lcom/tencent/connect/auth/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/auth/a$1;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/tencent/connect/auth/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 473
    invoke-direct {p0}, Lcom/tencent/connect/auth/a;->c()V

    .line 474
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 477
    new-instance v2, Lcom/tencent/open/c/d;

    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/open/c/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    .line 478
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 480
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/c/d;->setLayerType(ILandroid/graphics/Paint;)V

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    .line 485
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    new-instance v2, Lcom/tencent/open/c/c;

    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/open/c/c;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 491
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    .line 492
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 494
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/open/utils/m;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "style"

    .line 496
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "qr"

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/tencent/connect/auth/a;->a(Landroid/view/ViewGroup;)V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/a;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 679
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    .line 680
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    .line 682
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 684
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 686
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/auth/a;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/tencent/connect/auth/a;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/connect/auth/a;->p:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .line 535
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    .line 536
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 539
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    .line 542
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->i:Ljava/lang/String;

    const-string v2, "action_login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 546
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x5

    .line 547
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 548
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 549
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u767b\u5f55\u4e2d..."

    .line 551
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v3, "Logging in..."

    .line 553
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xff

    .line 555
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 556
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 557
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 560
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 563
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 564
    iget-object v3, p0, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/connect/auth/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_2

    .line 567
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    .line 570
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 573
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 574
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    const-string v1, "#B3000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 576
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/auth/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/connect/auth/a;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/tencent/connect/auth/a;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/d;->setVerticalScrollBarEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/d;->setHorizontalScrollBarEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    new-instance v2, Lcom/tencent/connect/auth/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tencent/connect/auth/a$a;-><init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$1;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/d;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 587
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/d;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 588
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v0}, Lcom/tencent/open/c/d;->clearFormData()V

    .line 591
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v0}, Lcom/tencent/open/c/d;->clearSslPreferences()V

    .line 592
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    new-instance v2, Lcom/tencent/connect/auth/a$2;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/a$2;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/d;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    new-instance v2, Lcom/tencent/connect/auth/a$3;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/a$3;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 617
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v0}, Lcom/tencent/open/c/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 618
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-static {v2}, Lcom/tencent/open/web/a;->a(Landroid/webkit/WebView;)V

    .line 619
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v2, -0x1

    .line 621
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 624
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    const/4 v2, 0x1

    .line 625
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 626
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 628
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 630
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 631
    iget-object v3, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    const-string v4, "databases"

    .line 632
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->mUrl : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.AuthDialog"

    invoke-static {v2, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    .line 637
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/d;->loadUrl(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/d;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    new-instance v2, Lcom/tencent/open/web/security/SecureJsInterface;

    invoke-direct {v2}, Lcom/tencent/open/web/security/SecureJsInterface;-><init>()V

    const-string v3, "SecureJsInterface"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/open/web/security/b;->a(Lcom/tencent/open/b$b;Ljava/lang/String;)V

    .line 642
    sput-boolean v1, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    .line 644
    new-instance v0, Lcom/tencent/connect/auth/a$4;

    invoke-direct {v0, p0}, Lcom/tencent/connect/auth/a$4;-><init>(Lcom/tencent/connect/auth/a;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/d;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    return-object p0
.end method

.method private e()Z
    .locals 6

    .line 660
    invoke-static {}, Lcom/tencent/connect/auth/b;->a()Lcom/tencent/connect/auth/b;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lcom/tencent/connect/auth/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 662
    new-instance v2, Lcom/tencent/connect/auth/b$a;

    invoke-direct {v2}, Lcom/tencent/connect/auth/b$a;-><init>()V

    .line 663
    iget-object v3, p0, Lcom/tencent/connect/auth/a;->c:Lcom/tencent/tauth/IUiListener;

    iput-object v3, v2, Lcom/tencent/connect/auth/b$a;->a:Lcom/tencent/tauth/IUiListener;

    .line 664
    iput-object p0, v2, Lcom/tencent/connect/auth/b$a;->b:Lcom/tencent/connect/auth/a;

    .line 665
    iput-object v1, v2, Lcom/tencent/connect/auth/b$a;->c:Ljava/lang/String;

    .line 666
    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/b;->a(Lcom/tencent/connect/auth/b$a;)Ljava/lang/String;

    move-result-object v0

    .line 667
    iget-object v2, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 668
    iget-object v4, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/open/utils/m;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "token_key"

    .line 669
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serial"

    .line 670
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "browser"

    const-string v1, "1"

    .line 671
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/connect/auth/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/open/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/web/security/b;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->l:Lcom/tencent/open/web/security/b;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/a;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/tencent/connect/auth/a;->q:J

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/a;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/tencent/connect/auth/a;->n:I

    return p0
.end method

.method static synthetic l(Lcom/tencent/connect/auth/a;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/tencent/connect/auth/a;->r:J

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/connect/auth/a;)I
    .locals 2

    .line 68
    iget v0, p0, Lcom/tencent/connect/auth/a;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/connect/auth/a;->n:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/connect/auth/a;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/tencent/connect/auth/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/connect/auth/a;)Ljava/util/HashMap;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");void("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 692
    iget-object p2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    invoke-virtual {p2, p1}, Lcom/tencent/open/c/d;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 4

    const-string v0, "openSDK_LOG.AuthDialog"

    .line 698
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 699
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/tencent/connect/auth/a;->k:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 705
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/connect/auth/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v1, "-->dismiss dialog"

    .line 707
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "-->dismiss dialog exception:"

    .line 711
    invoke-static {v0, v3, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {v0}, Lcom/tencent/open/c/d;->destroy()V

    .line 715
    iput-object v2, p0, Lcom/tencent/connect/auth/a;->j:Lcom/tencent/open/c/d;

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/tencent/connect/auth/a;->m:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/connect/auth/a;->b:Lcom/tencent/connect/auth/a$b;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a$b;->onCancel()V

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/a;->requestWindowFeature(I)Z

    .line 136
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/tencent/connect/auth/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/open/a;->a(Landroid/view/Window;)V

    .line 139
    invoke-direct {p0}, Lcom/tencent/connect/auth/a;->b()V

    .line 140
    invoke-direct {p0}, Lcom/tencent/connect/auth/a;->d()V

    .line 142
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/auth/a;->s:Ljava/util/HashMap;

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
