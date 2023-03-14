.class final Lcom/ghomesdk/gameplus/pay/PayImpl$2;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayImpl;->checkOrderStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$2;->val$callback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$2;->val$callback:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    invoke-interface {v0, p1, p2}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;->callback(ILjava/lang/String;)V

    return-void
.end method
