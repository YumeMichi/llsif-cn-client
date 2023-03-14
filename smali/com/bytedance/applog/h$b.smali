.class public Lcom/bytedance/applog/h$b;
.super Lcom/bytedance/applog/h$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/applog/h$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/bytedance/applog/h;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/h$b;->b:Lcom/bytedance/applog/h;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/applog/h$a;-><init>(Lcom/bytedance/applog/h;Ljava/lang/Object;)V

    return-void
.end method
