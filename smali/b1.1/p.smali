.class public final synthetic Lb1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/p;->d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb1/p;->d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->d(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
