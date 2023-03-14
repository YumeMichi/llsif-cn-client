.class Lcom/ghomesdk/gameplus/pay/PayActivity$4;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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

    .line 260
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$4;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 262
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.APP_MARKET"

    .line 263
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$4;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/pay/PayActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
