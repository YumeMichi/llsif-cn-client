.class public Lcom/ghomesdk/gameplus/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static final synObj:Ljava/lang/Object;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->synObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    .line 9
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 9
    sput-object p0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static showAlertMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 48
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 26
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/ghomesdk/gameplus/utils/ToastUtil$1;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
