.class public interface abstract Lcom/bytedance/applog/ISessionObserver;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onSessionStart(JLjava/lang/String;)V
.end method

.method public abstract onSessionTerminate(JLjava/lang/String;Lorg/json/JSONObject;)V
.end method
