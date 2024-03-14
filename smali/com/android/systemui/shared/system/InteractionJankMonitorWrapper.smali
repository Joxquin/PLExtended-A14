.class public final Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUJ_ALL_APPS_SCROLL:I = 0x1a

.field public static final CUJ_APP_CLOSE_TO_HOME:I = 0x9

.field public static final CUJ_APP_CLOSE_TO_HOME_FALLBACK:I = 0x4e

.field public static final CUJ_APP_CLOSE_TO_PIP:I = 0xa

.field public static final CUJ_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final CUJ_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final CUJ_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final CUJ_APP_SWIPE_TO_RECENTS:I = 0x42

.field public static final CUJ_CLOSE_ALL_APPS_SWIPE:I = 0x43

.field public static final CUJ_CLOSE_ALL_APPS_TO_HOME:I = 0x44

.field public static final CUJ_LAUNCHER_UNLOCK_ENTRANCE_ANIMATION:I = 0x3f

.field public static final CUJ_OPEN_ALL_APPS:I = 0x19

.field public static final CUJ_OPEN_SEARCH_RESULT:I = 0x47

.field public static final CUJ_QUICK_SWITCH:I = 0xb

.field public static final CUJ_RECENTS_SCROLLING:I = 0x41

.field public static final CUJ_SHADE_EXPAND_FROM_STATUS_BAR:I = 0x4f

.field public static final CUJ_SPLIT_SCREEN_ENTER:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public static begin(Landroid/view/View;IJ)V
    .locals 0

    .line 2
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public static begin(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public static cancel(I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public static end(I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
