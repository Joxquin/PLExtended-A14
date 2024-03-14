.class public final LL1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/P;


# static fields
.field public static final d:LL1/l;


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public final b:Landroid/view/ViewGroup;

.field public c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LL1/l;

    invoke-direct {v0}, LL1/l;-><init>()V

    sput-object v0, LL1/l;->d:LL1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, LL1/l;->a:Landroid/graphics/PointF;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LL1/l;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, LL1/l;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, LL1/l;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    new-instance v1, LL1/j;

    invoke-direct {v1, p0, p1}, LL1/j;-><init>(LL1/l;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, LL1/k;

    invoke-direct {v1, p0, p1}, LL1/k;-><init>(LL1/l;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
