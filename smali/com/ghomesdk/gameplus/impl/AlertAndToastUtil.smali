.class public Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;
.super Ljava/lang/Object;
.source "AlertAndToastUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertAndToastUtil"

.field private static dialog:Landroid/app/AlertDialog;

.field private static handler:Landroid/os/Handler;

.field private static synObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->dialog:Landroid/app/AlertDialog;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->synObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .line 11
    sget-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 11
    sput-object p0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 11
    sget-object v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertAndToastUtil"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/ghomesdk/gameplus/impl/AlertAndToastUtil$1;-><init>(ILjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
