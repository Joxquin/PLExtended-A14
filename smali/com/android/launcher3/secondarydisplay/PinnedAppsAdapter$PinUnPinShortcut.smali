.class final Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# instance fields
.field private final mIsPinned:Z

.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)V
    .locals 6

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    if-eqz p5, :cond_0

    const p1, 0x7f0802a7

    goto :goto_0

    :cond_0
    const p1, 0x7f0802a2

    :goto_0
    move v1, p1

    if-eqz p5, :cond_1

    const p1, 0x7f1301a6

    goto :goto_1

    :cond_1
    const p1, 0x7f130030

    :goto_1
    move v2, p1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-boolean p5, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->mIsPinned:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->h(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LV0/c;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, LV0/c;-><init>(Ljava/util/Set;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->update(Lcom/android/launcher3/model/data/ItemInfo;LV0/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->h(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LV0/c;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, LV0/c;-><init>(Ljava/util/Set;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->update(Lcom/android/launcher3/model/data/ItemInfo;LV0/c;)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;->this$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->g(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method
