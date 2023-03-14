.class public Lcom/ghomesdk/gameplus/pay/PayImpl;
.super Ljava/lang/Object;
.source "PayImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PayImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/PayImpl;->checkOrderStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V

    return-void
.end method

.method private static checkOrderStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V
    .locals 1

    .line 100
    sput-boolean p2, Lcom/ghomesdk/gameplus/config/Assembly;->isPortrait:Z

    .line 101
    new-instance p2, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    new-instance v0, Lcom/ghomesdk/gameplus/pay/PayImpl$2;

    invoke-direct {v0, p3}, Lcom/ghomesdk/gameplus/pay/PayImpl$2;-><init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V

    invoke-direct {p2, p0, p1, v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V

    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goPayActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;Lcom/ghomesdk/gameplus/pay/OrderModel;)V
    .locals 12

    move-object v10, p0

    .line 26
    new-instance v11, Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    move-object v0, v11

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p7

    move-object v8, p0

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/ghomesdk/gameplus/pay/PayImpl$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/OrderModel;)V

    sput-object v11, Lcom/ghomesdk/gameplus/pay/PayActivity;->event:Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderData"

    move-object/from16 v2, p8

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
