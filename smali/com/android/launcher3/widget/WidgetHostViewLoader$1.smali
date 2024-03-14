.class final Lcom/android/launcher3/widget/WidgetHostViewLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    const/16 v4, -0x64

    if-gt v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
