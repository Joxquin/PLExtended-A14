.class public final synthetic Lb1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/r;->d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lb1/r;->d:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->e(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void
.end method
