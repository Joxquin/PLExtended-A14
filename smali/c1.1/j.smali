.class public final synthetic Lc1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/j;->a:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    return-void
.end method


# virtual methods
.method public final onScreenOnChanged(Z)V
    .locals 0

    iget-object p0, p0, Lc1/j;->a:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->a(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;Z)V

    return-void
.end method
