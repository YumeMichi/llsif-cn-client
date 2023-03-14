.class public LXI/CA/XI/kM;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public K0:I

.field public XI:Ljava/lang/String;

.field public kM:LXI/CA/XI/K0;


# direct methods
.method public constructor <init>(LXI/CA/XI/K0;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, LXI/CA/XI/kM;->kM:LXI/CA/XI/K0;

    iput p2, p0, LXI/CA/XI/kM;->K0:I

    iput-object p3, p0, LXI/CA/XI/kM;->XI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, LXI/CA/XI/kM;->kM:LXI/CA/XI/K0;

    if-eqz p1, :cond_0

    iget v0, p0, LXI/CA/XI/kM;->K0:I

    iget-object v1, p0, LXI/CA/XI/kM;->XI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LXI/CA/XI/K0;->K0(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
