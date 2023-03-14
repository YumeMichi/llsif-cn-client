.class Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;
.super Ljava/lang/Object;
.source "WeiboLogin.java"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/SdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->startLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;->this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;->this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->access$100(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5fae\u535a\u62c9\u8d77\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->WB_REGISTERED:Z

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;->this$0:Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)V

    return-void
.end method
