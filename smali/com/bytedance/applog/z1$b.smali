.class public final Lcom/bytedance/applog/z1$b;
.super Lcom/bytedance/applog/z1$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/z1$b$a;
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/z1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/applog/z1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
