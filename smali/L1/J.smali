.class public final LL1/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:LL1/o;

.field public final c:Landroid/os/Handler;

.field public final d:I

.field public final e:I

.field public final f:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;LL1/o;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LL1/J;->f:Landroid/util/SparseArray;

    iput-object p1, p0, LL1/J;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, LL1/J;->b:LL1/o;

    iput-object p3, p0, LL1/J;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, LL1/J;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LL1/J;->e:I

    return-void
.end method
