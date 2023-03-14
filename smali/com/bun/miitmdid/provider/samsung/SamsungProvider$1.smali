.class public Lcom/bun/miitmdid/provider/samsung/SamsungProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/samsung/SamsungProvider;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/samsung/SamsungProvider;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/samsung/SamsungProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/samsung/SamsungProvider$1;->this$0:Lcom/bun/miitmdid/provider/samsung/SamsungProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/bun/miitmdid/provider/samsung/SamsungProvider$1;->this$0:Lcom/bun/miitmdid/provider/samsung/SamsungProvider;

    invoke-static {p2}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bun/miitmdid/provider/samsung/SamsungProvider;->access$002(Lcom/bun/miitmdid/provider/samsung/SamsungProvider;Lcom/samsung/android/deviceidservice/IDeviceIdService;)Lcom/samsung/android/deviceidservice/IDeviceIdService;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/samsung/SamsungProvider$1;->this$0:Lcom/bun/miitmdid/provider/samsung/SamsungProvider;

    invoke-static {p1}, Lcom/bun/miitmdid/provider/samsung/SamsungProvider;->access$100(Lcom/bun/miitmdid/provider/samsung/SamsungProvider;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/bun/miitmdid/provider/samsung/SamsungProvider$1;->this$0:Lcom/bun/miitmdid/provider/samsung/SamsungProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/samsung/SamsungProvider;->access$002(Lcom/bun/miitmdid/provider/samsung/SamsungProvider;Lcom/samsung/android/deviceidservice/IDeviceIdService;)Lcom/samsung/android/deviceidservice/IDeviceIdService;

    return-void
.end method
