.class Lcom/ghomesdk/gameplus/pay/PayActivity$1;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 151
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const-string v1, "PayActivity"

    if-nez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u6d41\u6d77\u5c4f"

    .line 157
    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const-string v4, "notchHeight: "

    if-ne v2, v3, :cond_2

    .line 161
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    invoke-static {v2, v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$002(Lcom/ghomesdk/gameplus/pay/PayActivity;I)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$000(Lcom/ghomesdk/gameplus/pay/PayActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-static {v2, v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$002(Lcom/ghomesdk/gameplus/pay/PayActivity;I)I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$000(Lcom/ghomesdk/gameplus/pay/PayActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
