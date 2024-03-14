.class public final Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field private final mViewFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field private final mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;)V
    .locals 1

    const/16 v0, 0x402

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->d:I

    new-instance p0, Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final onProvidersChanged()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;->a:Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->a(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    :cond_0
    return-void
.end method
