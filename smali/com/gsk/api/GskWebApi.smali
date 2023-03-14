.class public Lcom/gsk/api/GskWebApi;
.super Ljava/lang/Object;
.source "GskWebApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsk/api/GskWebApi$IGskApiWebSupport;,
        Lcom/gsk/api/GskWebApi$SmsHandler;,
        Lcom/gsk/api/GskWebApi$AliHandler;,
        Lcom/gsk/api/GskWebApi$wxHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GskWebApi"

.field private static alipayCallback:Ljava/lang/String;

.field public static api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field static gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

.field public static isWxPayClicked:Z

.field private static mQQAppId:Ljava/lang/String;

.field static openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field public static qqCallback:Ljava/lang/String;

.field private static wxCallback:Ljava/lang/String;

.field private static youniCallback:Ljava/lang/String;


# instance fields
.field context:Landroid/app/Activity;

.field jsBackKeyClickCallback:Ljava/lang/String;

.field private mListener:Lcom/gsk/WxPayClickListener;

.field private sdkVersion:Ljava/lang/String;

.field showBackButton:Z

.field private smsHandler:Lcom/gsk/api/GskWebApi$SmsHandler;

.field systemInfo:Lcom/gsk/utils/SystemInfo;

.field touchMatrixFooter:Ljava/lang/String;

.field touchMatrixMessage:Ljava/lang/String;

.field touchMatrixTip:Ljava/lang/String;

.field touchMatrixTitle:Ljava/lang/String;

.field youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/gsk/api/GskWebApi$IGskApiWebSupport;Ljava/lang/String;Lcom/gsk/WxPayClickListener;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/gsk/api/GskWebApi;->showBackButton:Z

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTitle:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTip:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixMessage:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixFooter:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->jsBackKeyClickCallback:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->sdkVersion:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    .line 86
    sput-object p2, Lcom/gsk/api/GskWebApi;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    .line 87
    new-instance p2, Lcom/gsk/utils/SystemInfo;

    invoke-direct {p2, p1}, Lcom/gsk/utils/SystemInfo;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gsk/api/GskWebApi;->systemInfo:Lcom/gsk/utils/SystemInfo;

    .line 88
    iput-object p3, p0, Lcom/gsk/api/GskWebApi;->sdkVersion:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/gsk/api/GskWebApi;->mListener:Lcom/gsk/WxPayClickListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/gsk/api/GskWebApi;->executeJs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/gsk/api/GskWebApi;->wxCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/gsk/api/GskWebApi;->jsStringEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/gsk/api/GskWebApi;->alipayCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gsk/api/GskWebApi;)Lcom/gsk/api/GskWebApi$SmsHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/gsk/api/GskWebApi;->smsHandler:Lcom/gsk/api/GskWebApi$SmsHandler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/gsk/api/GskWebApi;Lcom/gsk/api/GskWebApi$SmsHandler;)Lcom/gsk/api/GskWebApi$SmsHandler;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->smsHandler:Lcom/gsk/api/GskWebApi$SmsHandler;

    return-object p1
.end method

.method private static executeJs(Ljava/lang/String;)V
    .locals 1

    .line 700
    sget-object v0, Lcom/gsk/api/GskWebApi;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v0, Lcom/gsk/api/GskWebApi;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    invoke-interface {v0, p0}, Lcom/gsk/api/GskWebApi$IGskApiWebSupport;->executeJs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getGskApi()Lcom/gsk/api/GskWebApi$IGskApiWebSupport;
    .locals 1

    .line 93
    sget-object v0, Lcom/gsk/api/GskWebApi;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    return-object v0
.end method

.method public static getQQAppId()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/gsk/api/GskWebApi;->mQQAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5

    .line 583
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 584
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0x24

    .line 586
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "abcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handlerIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private static jsStringEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 696
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public closePwdPanel()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 197
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v1, "closePwdPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$2;

    invoke-direct {v1, p0}, Lcom/gsk/api/GskWebApi$2;-><init>(Lcom/gsk/api/GskWebApi;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public doBackKeyClick()Z
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->jsBackKeyClickCallback:Ljava/lang/String;

    invoke-static {v0}, Lcom/gsk/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 326
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gsk/api/GskWebApi;->jsBackKeyClickCallback:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "javascript:%s()"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gsk/api/GskWebApi;->executeJs(Ljava/lang/String;)V

    return v0

    :cond_0
    return v1
.end method

.method public getSystemInfo()Lcom/gsk/utils/SystemInfo;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->systemInfo:Lcom/gsk/utils/SystemInfo;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 151
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "getValue(%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    const-string v1, "youyun_cookie_db"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 154
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goAlipay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 440
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "goAlipay(%s, %s)%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 442
    new-instance v0, Lcom/gsk/api/GskWebApi$9;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gsk/api/GskWebApi$9;-><init>(Lcom/gsk/api/GskWebApi;Landroid/os/Looper;)V

    .line 457
    sput-object p2, Lcom/gsk/api/GskWebApi;->alipayCallback:Ljava/lang/String;

    .line 458
    iget-object p2, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/gsk/api/GskWebApi$10;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goQQpay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 539
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goQQpay called, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    sput-object p2, Lcom/gsk/api/GskWebApi;->qqCallback:Ljava/lang/String;

    .line 541
    iget-object p2, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v0, Lcom/gsk/api/GskWebApi$12;

    invoke-direct {v0, p0, p1}, Lcom/gsk/api/GskWebApi$12;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goWeiXinPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonstring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GskWebApi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 493
    sput-boolean v0, Lcom/gsk/api/GskWebApi;->isWxPayClicked:Z

    .line 494
    sput-object p2, Lcom/gsk/api/GskWebApi;->wxCallback:Ljava/lang/String;

    .line 495
    iget-object p2, p0, Lcom/gsk/api/GskWebApi;->mListener:Lcom/gsk/WxPayClickListener;

    invoke-interface {p2}, Lcom/gsk/WxPayClickListener;->onPayClick()V

    .line 496
    iget-object p2, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v0, Lcom/gsk/api/GskWebApi$11;

    invoke-direct {v0, p0, p1}, Lcom/gsk/api/GskWebApi$11;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasAlipayClient()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ghomeSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsk/api/GskWebApi;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasAliPayClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    .line 339
    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "hasAliPayClient2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public hasPackageInstall(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 717
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v1, "isPackageInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 720
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 722
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasQQClient(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 529
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasQQClient called, appid=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    sput-object p1, Lcom/gsk/api/GskWebApi;->mQQAppId:Ljava/lang/String;

    .line 531
    iget-object p1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    sget-object v0, Lcom/gsk/api/GskWebApi;->mQQAppId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object p1

    sput-object p1, Lcom/gsk/api/GskWebApi;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 532
    sget-object p1, Lcom/gsk/api/GskWebApi;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    const-string v0, "pay"

    invoke-interface {p1, v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result p1

    .line 533
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasQQClient called, isSupportQQ == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return p1
.end method

.method public hasWeiXinClient(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 481
    sget-object v0, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 484
    :cond_0
    sget-object v0, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 485
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "hasWeiXinClient      "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 486
    invoke-interface {v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x22000001

    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    sget-object p1, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result p1

    if-lt p1, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasYouniClient()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public listenBackKeyClick(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 319
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "listenBackKeyClick(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->jsBackKeyClickCallback:Ljava/lang/String;

    return-void
.end method

.method public reasonUrlOpen(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 732
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v1, "openProject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {p1}, Lcom/gsk/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 736
    iget-object p1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public rsaDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 128
    :try_start_0
    invoke-static {p1, p2}, Lcom/gsk/utils/RSAHelper;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_0

    :catch_6
    move-exception p1

    .line 130
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    :try_start_0
    invoke-static {p1, p2}, Lcom/gsk/utils/RSAHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encrypt"

    .line 105
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public setLoadingEnable(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingEnable() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p1}, Lcom/gsk/ui/WebViewGsk;->setLoadingEnable(Z)V

    return-void
.end method

.method public setPwdPanelFooter(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 289
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setPwdPanelFooter(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->touchMatrixFooter:Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$8;

    invoke-direct {v1, p0, p1}, Lcom/gsk/api/GskWebApi$8;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setPwdPanelMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 273
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setPwdPanelTip(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->touchMatrixMessage:Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$7;

    invoke-direct {v1, p0, p1}, Lcom/gsk/api/GskWebApi$7;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setPwdPanelTip(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 257
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setPwdPanelTip(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTip:Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$6;

    invoke-direct {v1, p0, p1}, Lcom/gsk/api/GskWebApi$6;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setPwdPanelTitle(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 241
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setPwdPanelTitle(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-object p1, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTitle:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$5;

    invoke-direct {v1, p0, p1}, Lcom/gsk/api/GskWebApi$5;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 143
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v3, "setValue(%s, %s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    const-string v1, "youyun_cookie_db"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public showBackInPwdPanel(I)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 211
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "showBackInPwdPanel(%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 213
    :goto_0
    iput-boolean v1, p0, Lcom/gsk/api/GskWebApi;->showBackButton:Z

    .line 215
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v0, Lcom/gsk/api/GskWebApi$3;

    invoke-direct {v0, p0}, Lcom/gsk/api/GskWebApi$3;-><init>(Lcom/gsk/api/GskWebApi;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public showErrorInPwdPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 227
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "showErrorInPwdPanel(%s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/gsk/api/GskWebApi$4;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showPwdPanel(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 159
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "showPwdPanel(%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    const-class v3, Lcom/gsk/TouchMatrixActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    iget-object v1, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    iput-boolean v2, p0, Lcom/gsk/api/GskWebApi;->showBackButton:Z

    const-string v0, ""

    .line 165
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTitle:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixTip:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixMessage:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/gsk/api/GskWebApi;->touchMatrixFooter:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/gsk/api/GskWebApi$1;

    invoke-direct {v0, p0, p1}, Lcom/gsk/api/GskWebApi$1;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gsk/TouchMatrixActivity;->setTouchMatrixEventListener(Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;)V

    return-void
.end method

.method public startGetSMS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 643
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v1, "openSmsObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lcom/gsk/utils/YouYunPackageHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    sget-object p1, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v0, "access sms permission denied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$13;

    invoke-direct {v1, p0, p1}, Lcom/gsk/api/GskWebApi$13;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopGetSMS()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 671
    sget-object v0, Lcom/gsk/api/GskWebApi;->TAG:Ljava/lang/String;

    const-string v1, "closeSmsObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lcom/gsk/utils/YouYunPackageHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    new-instance v1, Lcom/gsk/api/GskWebApi$14;

    invoke-direct {v1, p0}, Lcom/gsk/api/GskWebApi$14;-><init>(Lcom/gsk/api/GskWebApi;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
