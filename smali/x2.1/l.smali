.class public final Lx2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lx2/k;

.field public c:Landroid/animation/ValueAnimator;

.field public final d:Lx2/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx2/l;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lx2/l;->b:Lx2/k;

    iput-object v0, p0, Lx2/l;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Lx2/j;

    invoke-direct {v0, p0}, Lx2/j;-><init>(Lx2/l;)V

    iput-object v0, p0, Lx2/l;->d:Lx2/j;

    return-void
.end method


# virtual methods
.method public final a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lx2/k;

    invoke-direct {v0, p1, p2}, Lx2/k;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lx2/l;->d:Lx2/j;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lx2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
