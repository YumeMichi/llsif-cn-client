.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl;
.super Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoJellyBeanMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 0

    .line 127
    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatJellyBeanMr2;->getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p1

    return p1
.end method
