.class public interface abstract Lcom/asus/msa/sdid/IDIDBinderStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/sdid/IDIDBinderStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError()V
.end method

.method public abstract onSuccess(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V
.end method
