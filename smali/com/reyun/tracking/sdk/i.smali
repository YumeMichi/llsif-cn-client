.class final Lcom/reyun/tracking/sdk/i;
.super Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->access$1500(I)V

    return-void
.end method
