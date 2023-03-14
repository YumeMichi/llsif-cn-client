.class Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;
.super Ljava/lang/Object;
.source "WeGameLogin.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyDownLoad"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;->this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p2, ".apk"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 138
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;->this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
