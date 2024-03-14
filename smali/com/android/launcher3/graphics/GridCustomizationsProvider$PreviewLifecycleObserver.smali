.class final Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public destroyed:Z

.field public final renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    iput-object p2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->a(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x539

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "hide_bottom_row"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->hideBottomRow(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {p1, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->a(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    :goto_0
    return v1
.end method
