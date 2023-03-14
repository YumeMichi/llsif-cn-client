.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;
.super Ljava/lang/Object;
.source "CheckPayOrderStatusThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckPayOrderStatusThread"


# instance fields
.field private dialog:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

.field private dialogIsOpen:Z

.field private mActivity:Landroid/app/Activity;

.field private volatile mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

.field private mOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mOrderId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    .line 16
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialog:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    .line 17
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialogIsOpen:Z

    .line 21
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    .line 22
    iput-object p3, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    .line 23
    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mOrderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialogIsOpen:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialogIsOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialog:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->dialog:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Landroid/app/Activity;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    return-object p1
.end method

.method private final getPayResultUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/gchannel/pay/orderstatus?orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openCheckPayOrderStatusDialog()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;-><init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method doCallback(ILjava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;-><init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    invoke-interface {v0, p1, p2}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;->callback(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    const/16 v0, 0x7d0

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mCallback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->mOrderId:Ljava/lang/String;

    new-instance v3, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;

    invoke-direct {v3, p0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;-><init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V

    invoke-static {p0, v1, v2, v3}, Lcom/ghomesdk/gameplus/impl/ServerApi;->checkPayResult(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    int-to-long v1, v0

    .line 58
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1388

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
