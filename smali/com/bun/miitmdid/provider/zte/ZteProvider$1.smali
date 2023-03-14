.class public Lcom/bun/miitmdid/provider/zte/ZteProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/zte/ZteProvider;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/zte/ZteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceConnected(Lcom/bun/lib/MsaIdInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-static {p1}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$100(Lcom/bun/miitmdid/provider/zte/ZteProvider;)Lcom/bun/miitmdid/provider/zte/MsaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bun/miitmdid/provider/zte/MsaClient;->isSupported()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$002(Lcom/bun/miitmdid/provider/zte/ZteProvider;Z)Z

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-static {p1}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$100(Lcom/bun/miitmdid/provider/zte/ZteProvider;)Lcom/bun/miitmdid/provider/zte/MsaClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bun/miitmdid/provider/zte/MsaClient;->getOAID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-static {v0}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$100(Lcom/bun/miitmdid/provider/zte/ZteProvider;)Lcom/bun/miitmdid/provider/zte/MsaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bun/miitmdid/provider/zte/MsaClient;->getVAID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-static {v1}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$100(Lcom/bun/miitmdid/provider/zte/ZteProvider;)Lcom/bun/miitmdid/provider/zte/MsaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bun/miitmdid/provider/zte/MsaClient;->getAAID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    const-string v3, ""

    if-nez p1, :cond_0

    move-object p1, v3

    :cond_0
    invoke-static {v2, p1}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$202(Lcom/bun/miitmdid/provider/zte/ZteProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    if-nez v0, :cond_1

    move-object v0, v3

    :cond_1
    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$302(Lcom/bun/miitmdid/provider/zte/ZteProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    invoke-static {p1, v1}, Lcom/bun/miitmdid/provider/zte/ZteProvider;->access$402(Lcom/bun/miitmdid/provider/zte/ZteProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/ZteProvider$1;->this$0:Lcom/bun/miitmdid/provider/zte/ZteProvider;

    invoke-virtual {p1}, Lcom/bun/miitmdid/provider/BaseProvider;->returnCallResult()V

    return-void
.end method
