.class Lcom/reyun/tracking/utils/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/reyun/tracking/utils/s;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/reyun/tracking/utils/s;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/u;->a:Lcom/reyun/tracking/utils/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/reyun/tracking/utils/u;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/utils/s;Lcom/reyun/tracking/utils/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/u;-><init>(Lcom/reyun/tracking/utils/s;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reyun/tracking/utils/u;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->b:Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->a:Lcom/reyun/tracking/utils/s;

    invoke-static {p1}, Lcom/reyun/tracking/utils/s;->a(Lcom/reyun/tracking/utils/s;)Lcom/reyun/tracking/utils/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/reyun/tracking/utils/v;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->b:Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->a:Lcom/reyun/tracking/utils/s;

    invoke-static {p1}, Lcom/reyun/tracking/utils/s;->a(Lcom/reyun/tracking/utils/s;)Lcom/reyun/tracking/utils/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/reyun/tracking/utils/v;->c()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->b:Ljava/lang/String;

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/reyun/tracking/utils/u;->a:Lcom/reyun/tracking/utils/s;

    invoke-static {p1}, Lcom/reyun/tracking/utils/s;->a(Lcom/reyun/tracking/utils/s;)Lcom/reyun/tracking/utils/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/reyun/tracking/utils/v;->a()V

    :cond_2
    :goto_0
    return-void
.end method
