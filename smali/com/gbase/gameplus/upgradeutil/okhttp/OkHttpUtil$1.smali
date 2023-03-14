.class Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$1;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Lgbase_okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->sendSubmitAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$1;->this$0:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 119
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
    .locals 0

    return-void
.end method
