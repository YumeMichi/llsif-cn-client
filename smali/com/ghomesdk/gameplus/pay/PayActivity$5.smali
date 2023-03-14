.class Lcom/ghomesdk/gameplus/pay/PayActivity$5;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 292
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$5;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 295
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 296
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$5;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "android: keycode_back"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/pay/PayActivity;->finishPay(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
