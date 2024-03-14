.class public final Lcom/android/wm/shell/common/bubbles/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final d:Lcom/android/wm/shell/common/bubbles/e;

.field public e:Z

.field public f:Lcom/android/wm/shell/common/bubbles/f;

.field public final g:Lcom/android/wm/shell/animation/l;

.field public final h:Lcom/android/wm/shell/animation/g;

.field public final i:J

.field public final j:Landroid/view/WindowManager;

.field public k:Landroid/graphics/drawable/GradientDrawable;

.field public final l:Lcom/android/wm/shell/common/bubbles/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/common/bubbles/h;

    invoke-static {v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/bubbles/h;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/common/bubbles/e;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/bubbles/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    sget-object v1, Lcom/android/wm/shell/animation/l;->m:Lm3/l;

    invoke-static {v0}, Lcom/android/wm/shell/animation/c;->a(Ljava/lang/Object;)Lcom/android/wm/shell/animation/l;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/h;->g:Lcom/android/wm/shell/animation/l;

    new-instance v1, Lcom/android/wm/shell/animation/g;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/h;->h:Lcom/android/wm/shell/animation/g;

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/android/wm/shell/common/bubbles/h;->i:J

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/h;->j:Landroid/view/WindowManager;

    new-instance p1, Lcom/android/wm/shell/common/bubbles/g;

    invoke-direct {p1}, Lcom/android/wm/shell/common/bubbles/g;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/h;->l:Lcom/android/wm/shell/common/bubbles/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/h;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->k:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/wm/shell/common/bubbles/h;->m:Ljava/lang/String;

    const-string v2, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/h;->e:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/h;->l:Lcom/android/wm/shell/common/bubbles/g;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    filled-new-array {v3, v1}, [I

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/wm/shell/common/bubbles/h;->i:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->g:Lcom/android/wm/shell/animation/l;

    sget-object v2, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    const-string v3, "TRANSLATION_Y"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/common/bubbles/h;->h:Lcom/android/wm/shell/animation/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "config"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    new-instance v2, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;-><init>(Lcom/android/wm/shell/common/bubbles/h;)V

    filled-new-array {v2}, [Lm3/a;

    move-result-object p0

    iget-object v2, v0, Lcom/android/wm/shell/animation/l;->h:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget-object p0, p0, v1

    if-eqz p0, :cond_3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    return-void
.end method
