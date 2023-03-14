.class public Lcom/asus/msa/sdid/SupplementaryDIDManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/SupplementaryDIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/asus/msa/sdid/SupplementaryDIDManager;


# direct methods
.method public constructor <init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->this$0:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->access$000()Z

    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->this$0:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-static {p2}, Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->access$102(Lcom/asus/msa/sdid/SupplementaryDIDManager;Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->this$0:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->access$200(Lcom/asus/msa/sdid/SupplementaryDIDManager;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->this$0:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->access$200(Lcom/asus/msa/sdid/SupplementaryDIDManager;Z)V

    return-void
.end method
