.class public final LW1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

.field public final b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final c:Z

.field public final d:[I

.field public final e:Landroid/os/Bundle;

.field public final f:LY1/l;

.field public final g:Ljava/lang/String;

.field public h:Lcom/android/launcher3/BubbleTextView;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;ZLjava/lang/String;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, LW1/l;->d:[I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, LW1/l;->e:Landroid/os/Bundle;

    invoke-static {}, LY1/m;->B()LY1/l;

    move-result-object v0

    iput-object v0, p0, LW1/l;->f:LY1/l;

    iput-object p1, p0, LW1/l;->a:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p1

    iput-object p1, p0, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-boolean p2, p0, LW1/l;->c:Z

    iput-object p3, p0, LW1/l;->g:Ljava/lang/String;

    invoke-virtual {v0, p4}, LY1/l;->y(Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V

    return-void
.end method

.method public static d(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    aget v3, v1, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    aget v1, v1, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method public static e(Landroid/view/View;)LY1/h;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {}, LY1/i;->k()LY1/h;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, LY1/h;->f(I)V

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, LY1/h;->g(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, LY1/h;->h(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, LY1/h;->e(I)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LW1/l;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    iget-object p0, p0, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    aget p0, v0, v2

    neg-int p0, p0

    int-to-float p0, p0

    aget v3, v0, v1

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, p0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    aget p0, v0, v2

    int-to-float p0, p0

    aget p2, v0, v1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object p0, p0, LW1/l;->f:LY1/l;

    invoke-virtual {p0}, LY1/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LY1/l;->c()LY1/i;

    move-result-object v0

    invoke-static {v0}, LY1/i;->l(LY1/i;)LY1/h;

    move-result-object v1

    invoke-virtual {v0}, LY1/i;->i()I

    move-result v2

    invoke-virtual {v0}, LY1/i;->g()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, LY1/h;->g(I)V

    invoke-virtual {p0, v1}, LY1/l;->w(LY1/h;)V

    return-void
.end method

.method public final c(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)LY1/k;
    .locals 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v1, "iconType"

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "deepshortcut"

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "deepshortcut_id"

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-static {}, LY1/k;->g()LY1/j;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LY1/j;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon_bitmap_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, LY1/j;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, LY1/j;->e(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.nexuslauncher.search.APP_LAUNCH"

    invoke-direct {p2, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, LY1/j;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, LY1/j;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->b(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, LW1/l;->e:Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, LY1/k;

    return-object p0
.end method

.method public final f()V
    .locals 9

    iget-object v0, p0, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v2, p0, LW1/l;->f:LY1/l;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, LY1/l;->o(I)V

    invoke-static {}, LY1/i;->k()LY1/h;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, LW1/l;->g(LY1/h;)I

    move-result v4

    invoke-virtual {v3, v4}, LY1/h;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070151

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, LY1/h;->f(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, LY1/h;->h(I)V

    :goto_0
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v3, v1}, LY1/h;->e(I)V

    invoke-virtual {v2, v3}, LY1/l;->k(LY1/h;)V

    invoke-virtual {p0}, LW1/l;->b()V

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v6

    const v7, 0x7f0d0038

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    iput-object v5, p0, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3}, LY1/h;->a()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3}, LY1/h;->d()I

    move-result v3

    invoke-virtual {v2}, LY1/l;->e()I

    move-result v6

    div-int/2addr v3, v6

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    array-length v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_1
    iget-object v3, p0, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, LW1/l;->h:Lcom/android/launcher3/BubbleTextView;

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v8, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, v1, v8}, LW1/l;->c(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)LY1/k;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v3}, LY1/l;->a(LY1/k;)V

    add-int/lit8 v8, v8, 0x1

    :cond_3
    invoke-virtual {v2}, LY1/l;->e()I

    move-result v1

    if-lt v8, v1, :cond_2

    :cond_4
    return-void
.end method

.method public final g(LY1/h;)I
    .locals 5

    iget-object p0, p0, LW1/l;->b:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    sub-int/2addr p0, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    sub-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, LY1/h;->h(I)V

    return v4
.end method
