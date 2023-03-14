.class Lcom/geetest/sdk/s$a;
.super Ljava/lang/Object;
.source "AjaxHandler.java"

# interfaces
.implements Lcom/geetest/sdk/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/s;->a(Lcom/geetest/sdk/bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geetest/sdk/ay<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/s;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/s$a;->a:Lcom/geetest/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/geetest/sdk/s$a;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/s$a;->a:Lcom/geetest/sdk/s;

    invoke-static {v0, p1, p2, p3}, Lcom/geetest/sdk/s;->a(Lcom/geetest/sdk/s;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
