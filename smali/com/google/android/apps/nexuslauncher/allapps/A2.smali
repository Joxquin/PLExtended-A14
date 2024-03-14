.class public interface abstract Lcom/google/android/apps/nexuslauncher/allapps/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/t;


# direct methods
.method public static b([Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/search/SearchTarget;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchTarget;

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget-object v2, p0, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u:Z

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    goto :goto_1

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    aget-object v2, p0, v1

    invoke-virtual {v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    :cond_2
    :goto_1
    aget-object v2, p0, v1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lz0/c;->b(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object p1

    new-instance v0, Landroid/app/search/SearchTargetEvent$Builder;

    invoke-direct {v0, v1, p2}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public static m(Lcom/google/android/apps/nexuslauncher/allapps/y0;ILandroid/view/View;Landroid/app/search/SearchTarget;)V
    .locals 11

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    invoke-static {p0, p3, p1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y()V

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/search/SearchAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/search/SearchAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "skip_logging_in_target_handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "suggest_raw_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x20000

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text_header_row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->i(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lz0/c;->b(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ItemInfo was null on SearchResultIcon id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "and logging was skipped."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchTargetHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "suggest_url"

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object v7

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p1

    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/g0;

    move-object v3, p3

    move-object v4, p0

    move-object v8, v1

    move-object v9, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/android/apps/nexuslauncher/allapps/g0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/String;Ljava/lang/String;Lf2/J0;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/search/SearchAction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v5

    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object v6

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p1

    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/f0;

    move-object v3, p3

    move-object v4, p0

    move-object v7, v1

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/f0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/String;Lf2/J0;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_6
    const/16 p1, 0x200

    if-ne v0, p1, :cond_7

    const-string p1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p3}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->I(Landroid/view/View;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_9

    const-string p0, "SearchSessionManager"

    const-string p1, "logOnDeviceResultClicked not sent since RenderedSuggestionsList is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf2/x0;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p3

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/i0;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/i0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Lf2/x0;ILf2/J0;)V

    invoke-virtual {p3, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V
    .locals 2

    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->L()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/j2;->a(Landroid/view/View;Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/I2;Z)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
