.class Lcom/geetest/sdk/j$b;
.super Ljava/lang/Object;
.source "GTFPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/geetest/sdk/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/geetest/sdk/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/j;-><init>(Lcom/geetest/sdk/j$a;)V

    sput-object v0, Lcom/geetest/sdk/j$b;->a:Lcom/geetest/sdk/j;

    return-void
.end method

.method static synthetic a()Lcom/geetest/sdk/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/j$b;->a:Lcom/geetest/sdk/j;

    return-object v0
.end method
