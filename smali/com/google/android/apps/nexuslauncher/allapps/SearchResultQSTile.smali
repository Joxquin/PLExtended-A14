.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Landroidx/lifecycle/z;


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field mChevronIcon:Landroid/widget/ImageView;

.field mLabel:Landroid/widget/TextView;

.field mLastState:I

.field mSecondaryLabel:Landroid/widget/TextView;

.field mTileSession:Lcom/android/launcher3/util/SafeCloseable;

.field mTileSpec:Ljava/lang/String;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final r:Landroid/app/StatusBarManager;

.field public final s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public final t:Landroid/animation/ValueAnimator;

.field public final u:Landroid/animation/ValueAnimator;

.field public v:Landroid/app/search/SearchTarget;

.field public final w:Landroid/content/res/Resources;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/widget/ImageView;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->e:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->f:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->g:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060310

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->h:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060311

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->i:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060312

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->j:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060313

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060314

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->l:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060315

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->m:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030d

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->n:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030e

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->o:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06030f

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->p:I

    .line 16
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    .line 17
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->A:I

    const/4 p3, -0x1

    .line 19
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLastState:I

    .line 20
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->B:I

    .line 21
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->C:I

    .line 22
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->E:I

    .line 23
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 24
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->r:Landroid/app/StatusBarManager;

    .line 25
    iget-object p3, p3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    .line 26
    check-cast p3, Lcom/android/launcher3/views/ActivityContext;

    .line 27
    invoke-interface {p3}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "com.android.systemui"

    .line 29
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->w:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SearchResultQSTile"

    const-string v0, "Failed to call getResourcesForApplication"

    .line 30
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/W1;

    invoke-direct {p3, p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/W1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static varargs k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .locals 0

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p0
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->A:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->r()V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->v:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tileSpec"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSpec:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->v:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "qst_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->v:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->A:I

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/U1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/U1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSpec:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->F:Z

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;ZLjava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->addListener(Landroidx/lifecycle/z;)V

    iget-object p1, v1, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLastValue:LJ2/c;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->i(Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/d0;

    invoke-direct {p1, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/d0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Landroidx/lifecycle/z;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSession:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->z:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, LJ2/c;

    iget-boolean v0, p1, LJ2/c;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/S1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/S1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    iget-object p1, p1, LJ2/c;->i:Ljava/lang/CharSequence;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Remove unsupported tile: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchResultQSTile"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->O:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto/16 :goto_4

    :cond_0
    iget v0, p1, LJ2/c;->j:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    iget-object v2, p1, LJ2/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v2, p1, LJ2/c;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p1, LJ2/c;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLastState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->B:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->l(I)I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-string v6, "background"

    invoke-static {v6, v5}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->p(I)I

    move-result v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-string v7, "label"

    invoke-static {v7, v6}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q(I)I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-string v8, "secondaryLabel"

    invoke-static {v8, v7}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q(I)I

    move-result v8

    filled-new-array {v1, v8}, [I

    move-result-object v1

    const-string v8, "chevron"

    invoke-static {v8, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    filled-new-array {v5, v6, v7, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->l(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->p(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q(I)I

    move-result v5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->q(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->B:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/T1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;LJ2/c;)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLastState:I

    if-eq v4, v3, :cond_4

    if-eq v4, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->C:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->o(I)I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-string v5, "icon"

    invoke-static {v5, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    filled-new-array {v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/W1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/W1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/Z1;

    invoke-direct {v4, v1}, Lcom/google/android/apps/nexuslauncher/allapps/Z1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T1;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->o(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->y:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iput v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->C:I

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/T1;->run()V

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p1, LJ2/c;->l:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/U1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/U1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-boolean v1, p1, LJ2/c;->m:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/V1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/V1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    iget-object v1, p1, LJ2/c;->g:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p1, LJ2/c;->h:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLastState:I

    :goto_4
    return-void
.end method

.method public final l(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid state %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultQSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->e:I

    return p0

    :cond_1
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->f:I

    return p0

    :cond_2
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->g:I

    return p0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->D:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    return v0
.end method

.method public final o(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid state %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultQSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->n:I

    return p0

    :cond_1
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->o:I

    return p0

    :cond_2
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->p:I

    return p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0395

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0397

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mSecondaryLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0394

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->y:Landroid/widget/ImageView;

    const v0, 0x7f0a0396

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->x:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final p(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid state %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultQSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->h:I

    return p0

    :cond_1
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->i:I

    return p0

    :cond_2
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->j:I

    return p0
.end method

.method public final q(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid state %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultQSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->k:I

    return p0

    :cond_1
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->l:I

    return p0

    :cond_2
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->m:I

    return p0
.end method

.method public final r()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLastState:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->B:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mChevronIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->D:Z

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSession:Lcom/android/launcher3/util/SafeCloseable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    :cond_0
    return-void
.end method
