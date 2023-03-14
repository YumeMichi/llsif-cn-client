.class Lcom/ghomesdk/gameplus/pay/PayActivity$3;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/gsk/WxPayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity;->initUI()V
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

    .line 226
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$3;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayClick()V
    .locals 1

    .line 229
    invoke-static {}, Lcom/ghome/sdk/GHomeWXPayHandler;->getInstance()Lcom/ghome/sdk/GHomeWXPayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghome/sdk/GHomeWXPayHandler;->handle()V

    return-void
.end method
