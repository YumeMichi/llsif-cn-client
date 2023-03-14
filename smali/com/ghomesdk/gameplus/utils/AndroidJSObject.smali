.class public Lcom/ghomesdk/gameplus/utils/AndroidJSObject;
.super Ljava/lang/Object;
.source "AndroidJSObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;
    }
.end annotation


# instance fields
.field private jsCallback:Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/AndroidJSObject;->jsCallback:Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;

    return-void
.end method


# virtual methods
.method public quickValidateResult(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/AndroidJSObject;->jsCallback:Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;

    invoke-interface {v0, p1}, Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;->callback(Ljava/lang/String;)V

    return-void
.end method
