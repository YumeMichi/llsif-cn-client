.class final Lcom/reyun/tracking/sdk/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/l;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {v0, p1}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
