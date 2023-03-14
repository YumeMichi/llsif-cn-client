.class Lcom/ghomesdk/gameplus/pay/PayActivity$2;
.super Ljava/util/TimerTask;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    new-instance v1, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/pay/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
