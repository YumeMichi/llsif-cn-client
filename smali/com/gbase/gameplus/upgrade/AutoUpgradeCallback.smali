.class public Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;
.super Ljava/lang/Object;
.source "AutoUpgradeCallback.java"

# interfaces
.implements Lcom/gbase/gameplus/upgrade/UpgradeCallback;


# static fields
.field private static sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback; = null

.field private static sm_nMobileDownloadThreshold:I = 0xa


# instance fields
.field private downloadDialog:Landroid/app/ProgressDialog;

.field private md5CheckDialog:Landroid/app/ProgressDialog;

.field private myContext:Landroid/content/Context;

.field private myLog:Lorg/apache/log4j/Logger;

.field private myUpgradeUtils:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

.field private nDownloadProgress:I

.field private nNetworkStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myLog:Lorg/apache/log4j/Logger;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    .line 24
    iput v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    .line 25
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myUpgradeUtils:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    .line 41
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myUpgradeUtils:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    .line 43
    iput p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    if-eqz p1, :cond_0

    .line 46
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 48
    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;

    invoke-direct {p2, p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/app/ProgressDialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/app/ProgressDialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300()Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;
    .locals 1

    .line 16
    sget-object v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Lcom/gbase/gameplus/upgrade/UpgradeUtility;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myUpgradeUtils:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    return-object p0
.end method

.method private static getPrintSize(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    .line 400
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_0
    div-int/2addr p0, v0

    if-ge p0, v0, :cond_1

    .line 408
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 410
    :cond_1
    div-int/2addr p0, v0

    const-string v1, "."

    if-ge p0, v0, :cond_2

    mul-int/lit8 p0, p0, 0x64

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x64

    .line 417
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    mul-int/lit8 p0, p0, 0x64

    .line 420
    div-int/2addr p0, v0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x64

    .line 422
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static setCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    return-void
.end method

.method protected static setMobileDownloadMaxValue(I)V
    .locals 0

    .line 36
    sput p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    return-void
.end method


# virtual methods
.method public getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myLog:Lorg/apache/log4j/Logger;

    if-nez v0, :cond_0

    .line 71
    const-class v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myLog:Lorg/apache/log4j/Logger;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myLog:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public onDownloadCancel()V
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "onDownloadCancel"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    return-void
.end method

.method public onDownloadChange(JJ)V
    .locals 3

    .line 443
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadChange\uff0cprogress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "],total["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 448
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    if-lt p1, p2, :cond_0

    .line 450
    iput p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    .line 451
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onDownloadFinish(ZLjava/lang/String;)V
    .locals 3

    .line 458
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFinish\uff0csuccess["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "],message["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 463
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6587\u4ef6\u4e0b\u8f7d\u51fa\u9519"

    .line 464
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 465
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 466
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)V

    const-string v1, "\u91cd\u8bd5"

    .line 467
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 475
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 478
    iput p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    .line 479
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 481
    :goto_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onDownloadStart()V
    .locals 3

    .line 429
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "onDownloadStart"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nDownloadProgress:I

    .line 433
    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 434
    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 435
    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 436
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\uff0c\u8bf7\u7a0d\u7b49"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->downloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 538
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError\uff0cmessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6587\u4ef6\u9a8c\u8bc1\u51fa\u9519"

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$16;

    invoke-direct {v1, p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$16;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)V

    const-string v2, "OK"

    .line 545
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 553
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onMD5CheckFinish(ZLjava/lang/String;)V
    .locals 3

    .line 509
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMD5CheckFinish\uff0csuccess["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "],message["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    .line 518
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6587\u4ef6\u9a8c\u8bc1\u51fa\u9519"

    .line 519
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 521
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$15;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$15;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)V

    const-string v1, "\u91cd\u8bd5"

    .line 522
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 530
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onMD5CheckStart()V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "onMD5CheckStart"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    const-string v1, "MD5\u6587\u4ef6\u6821\u9a8c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u68c0\u67e5\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\u7684\u6587\u4ef6\uff0c\u8bf7\u7a0d\u7b49\uff01"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->md5CheckDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onResetDownload(Ljava/lang/String;)V
    .locals 3

    .line 558
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResetDownload\uff0cmessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public onSetUpgradeByVerCtrlCallbackInterface(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V
    .locals 0

    .line 570
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V

    return-void
.end method

.method public onSetUpgradeCallbackInterface(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V
    .locals 0

    .line 564
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V

    return-void
.end method

.method public onUpgradeInfoResult(ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->onNotNeedUpate()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const-string p1, ":"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    sget-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    long-to-int p2, v2

    .line 90
    invoke-static {p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getPrintSize(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 94
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNeedUpate is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 95
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const-string v2, "\u786e\u5b9a"

    const-string v4, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u8bf7\u70b9\u51fb\u786e\u5b9a\u66f4\u65b0\u3002"

    const-string v5, "\u66f4\u65b0\u7ed3\u679c\u68c0\u6d4b\uff1a"

    if-ne p2, v0, :cond_1

    .line 97
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$2;

    invoke-direct {v0, p0, p1, v3}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$2;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 112
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 116
    :cond_1
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 118
    sget p2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    if-lt v3, p2, :cond_2

    .line 120
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u60a8\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u66f4\u65b0\u5185\u5bb9\u5927\u4e8e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "M,\u8bf7\u786e\u8ba4\u5904\u4e8eWiFi\u73af\u5883\u4e0b\u6216\u70b9\u51fb\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$3;

    invoke-direct {v0, p0, p1, v3}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$3;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    const-string p1, "\u571f\u8c6a\u4efb\u6027\u4e0b\u8f7d"

    .line 123
    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 138
    :cond_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 140
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;

    invoke-direct {v0, p0, p1, v3}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 161
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6267\u884c\u66f4\u65b0\u64cd\u4f5c\u51fa\u9519"

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9519\u8bef\u7c7b\u578b\uff1a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],\u9519\u8bef\u6d88\u606f["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$5;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;ILjava/lang/String;)V

    const-string p1, "OK"

    .line 165
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method public onUpgradeInfoResultWithUI(ILjava/lang/String;I)V
    .locals 5

    .line 292
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeInfoResult:result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 296
    sget-object p1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    if-eqz p1, :cond_4

    .line 298
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->onNotNeedUpate()V

    goto/16 :goto_0

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    const-string p1, ":"

    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p3

    .line 304
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 306
    sget-wide v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    long-to-int p2, v1

    .line 307
    invoke-static {p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getPrintSize(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 309
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 311
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNeedUpate is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 313
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const-string v1, "\u786e\u5b9a"

    const-string v3, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u8bf7\u70b9\u51fb\u786e\u5b9a\u66f4\u65b0\u3002"

    const-string v4, "\u66f4\u65b0\u7ed3\u679c\u68c0\u6d4b\uff1a"

    if-ne p2, p3, :cond_1

    .line 315
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 317
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$10;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$10;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 318
    invoke-virtual {p2, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 330
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 334
    :cond_1
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 336
    sget p2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    if-lt v2, p2, :cond_2

    .line 338
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u60a8\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u66f4\u65b0\u5185\u5bb9\u5927\u4e8e"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "M,\u8bf7\u786e\u8ba4\u5904\u4e8eWiFi\u73af\u5883\u4e0b\u6216\u70b9\u51fb\u4e0b\u8f7d"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 340
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$11;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$11;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    const-string p1, "\u571f\u8c6a\u4efb\u6027\u4e0b\u8f7d"

    .line 341
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 352
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 355
    :cond_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 357
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$12;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$12;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 358
    invoke-virtual {p2, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 369
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 377
    :cond_3
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6267\u884c\u66f4\u65b0\u64cd\u4f5c\u51fa\u9519"

    .line 378
    invoke-virtual {p3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9519\u8bef\u7c7b\u578b\uff1a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],\u9519\u8bef\u6d88\u606f["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 380
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;ILjava/lang/String;)V

    const-string p1, "OK"

    .line 381
    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method public onUpgradeInfoResultWithVersion(ILjava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    .line 186
    sget-object p1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_customCallback:Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->onNotNeedUpate()V

    goto/16 :goto_0

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    const-string p1, ":"

    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p3

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    sget-wide v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    long-to-int p2, v1

    .line 198
    invoke-static {p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getPrintSize(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 200
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 202
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNeedUpate is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 203
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const-string v1, "\u786e\u5b9a"

    const-string v3, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u8bf7\u70b9\u51fb\u786e\u5b9a\u66f4\u65b0\u3002"

    const-string v4, "\u66f4\u65b0\u7ed3\u679c\u68c0\u6d4b\uff1a"

    if-ne p2, p3, :cond_1

    .line 205
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 207
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$6;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$6;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p2, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 220
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    :cond_1
    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->nNetworkStatus:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 225
    sget p2, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->sm_nMobileDownloadThreshold:I

    if-lt v2, p2, :cond_4

    .line 227
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "\u5f53\u524d\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\u662f\u5426\u66f4\u65b0?"

    .line 229
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$7;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$7;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    const-string p1, "\u571f\u8c6a\u4efb\u6027\u4e0b\u8f7d"

    .line 230
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 247
    :cond_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 249
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$8;

    invoke-direct {p3, p0, p1, v2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$8;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p2, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 268
    :cond_3
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->myContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6267\u884c\u66f4\u65b0\u64cd\u4f5c\u51fa\u9519"

    .line 269
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "],\u9519\u8bef\u6d88\u606f["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 271
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v1, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$9;-><init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;ILjava/lang/String;)V

    const-string p1, "OK"

    .line 272
    invoke-virtual {p3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method
