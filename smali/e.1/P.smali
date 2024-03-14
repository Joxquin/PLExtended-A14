.class public final Le/P;
.super Landroidx/core/view/Q;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/T;


# direct methods
.method public synthetic constructor <init>(Le/T;I)V
    .locals 0

    iput p2, p0, Le/P;->a:I

    iput-object p1, p0, Le/P;->b:Le/T;

    invoke-direct {p0}, Landroidx/core/view/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Le/P;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Le/P;->b:Le/T;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Le/T;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/T;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    iput-object v1, p0, Le/T;->t:Li/l;

    iget-object v0, p0, Le/T;->k:Li/a;

    if-eqz v0, :cond_1

    iget-object v2, p0, Le/T;->j:Le/S;

    invoke-interface {v0, v2}, Li/a;->c(Li/b;)V

    iput-object v1, p0, Le/T;->j:Le/S;

    iput-object v1, p0, Le/T;->k:Li/a;

    :cond_1
    iget-object p0, p0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_2

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    :cond_2
    return-void

    :goto_0
    iput-object v1, p0, Le/T;->t:Li/l;

    iget-object p0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
