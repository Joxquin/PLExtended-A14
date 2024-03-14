.class final Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    return-void
.end method
