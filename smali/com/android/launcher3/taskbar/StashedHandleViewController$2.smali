.class final Lcom/android/launcher3/taskbar/StashedHandleViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->e(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->e(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->a(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "stashed_handle_region_is_dark"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
