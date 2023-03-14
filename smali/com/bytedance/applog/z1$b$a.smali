.class public Lcom/bytedance/applog/z1$b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/z1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/bytedance/applog/z1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/applog/z1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/applog/z1$b;-><init>(Lcom/bytedance/applog/z1$a;)V

    sput-object v0, Lcom/bytedance/applog/z1$b$a;->a:Lcom/bytedance/applog/z1$b;

    return-void
.end method
