.class final Lcom/ghome/gshare/record/GRecordEngine$1;
.super Ljava/lang/Object;
.source "GRecordEngine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/record/GRecordEngine;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 111
    check-cast p2, Lcom/ghome/gshare/record/RecordService$RecordBinder;

    .line 112
    invoke-virtual {p2}, Lcom/ghome/gshare/record/RecordService$RecordBinder;->getRecordService()Lcom/ghome/gshare/record/RecordService;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/record/GRecordEngine;->access$002(Lcom/ghome/gshare/record/RecordService;)Lcom/ghome/gshare/record/RecordService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
