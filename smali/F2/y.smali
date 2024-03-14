.class public final LF2/y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:I

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:LF2/A;


# direct methods
.method public constructor <init>(LF2/A;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, LF2/y;->h:LF2/A;

    iput p2, p0, LF2/y;->d:I

    iput-object p3, p0, LF2/y;->e:Landroid/widget/TextView;

    iput p4, p0, LF2/y;->f:I

    iput-object p5, p0, LF2/y;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, LF2/y;->h:LF2/A;

    iget v0, p0, LF2/y;->d:I

    iput v0, p1, LF2/A;->h:I

    const/4 v0, 0x0

    iput-object v0, p1, LF2/A;->f:Landroid/animation/Animator;

    iget-object p1, p0, LF2/y;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, LF2/y;->f:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, LF2/y;->h:LF2/A;

    iget-object p1, p1, LF2/A;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, LF2/y;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, LF2/y;->g:Landroid/widget/TextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LF2/y;->g:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
