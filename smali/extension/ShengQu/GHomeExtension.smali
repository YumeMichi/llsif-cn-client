.class public Lextension/ShengQu/GHomeExtension;
.super Ljava/lang/Object;
.source "GHomeExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextension/ShengQu/GHomeExtension$MyCallback;
    }
.end annotation


# static fields
.field private static _instance:Lextension/ShengQu/GHomeExtension;


# instance fields
.field private bGhomeInited:Z

.field private bUpgadeFinished:Z

.field public b_Dologin:Z

.field public b_LoginCallBack:Z

.field public b_Logined:Z

.field public ghomeLoginCode:I

.field public ghomeLoginData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ghomeLoginMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->bGhomeInited:Z

    .line 132
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->bUpgadeFinished:Z

    .line 217
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->b_Dologin:Z

    .line 218
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    .line 219
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->b_LoginCallBack:Z

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lextension/ShengQu/GHomeExtension;->ghomeLoginCode:I

    const-string v0, ""

    .line 221
    iput-object v0, p0, Lextension/ShengQu/GHomeExtension;->ghomeLoginMsg:Ljava/lang/String;

    return-void
.end method

.method public static BuyItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 447
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 448
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    invoke-virtual {p1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 451
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "0"

    invoke-virtual {p1, v0, v2, p0, v1}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 489
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lextension/ShengQu/GHomeExtension$10;

    invoke-direct {v1, p1, p0}, Lextension/ShengQu/GHomeExtension$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ClearGHomeLoginFlag()V
    .locals 2

    .line 316
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    return-void
.end method

.method public static GHomeExData(Ljava/lang/String;)V
    .locals 4

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ucAction"

    const-string v2, "loginGameRole"

    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 300
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object p0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$7;

    invoke-direct {v2}, Lextension/ShengQu/GHomeExtension$7;-><init>()V

    const/16 v3, 0x3eb

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/ghome/sdk/GHome;->doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method public static GetProducts(Ljava/lang/String;)V
    .locals 2

    .line 375
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object p0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lextension/ShengQu/GHomeExtension$9;

    invoke-direct {v1}, Lextension/ShengQu/GHomeExtension$9;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/ghome/sdk/GHome;->getProductConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method public static Login()V
    .locals 2

    const-string v0, "gp"

    const-string v1, "ghome login"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lextension/ShengQu/GHomeExtension$4;

    invoke-direct {v1}, Lextension/ShengQu/GHomeExtension$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Logout()V
    .locals 3

    .line 283
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$6;

    invoke-direct {v2}, Lextension/ShengQu/GHomeExtension$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ghome/sdk/GHome;->logout(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method private static SDGUpdate()I
    .locals 11

    .line 509
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 510
    new-instance v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;-><init>()V

    .line 511
    new-instance v2, Lextension/ShengQu/GHomeExtension$MyCallback;

    invoke-direct {v2, v0}, Lextension/ShengQu/GHomeExtension$MyCallback;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 512
    invoke-static {v0, v3}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkNetworkStatus(Landroid/content/Context;Z)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_9

    .line 517
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v6

    invoke-virtual {v6}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1770

    invoke-static {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgrade(Landroid/content/Context;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 521
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->WorkAfterSDGUpdate()V

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x3

    if-lt v6, v7, :cond_5

    const/4 v1, 0x4

    if-eq v6, v1, :cond_4

    const/4 v1, 0x5

    if-eq v6, v1, :cond_3

    const/4 v1, 0x6

    if-eq v6, v1, :cond_2

    const/4 v1, 0x7

    if-eq v6, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "SD\u5361\u4e0d\u53ef\u7528"

    .line 531
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string v1, "\u83b7\u53d6\u6e20\u9053\u6253\u5305\u4fe1\u606f\u5931\u8d25"

    .line 530
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v1, "\u5185\u90e8\u9519\u8bef\uff08JSON\u683c\u5f0f\u8f6c\u6362\u51fa\u9519\uff09"

    .line 529
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const-string v1, "\u5185\u90e8\u9519\u8bef\uff08\u8bbf\u95ee\u5347\u7ea7\u63a5\u53e3\u7f51\u7edc\u51fa\u9519\uff09"

    .line 528
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 535
    :goto_0
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->WorkAfterSDGUpdate()V

    goto/16 :goto_1

    :cond_5
    const-string v5, "\u8f6f\u4ef6\u66f4\u65b0"

    const-string v7, "\u53d6\u6d88"

    const/4 v8, 0x2

    const-string v9, "\u786e\u5b9a"

    if-ne v6, v3, :cond_7

    if-ne v4, v8, :cond_6

    .line 542
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u60a8\u6b63\u5728\u4f7f\u7528\u79fb\u52a8\u7f51\u7edc"

    .line 543
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u786e\u8ba4\u5728\u79fb\u52a8\u7f51\u7edc\u73af\u5883\u4e0b\u66f4\u65b0\uff1f"

    .line 544
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$12;

    invoke-direct {v3}, Lextension/ShengQu/GHomeExtension$12;-><init>()V

    .line 545
    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$11;

    invoke-direct {v3, v1, v2}, Lextension/ShengQu/GHomeExtension$11;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility;Lextension/ShengQu/GHomeExtension$MyCallback;)V

    .line 553
    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    if-ne v4, v3, :cond_a

    .line 566
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u8bf7\u66f4\u65b0\u3002"

    .line 568
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$13;

    invoke-direct {v3, v1, v2}, Lextension/ShengQu/GHomeExtension$13;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility;Lextension/ShengQu/GHomeExtension$MyCallback;)V

    .line 569
    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_7
    if-ne v6, v8, :cond_a

    const-string v10, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0\uff1f"

    if-ne v4, v8, :cond_8

    .line 588
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$15;

    invoke-direct {v3}, Lextension/ShengQu/GHomeExtension$15;-><init>()V

    .line 591
    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$14;

    invoke-direct {v3, v1, v2}, Lextension/ShengQu/GHomeExtension$14;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility;Lextension/ShengQu/GHomeExtension$MyCallback;)V

    .line 599
    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_8
    if-ne v4, v3, :cond_a

    .line 613
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$17;

    invoke-direct {v3}, Lextension/ShengQu/GHomeExtension$17;-><init>()V

    .line 616
    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lextension/ShengQu/GHomeExtension$16;

    invoke-direct {v3, v1, v2}, Lextension/ShengQu/GHomeExtension$16;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility;Lextension/ShengQu/GHomeExtension$MyCallback;)V

    .line 624
    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_9
    const-string v1, "\u60a8\u7684\u7f51\u7edc\u597d\u50cf\u6709\u70b9\u95ee\u9898\u3002"

    .line 640
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 641
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->WorkAfterSDGUpdate()V

    const/4 v6, -0x1

    :cond_a
    :goto_1
    return v6
.end method

.method private static WorkAfterSDGUpdate()V
    .locals 2

    .line 741
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lextension/ShengQu/GHomeExtension;->bUpgadeFinished:Z

    return-void
.end method

.method public static WrittenOff()V
    .locals 3

    .line 263
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$5;

    invoke-direct {v2}, Lextension/ShengQu/GHomeExtension$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ghome/sdk/GHome;->writtenOff(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 37
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->WorkAfterSDGUpdate()V

    return-void
.end method

.method public static afterOnApplicationCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public static afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ghome/sdk/GHome;->create(Landroid/app/Activity;)V

    .line 45
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p1

    invoke-virtual {p1}, Lextension/ShengQu/GHomeExtension;->InitPrivacyAgreement()V

    .line 46
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->setMainActivity(Landroid/app/Activity;)V

    .line 48
    :try_start_0
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->SDGUpdate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->WorkAfterSDGUpdate()V

    :goto_0
    return-void
.end method

.method public static afterOnPause(Landroid/app/Activity;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ghome/sdk/GHome;->pause(Landroid/app/Activity;)V

    return-void
.end method

.method public static afterOnRestart()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghome/sdk/GHome;->restart(Landroid/app/Activity;)V

    return-void
.end method

.method public static afterOnResume(Landroid/app/Activity;)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ghome/sdk/GHome;->resume(Landroid/app/Activity;)V

    .line 74
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p0

    iget-boolean p0, p0, Lextension/ShengQu/GHomeExtension;->b_Dologin:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p0

    iget-boolean p0, p0, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    if-nez p0, :cond_0

    const-string p0, "login"

    const-string v0, "reset login can click"

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static afterOnStart()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghome/sdk/GHome;->start(Landroid/app/Activity;)V

    return-void
.end method

.method public static afterOnStop()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghome/sdk/GHome;->stop(Landroid/app/Activity;)V

    return-void
.end method

.method public static beforeDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4

    .line 96
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 99
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object p0

    .line 100
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    new-instance v3, Lextension/ShengQu/GHomeExtension$1;

    invoke-direct {v3, p0}, Lextension/ShengQu/GHomeExtension$1;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ghome/sdk/GHome;->doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    :cond_0
    return-void
.end method

.method public static beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 1

    .line 86
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static beforeOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ghome/sdk/GHome;->destroy(Landroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lextension/ShengQu/GHomeExtension;
    .locals 1

    .line 125
    sget-object v0, Lextension/ShengQu/GHomeExtension;->_instance:Lextension/ShengQu/GHomeExtension;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lextension/ShengQu/GHomeExtension;

    invoke-direct {v0}, Lextension/ShengQu/GHomeExtension;-><init>()V

    sput-object v0, Lextension/ShengQu/GHomeExtension;->_instance:Lextension/ShengQu/GHomeExtension;

    .line 127
    :cond_0
    sget-object v0, Lextension/ShengQu/GHomeExtension;->_instance:Lextension/ShengQu/GHomeExtension;

    return-object v0
.end method

.method public static getUNIXTimeNow()D
    .locals 4

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ghome/sdk/GHome;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public GhomeInited()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->bGhomeInited:Z

    return-void
.end method

.method public InitGHome()V
    .locals 4

    .line 168
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$3;

    invoke-direct {v2, p0, v0}, Lextension/ShengQu/GHomeExtension$3;-><init>(Lextension/ShengQu/GHomeExtension;Lklb/android/GameEngine/GameEngineActivity;)V

    const-string v3, "791000035"

    invoke-virtual {v1, v0, v3, v2}, Lcom/ghome/sdk/GHome;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    const-string v0, "gh"

    const-string v1, "ghome init after"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public InitPrivacyAgreement()V
    .locals 4

    .line 149
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$2;

    invoke-direct {v2, p0, v0}, Lextension/ShengQu/GHomeExtension$2;-><init>(Lextension/ShengQu/GHomeExtension;Lklb/android/GameEngine/GameEngineActivity;)V

    const-string v3, "791000035"

    invoke-virtual {v1, v0, v3, v2}, Lcom/ghome/sdk/GHome;->doPrivacyAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method public IsGhomeInited()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->bGhomeInited:Z

    return v0
.end method

.method public IsGhomeLoginCallBack()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->b_LoginCallBack:Z

    return v0
.end method

.method public IsUpgadeFinished()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lextension/ShengQu/GHomeExtension;->bUpgadeFinished:Z

    return v0
.end method

.method public doGhomeLoginCallBack()V
    .locals 10

    .line 326
    iget v0, p0, Lextension/ShengQu/GHomeExtension;->ghomeLoginCode:I

    .line 327
    iget-object v1, p0, Lextension/ShengQu/GHomeExtension;->ghomeLoginMsg:Ljava/lang/String;

    .line 328
    iget-object v2, p0, Lextension/ShengQu/GHomeExtension;->ghomeLoginData:Ljava/util/Map;

    .line 330
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lextension/ShengQu/GHomeExtension;->b_Dologin:Z

    .line 331
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v3

    iput-boolean v4, v3, Lextension/ShengQu/GHomeExtension;->b_LoginCallBack:Z

    const-string v3, ""

    const-string v5, "gp"

    if-nez v0, :cond_0

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "login successed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " userid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "userid"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ; ticket "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ticket"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v5

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v0, v1, v6, v2}, Lextension/ShengQu/GHomeExtension;->logined(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lextension/ShengQu/GHomeExtension;->b_Logined:Z

    .line 339
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v0, v2, v5, v3}, Lcom/ghome/sdk/GHome;->loginArea(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4}, Lcom/ghome/sdk/GHome;->showFloatIcon(Landroid/app/Activity;ZI)V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v1

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f0

    new-instance v4, Lextension/ShengQu/GHomeExtension$8;

    invoke-direct {v4, p0}, Lextension/ShengQu/GHomeExtension$8;-><init>(Lextension/ShengQu/GHomeExtension;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ghome/sdk/GHome;->doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void

    :cond_0
    const/16 v2, -0x64

    if-ne v0, v2, :cond_1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login canceled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v2, -0xa5db6b

    if-ne v0, v2, :cond_2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "should reinit "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v1

    invoke-virtual {v1}, Lextension/ShengQu/GHomeExtension;->InitGHome()V

    :cond_2
    :goto_0
    const-string v1, "login failed"

    .line 365
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3, v3}, Lextension/ShengQu/GHomeExtension;->logined(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native logined(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native logouted()V
.end method
