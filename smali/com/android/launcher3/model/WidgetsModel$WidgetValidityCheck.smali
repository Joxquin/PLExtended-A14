.class final Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final mAppFilter:Lcom/android/launcher3/AppFilter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/AppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->mAppFilter:Lcom/android/launcher3/AppFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isMinSizeFulfilled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
