.class public final LI2/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lr2/g;

.field public final synthetic e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lr2/g;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, LI2/e;->d:Lr2/g;

    iput-object p2, p0, LI2/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LI2/e;->d:Lr2/g;

    invoke-interface {p0}, Lr2/g;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LI2/e;->d:Lr2/g;

    invoke-interface {p0}, Lr2/g;->b()V

    return-void
.end method
