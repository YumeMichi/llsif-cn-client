.class Lcom/ghome/sdk/common/GHomeApiBase$21;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->scanQRCodeUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$extend:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Lcom/ghome/sdk/common/IGHomeApi$Callback;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$extend:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 668
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    sput-object p1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    .line 669
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    sput-object p1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    .line 670
    iget-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$extend:Ljava/lang/String;

    sput-object p2, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeExtend:Ljava/lang/String;

    const-string p2, "android.permission.CAMERA"

    .line 671
    invoke-static {p1, p2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    const-string v2, "gh_CAMERA"

    invoke-virtual {p1, v1, v2}, Lcom/ghome/sdk/common/GHomeApiBase;->isInHideDays(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TimeUtil"

    const-string v1, "setcamera requestTIme "

    .line 673
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v2, v3, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 675
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v0

    const/16 p2, 0x9d

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 677
    :cond_0
    sget-object p1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    const-string p2, "\u8bf7\u5728\u8bbe\u7f6e-\u5e94\u7528\u4e2d\u5f00\u542f\u76f8\u673a\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u626b\u4e00\u626b\u7b49\u529f\u80fd"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 680
    :cond_1
    sget-object p1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 683
    :cond_2
    iget-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$21;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v1, -0xa5db67

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1, v1, p2, v2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
