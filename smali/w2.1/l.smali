.class public final Lw2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic d:Lw2/p;


# direct methods
.method public constructor <init>(Lw2/p;)V
    .locals 0

    iput-object p1, p0, Lw2/l;->d:Lw2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object p0, p0, Lw2/l;->d:Lw2/p;

    iget-object v0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getRotation()F

    move-result v0

    iget v1, p0, Lw2/p;->f:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lw2/p;->f:F

    invoke-virtual {p0}, Lw2/p;->h()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
