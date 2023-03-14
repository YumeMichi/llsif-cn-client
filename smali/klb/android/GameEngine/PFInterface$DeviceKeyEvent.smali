.class public Lklb/android/GameEngine/PFInterface$DeviceKeyEvent;
.super Ljava/lang/Object;
.source "PFInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/PFInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceKeyEvent"
.end annotation


# static fields
.field public static final CLICK:C = '\u0003'

.field public static final PRESS:C = '\u0001'

.field public static final RELEASE:C = '\u0002'


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/PFInterface;


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/PFInterface;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$DeviceKeyEvent;->this$0:Lklb/android/GameEngine/PFInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
