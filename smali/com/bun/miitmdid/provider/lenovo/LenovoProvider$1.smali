.class public Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serviceConnected(Ljava/lang/Object;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->serviceConnected(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    return-void
.end method

.method public serviceConnected(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 3

    iget-object p1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->isSupported()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;->access$002(Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;Z)Z

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getOAID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getVAID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getAAID()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v1, p1}, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;->access$102(Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;->access$202(Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    if-nez p2, :cond_2

    move-object p2, v2

    :cond_2
    invoke-static {p1, p2}, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;->access$302(Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/lenovo/LenovoProvider$1;->this$0:Lcom/bun/miitmdid/provider/lenovo/LenovoProvider;

    invoke-virtual {p1}, Lcom/bun/miitmdid/provider/BaseProvider;->returnCallResult()V

    return-void
.end method
