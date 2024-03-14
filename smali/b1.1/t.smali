.class public final synthetic Lb1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;


# virtual methods
.method public final notifyWidgetProvidersChanged()V
    .locals 1

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lb1/u;

    invoke-direct {v0}, Lb1/u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
