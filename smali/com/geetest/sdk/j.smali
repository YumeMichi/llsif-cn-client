.class public final Lcom/geetest/sdk/j;
.super Ljava/lang/Object;
.source "GTFPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/j$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/geetest/sdk/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/geetest/sdk/j$b;->a()Lcom/geetest/sdk/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/geetest/sdk/k;->a()Lcom/geetest/sdk/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
