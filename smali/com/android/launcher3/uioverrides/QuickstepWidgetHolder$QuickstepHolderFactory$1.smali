.class final Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;
.super Lcom/android/launcher3/widget/LauncherWidgetHolder;
.source "SourceFile"


# instance fields
.field final synthetic val$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;->val$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method public final createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory$1;->val$interactionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHost;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object p1
.end method
