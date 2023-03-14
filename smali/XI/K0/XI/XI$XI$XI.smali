.class public LXI/K0/XI/XI$XI$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXI/K0/XI/XI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXI/K0/XI/XI$XI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XI"
.end annotation


# instance fields
.field public XI:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXI/K0/XI/XI$XI$XI;->XI:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, LXI/K0/XI/XI$XI$XI;->XI:Landroid/os/IBinder;

    return-object v0
.end method
