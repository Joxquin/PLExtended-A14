.class public Lcom/google/android/apps/nexuslauncher/allapps/y1;
.super Lcom/android/quickstep/views/LaunchableConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/LaunchableConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/LaunchableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/LaunchableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 9

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y1;->s()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "childView"

    if-ge v4, v1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "childTargets[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/app/search/SearchTarget;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/apps/nexuslauncher/allapps/y1;->r(Lcom/google/android/apps/nexuslauncher/allapps/h1;Landroid/app/search/SearchTarget;Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/y1;->t(Landroid/view/View;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-interface {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    return-void
.end method

.method public r(Lcom/google/android/apps/nexuslauncher/allapps/h1;Landroid/app/search/SearchTarget;Landroid/view/View;)V
    .locals 0

    instance-of p0, p3, Lcom/google/android/apps/nexuslauncher/allapps/A2;

    if-eqz p0, :cond_0

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/A2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    :cond_1
    return-void
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    return p0
.end method

.method public t(Landroid/view/View;)V
    .locals 0

    return-void
.end method
