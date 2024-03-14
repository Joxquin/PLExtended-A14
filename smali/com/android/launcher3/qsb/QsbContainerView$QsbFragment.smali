.class public Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;
.super Lcom/android/launcher3/graphics/FragmentWithPreview;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field protected mKeyWidgetId:Ljava/lang/String;

.field private mOrientation:I

.field private mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

.field private mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

.field protected mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mWrapper:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;-><init>()V

    const-string v0, "qsb_widget_id"

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private createQsb(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->isInPreviewMode()Z

    move-result v8

    if-nez v8, :cond_5

    if-le v4, v6, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v8, v9, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v8, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-eq v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    move v5, v2

    move v4, v6

    :cond_5
    if-eqz v5, :cond_a

    iget-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    iget-object v2, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v1, v4, v2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/qsb/QsbWidgetHostView;

    iput-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    const v2, 0x7f0a0297

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHostView;->setId(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->isInPreviewMode()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    move v3, v7

    :cond_8
    if-nez v3, :cond_9

    iget-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    return-object p0

    :cond_a
    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, LT0/a;

    invoke-direct {v1, p0}, LT0/a;-><init>(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private rebindFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createQsb(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "appWidgetId"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->startListening()V

    iget-object p1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->createQsb(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mWrapper:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onInit()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment$$ExternalSyntheticLambda0;)V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsbWidgetHost:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mOrientation:I

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mQsb:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->isReinflateRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->rebindFragment()V

    :cond_0
    return-void
.end method
