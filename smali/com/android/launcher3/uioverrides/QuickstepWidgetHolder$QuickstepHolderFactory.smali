.class public Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory;
.super Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Lcom/android/launcher3/K;)Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 1

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_HOST_IN_BACKGROUND:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V

    :goto_0
    return-object p0
.end method
